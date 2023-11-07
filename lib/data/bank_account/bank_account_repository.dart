import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/bank_account/i_bank_account_repository.dart';
import 'package:you_might_need_work/data/bank_account/models/bank_account.dart';
import 'package:you_might_need_work/data/core/helpers/endpoints.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';
import 'package:you_might_need_work/data/local/local.dart';

@LazySingleton(as: IBankAccountRepository)
class BankAccountRepository implements IBankAccountRepository {
  BankAccountRepository({
    required Dio dio,
    required ILocalRepository localRepository,
  })  : _dio = dio,
        _localRepository = localRepository;

  final Dio _dio;
  final ILocalRepository _localRepository;
  @override
  Future<Either<CoreFailure, Unit>> createBankAccount(
    BankAccount bankAccount,
  ) async {
    try {
      final userId = _localRepository.getUserId();
      await _dio.post<dynamic>(
        Endpoints.createBankAccount,
        data: bankAccount.copyWith(user: userId!).toJson(),
      );
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, List<BankAccount>>> getBanksAccounts() async {
    try {
      final response = await _dio.get<dynamic>(
        Endpoints.getBanksAccounts,
      );
      if (response.data == null) {
        return left(const CoreFailure.unexpected());
      }
      final bankAccounts = (((response.data as Map<String, dynamic>)['data']
              as Map<String, dynamic>)['results'] as List<dynamic>)
          .toList() as List<BankAccount>;
      return right(bankAccounts);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, Unit>> updateBankAccount(
    BankAccount bankAccount,
  ) async {
    try {
      await _dio.post<dynamic>(
        Endpoints.updateBankAccount,
        data: bankAccount.toJson(),
      );
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
