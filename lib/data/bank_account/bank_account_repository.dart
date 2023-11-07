import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/bank_account/i_bank_account_repository.dart';
import 'package:you_might_need_work/data/bank_account/models/bank_account.dart';
import 'package:you_might_need_work/data/core/helpers/endpoints.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';
import 'package:you_might_need_work/data/profile/models/profile/profile.dart';

@LazySingleton(as: IBankAccountRepository)
class BankAccountRepository implements IBankAccountRepository {
  BankAccountRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Either<CoreFailure, Unit>> createBankAccount(
    BankAccount bankAccount,
    Profile profile,
  ) async {
    try {
      final response = await _dio.post<dynamic>(
        Endpoints.createBankAccount,
        data: {
          'user': profile.id,
          'bank': bankAccount.bank,
          'account_number': bankAccount.accountNumber,
          'account_type': bankAccount.accountType,
          'default': bankAccount.bankDefault,
        },
      );
      switch (response.statusCode) {
        case 201:
          return right(unit);
        default:
          return left(const CoreFailure.unexpected());
      }
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, BankAccount>> getBankAccount() {
    throw UnimplementedError();
  }

  @override
  Future<Either<CoreFailure, Unit>> updateBankAccount(BankAccount bankAccount) {
    throw UnimplementedError();
  }
}
