import 'package:dartz/dartz.dart';
import 'package:you_might_need_work/data/bank_account/models/bank_account.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';

abstract class IBankAccountRepository {
  Future<Either<CoreFailure, List<BankAccount>>> getBanksAccounts();
  Future<Either<CoreFailure, Unit>> createBankAccount(
    BankAccount bankAccount,
    int profileId,
  );
  Future<Either<CoreFailure, Unit>> updateBankAccount(
    BankAccount bankAccount,
    int bankAccountId,
  );
}
