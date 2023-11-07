import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/core/helpers/helpers.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';
import 'package:you_might_need_work/data/profile/profile.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  ProfileRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Either<CoreFailure, Unit>> createProfile(Profile profile) {
    // TODO: implement createProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<CoreFailure, Profile>> getProfile() async {
    try {
      final response = await _dio.get<dynamic>(Endpoints.getUser);
      final profileJson = (((response.data as Map<String, dynamic>)['data']
              as Map<String, dynamic>)['results'] as List<dynamic>)
          .first;
      final profile = Profile.fromJson(profileJson as Map<String, dynamic>);
      return right(profile);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, Unit>> updateProfile(Profile profile) async {
    try {
      await _dio.post<dynamic>(
        Endpoints.updateUser,
        data: profile.toJson(),
      );
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
