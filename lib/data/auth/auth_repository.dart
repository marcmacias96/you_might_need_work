import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/auth/auth.dart';
import 'package:you_might_need_work/data/auth/models/models.dart';
import 'package:you_might_need_work/data/core/core.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/local/local.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';
import 'package:you_might_need_work/data/profile/profile.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository({
    required Dio dio,
    required ILocalRepository localRepository,
    required IProfileRepository profileRepository,
  })  : _dio = dio,
        _localRepository = localRepository,
        _profileRepository = profileRepository;

  final Dio _dio;
  final ILocalRepository _localRepository;
  final IProfileRepository _profileRepository;

  @override
  Future<Either<CoreFailure, Profile>> authCheck() async {
    try {
      final failureOrProfile = await _profileRepository.getProfile();
      return failureOrProfile.fold(
        (failure) => left(const CoreFailure.unauthenticated()),
        right,
      );
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, Unit>> signOut() async {
    try {
      await _localRepository.removeAuthCache();
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, AuthToken>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final response = await _dio.get<dynamic>(Endpoints.signUp);
      final data = (response.data as Map<String, dynamic>)['data'];
      final authToken = AuthToken.fromJson(data as Map<String, dynamic>);
      await _localRepository.cacheAuthData(authToken);
      return right(authToken);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, AuthToken>> signInWithEmailPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final response = await _dio.post<dynamic>(
        Endpoints.signIn,
        data: {
          'username': emailAddress,
          'password': password,
        },
      );
      final data = (response.data as Map<String, dynamic>)['data'];
      final authToken = AuthToken.fromJson(data as Map<String, dynamic>);
      await _localRepository.cacheAuthData(authToken);

      return right(authToken);
    } on DioException catch (e) {
      if ((e.response?.data as Map<String, dynamic>?)?['code_transaction'] ==
          'ERROR_AUTH') {
        return left(const CoreFailure.invalidEmailAndPasswordCombination());
      }
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, Unit>> refreshToken(
    String refreshToken,
  ) async {
    try {
      final response = await _dio.post<AuthToken>(
        Endpoints.refresh,
        data: {
          'refresh': refreshToken,
        },
      );
      if (response.data == null) {
        return left(const CoreFailure.unexpected());
      }
      await _localRepository.cacheAuthData(response.data!);
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
