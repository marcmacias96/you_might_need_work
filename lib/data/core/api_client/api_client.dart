import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:you_might_need_work/data/bank_account/models/models.dart';
import 'package:you_might_need_work/data/core/core.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET(Endpoints.getUser)
  Future<ProfileResponse> getProfile();

  @POST(Endpoints.updateUser)
  Future<void> updateProfile({
    @Body() required Map<String, dynamic> profile,
  });

  @POST(Endpoints.createBankAccount)
  Future<void> createBankAccount({
    @Body() required Map<String, dynamic> bankAccount,
  });

  @GET(Endpoints.getBankAccounts)
  Future<BankAccountResponse> getBankAccounts();

  @POST(Endpoints.updateBankAccount)
  Future<void> updateBankAccount({
    @Body() required Map<String, dynamic> bankAccount,
  });
}
