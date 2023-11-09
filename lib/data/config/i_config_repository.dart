import 'package:dartz/dartz.dart';
import 'package:you_might_need_work/data/config/models/bank/bank.dart';
import 'package:you_might_need_work/data/config/models/industry/industry.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
/// An abstract repository interface for configuration-related data.
///
/// This interface defines methods for retrieving configuration data such as
/// a list of banks and industries. These methods can be used to fetch
/// configuration data necessary for the application's functionality.
///
/// Example:
///
/// ```dart
/// final configRepository = getIt<IConfigRepository>();
///
/// // Get a list of banks.
/// final banksResult = await configRepository.getBanks();
///
/// // Get a list of industries.
/// final industriesResult = await configRepository.getIndustries();
/// ```
abstract class IConfigRepository {
  /// Get a list of banks.
  ///
  /// This method retrieves a list of banks. It returns a result wrapped in an
  /// [Either] where [Right] contains the list of banks on success and [Left]
  /// contains a [CoreFailure] on failure.
  Future<Either<CoreFailure, List<Bank>>> getBanks();

  /// Get a list of industries.
  ///
  /// This method retrieves a list of industries. It returns a result
  ///  wrapped in an
  /// [Either] where [Right] contains the list of industries on success 
  /// and [Left]
  /// contains a [CoreFailure] on failure.
  Future<Either<CoreFailure, List<Industry>>> getIndustries();
}
