mixin Endpoints {
  static const String baseUrl = 'http://34.229.215.124/api/v1';
  static const String signIn = '/auth/token/';
  static const String signUp = '/';
  static const String getUser = '/users/';
  static const String refresh = '/auth/token/refresh/';
  static const String updateUser = '/users/update/';
  static const String getBankAccounts = '/users/bank-accounts/';
  static const String createBankAccount = '/users/bank-accounts/create/';
  static const String updateBankAccount = '/users/bank-accounts/update/';
  static const String getBanks = '/config/banks/';
  static const String getIndustries = '/config/industries/';
}
