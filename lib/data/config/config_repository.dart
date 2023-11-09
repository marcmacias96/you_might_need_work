import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/config/i_config_repository.dart';
import 'package:you_might_need_work/data/config/models/bank/bank.dart';
import 'package:you_might_need_work/data/config/models/industry/industry.dart';
import 'package:you_might_need_work/data/core/core.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';

@LazySingleton(as: IConfigRepository)
class ConfigRepository implements IConfigRepository {
  ConfigRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Either<CoreFailure, List<Industry>>> getIndustries() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(Endpoints.getBanks);
      final industries = (((response.data!)['data']
              as Map<String, dynamic>)['results'] as List<dynamic>)
          .map((e) => Industry.fromJson(e as Map<String, dynamic>))
          .toList();
      return right(industries);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, List<Bank>>> getBanks() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(Endpoints.getBanks);
      final banks = (((response.data!)['data']
              as Map<String, dynamic>)['results'] as List<dynamic>)
          .map((e) => Bank.fromJson(e as Map<String, dynamic>))
          .toList();
      return right(banks);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
