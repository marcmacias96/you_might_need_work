import 'package:dartz/dartz.dart';
import 'package:you_might_need_work/data/bank_account/models/bank_account.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';
import 'package:you_might_need_work/data/profile/models/profile/profile.dart';

abstract class IBankAccountRepository {
  Future<Either<CoreFailure, BankAccount>> getBankAccount();
  Future<Either<CoreFailure, Unit>> createBankAccount(
    BankAccount bankAccount,
    Profile profile,
  );
  Future<Either<CoreFailure, Unit>> updateBankAccount(
    BankAccount bankAccount,
  );
}
