import 'package:you_might_need_work/data/auth/models/auth_token/auth_token.dart';

/// An abstract repository interface for local data storage
/// operations related to authentication.
///
/// This interface defines methods for caching and retrieving
/// authentication-related data
/// locally on the device, such as user authentication tokens.
///
/// Example:
///
/// ```dart
/// final localRepository = getIt<ILocalRepository>();
///
/// // Cache authentication data locally.
/// final authToken = AuthToken());
/// await localRepository.cacheAuthData(authToken);
///
/// // Retrieve the cached authentication data.
/// final cachedAuthToken = localRepository.getAuthData();
///
/// // Remove the cached authentication data.
/// await localRepository.removeAuthCache();
/// ```
///
/// In the example above, an instance of a class
/// implementing the [ILocalRepository]
/// interface is used to perform local data storage operations related
/// to authentication.
/// This interface can be used as a contract to define methods for
/// caching, retrieving,
/// and removing authentication-related data locally on the device.
abstract class ILocalRepository {
  /// Cache authentication data locally on the device.
  ///
  /// This method stores the provided [authToken] locally on the device,
  /// allowing it to be
  /// retrieved later. It is typically used for caching
  /// authentication-related data.
  Future<void> cacheAuthData(AuthToken authToken);

  /// Retrieve the cached authentication data from local storage.
  ///
  /// This method retrieves the cached authentication data, typically
  /// user authentication
  /// tokens, that was previously cached locally on the device.
  /// If no data is cached,
  /// it returns `null`.
  AuthToken? getAuthData();

  /// Remove the cached authentication data from local storage.
  ///
  /// This method removes any previously cached authentication data
  /// from local storage on
  /// the device. It can be used to clear cached authentication-related data.
  Future<void> removeAuthCache();

  int? getUserId();
}
