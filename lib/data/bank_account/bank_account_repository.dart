import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/bank_account/bank_account.dart';
import 'package:you_might_need_work/data/bank_account/models/models.dart';
import 'package:you_might_need_work/data/core/api_client/api_client.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/local/local.dart';

@LazySingleton(as: IBankAccountRepository)
class BankAccountRepository implements IBankAccountRepository {
  BankAccountRepository({
    required ApiClient apiClient,
    required ILocalRepository localRepository,
  })  : _apiClient = apiClient,
        _localRepository = localRepository;

  final ApiClient _apiClient;
  final ILocalRepository _localRepository;
  @override
  Future<Either<CoreFailure, Unit>> createBankAccount(
    BankAccount bankAccount,
  ) async {
    try {
      final userId = _localRepository.getUserId();
      await _apiClient.createBankAccount(
        bankAccount: bankAccount.copyWith(user: userId!).toJson(),
      );
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreFailure, List<BankAccount>>> getBankAccounts() async {
    try {
      final response = await _apiClient.getBankAccounts();
    
      final bankAccounts =response.data.results;
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
      await _apiClient.updateBankAccount(
        bankAccount: bankAccount.toJson(),
      );
      return right(unit);
    } on DioException catch (_) {
      return left(const CoreFailure.serverError());
    } catch (_) {
      return left(const CoreFailure.unexpected());
    }
  }
}
