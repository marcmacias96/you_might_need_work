import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/core/helpers/helpers.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';
import 'package:you_might_need_work/data/profile/i_profile_repository.dart';
import 'package:you_might_need_work/data/profile/models/profile/profile.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  ProfileRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Either<CoreFailure, Unit>> createProfile() {
    // TODO: implement createProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<CoreFailure, Profile>> getProfile() async {
    try {
      final response = await _dio.get<dynamic>(Endpoints.getUser);
      final profile = Profile.fromJson(response.data as Map<String, dynamic>);
      return right(profile);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
