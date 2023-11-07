import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/bank_account/i_bank_account_repository.dart';
import 'package:you_might_need_work/data/bank_account/models/bank_account.dart';
import 'package:you_might_need_work/data/core/helpers/endpoints.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';

@LazySingleton(as: IBankAccountRepository)
class BankAccountRepository implements IBankAccountRepository {
  BankAccountRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Either<CoreFailure, Unit>> createBankAccount(
    BankAccount bankAccount,
    int profileId,
  ) async {
    try {
      final response = await _dio.post<dynamic>(
        Endpoints.createBankAccount,
        data: BankAccount(
          user: profileId,
          bank: bankAccount.bank,
          accountNumber: bankAccount.accountNumber,
          accountType: bankAccount.accountType,
          bankDefault: bankAccount.bankDefault,
        ).toJson(),
      );
      if (response.data == null) {
        return left(const CoreFailure.unexpected());
      }
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
    int bankAccountId,
  ) async {
    try {
      final response = await _dio.post<dynamic>(
        Endpoints.updateBankAccount,
        data: {
          'bank_account': bankAccountId,
          'bank': bankAccount.bank,
          'account_number': bankAccount.accountNumber,
          'account_type': bankAccount.accountType,
          'default': bankAccount.bankDefault,
        },
      );
      if (response.data == null) {
        return left(const CoreFailure.unexpected());
      }
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
