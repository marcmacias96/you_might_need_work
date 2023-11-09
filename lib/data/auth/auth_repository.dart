import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/auth/auth.dart';
import 'package:you_might_need_work/data/auth/models/models.dart';
import 'package:you_might_need_work/data/core/api_client/api_client.dart';
import 'package:you_might_need_work/data/core/api_client/enums/code_transaction.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/local/local.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';
import 'package:you_might_need_work/data/profile/profile.dart';
import 'package:you_might_need_work/features/auth_form/models/models.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository({
    required ApiClient apiClient,
    required ILocalRepository localRepository,
    required IProfileRepository profileRepository,
  })  : _apiClient = apiClient,
        _localRepository = localRepository,
        _profileRepository = profileRepository;

  final ApiClient _apiClient;
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
    required Credentials credentials,
  }) async {
    try {
      final response = await _apiClient.signUp(
        credential: credentials.toJson(),
      );
      await _localRepository.cacheAuthData(response.data);
      return right(response.data);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, AuthToken>> signInWithEmailPassword({
    required Credentials credentials,
  }) async {
    try {
      final response = await _apiClient.signIn(
        credential: credentials.toJson(),
      );
      await _localRepository.cacheAuthData(response.data);
      return right(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        final response =
            FailureResponse.fromJson(e.response!.data as Map<String, dynamic>);
        if (response.codeTransaction == CodeTransaction.errorAuth.value) {
          return left(const CoreFailure.invalidEmailAndPasswordCombination());
        }
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
      final response = await _apiClient.refreshToken(
        refresh: {
          'refresh': refreshToken,
        },
      );
      await _localRepository.cacheAuthData(response.data);
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
