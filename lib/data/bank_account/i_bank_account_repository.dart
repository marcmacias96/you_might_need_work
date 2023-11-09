import 'package:dartz/dartz.dart';
import 'package:you_might_need_work/data/bank_account/models/bank_account.dart';
import 'package:you_might_need_work/data/core/models/core_failure/core_failure.dart';

/// An abstract repository interface for bank account-related operations.
///
/// This interface defines methods for working with bank accounts, including
/// retrieving a list of bank accounts, creating a new bank account, and
/// updating an existing bank account.
///
/// Example:
///
/// ```dart
/// final bankAccountRepository = getIt<IBankAccountRepository>();
///
/// // Get a list of bank accounts.
/// final bankAccountsResult = await bankAccountRepository.getBankAccounts();
///
/// // Create a new bank account.
/// final createResult = await bankAccountRepository.createBankAccount(
///   BankAccount(/*...*/),
/// );
///
/// // Update an existing bank account.
/// final updateResult = await bankAccountRepository.updateBankAccount(
///   BankAccount(/*...*/),
/// );
/// ```
abstract class IBankAccountRepository {
  /// Get a list of bank accounts.
  ///
  /// This method retrieves a list of bank accounts. It returns a result wrapped
  /// in an [Either] where [Right] contains the list of bank accounts on success
  /// and [Left] contains a [CoreFailure] on failure.
  Future<Either<CoreFailure, List<BankAccount>>> getBankAccounts();

  /// Create a new bank account.
  ///
  /// This method creates a new bank account by providing the 
  /// [bankAccount] details.
  /// It returns a result wrapped in an [Either] where [Right] 
  /// represents success
  /// and [Left] contains a [CoreFailure] on failure.
  Future<Either<CoreFailure, Unit>> createBankAccount(BankAccount bankAccount);

  /// Update an existing bank account.
  ///
  /// This method updates an existing bank account with the 
  /// provided [bankAccount]
  /// details. It returns a result wrapped in an [Either] where
  /// [Right] represents
  /// success and [Left] contains a [CoreFailure] on failure.
  Future<Either<CoreFailure, Unit>> updateBankAccount(BankAccount bankAccount);
}
