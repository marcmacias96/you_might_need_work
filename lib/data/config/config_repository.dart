import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/config/config.dart';
import 'package:you_might_need_work/data/config/models/models.dart';
import 'package:you_might_need_work/data/core/api_client/api_client.dart';
import 'package:you_might_need_work/data/core/models/models.dart';

@LazySingleton(as: IConfigRepository)
class ConfigRepository implements IConfigRepository {
  ConfigRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<Either<CoreFailure, List<Industry>>> getIndustries() async {
    try {
      final response = await _apiClient.getIndustries();
      return right(response.data.results);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, List<Bank>>> getBanks() async {
    try {
      final response = await _apiClient.getBanks();
      return right(response.data.results);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
