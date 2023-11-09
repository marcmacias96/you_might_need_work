// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:you_might_need_work/data/auth/auth.dart' as _i13;
import 'package:you_might_need_work/data/auth/auth_repository.dart' as _i14;
import 'package:you_might_need_work/data/bank_account/bank_account.dart'
    as _i15;
import 'package:you_might_need_work/data/bank_account/bank_account_repository.dart'
    as _i16;
import 'package:you_might_need_work/data/config/config.dart' as _i5;
import 'package:you_might_need_work/data/config/config_repository.dart' as _i6;
import 'package:you_might_need_work/data/core/api_client/api_client.dart'
    as _i3;
import 'package:you_might_need_work/data/core/helpers/injectable_module.dart'
    as _i19;
import 'package:you_might_need_work/data/local/local.dart' as _i11;
import 'package:you_might_need_work/data/local/local_repository.dart' as _i12;
import 'package:you_might_need_work/data/profile/profile.dart' as _i7;
import 'package:you_might_need_work/data/profile/profile_repository.dart'
    as _i8;
import 'package:you_might_need_work/features/auth/cubit/auth_cubit.dart'
    as _i17;
import 'package:you_might_need_work/features/auth_form/cubit/auth_form_cubit.dart'
    as _i18;
import 'package:you_might_need_work/features/profile_form/cubit/profile_form_cubit.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i3.ApiClient>(() => injectableModule.client);
    gh.lazySingleton<_i4.Dio>(() => injectableModule.httpClient);
    gh.lazySingleton<_i5.IConfigRepository>(
        () => _i6.ConfigRepository(apiClient: gh<_i3.ApiClient>()));
    gh.lazySingleton<_i7.IProfileRepository>(
        () => _i8.ProfileRepository(apiClient: gh<_i3.ApiClient>()));
    gh.factory<_i9.ProfileFormCubit>(
        () => _i9.ProfileFormCubit(gh<_i7.ProfileRepository>()));
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => injectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i11.ILocalRepository>(() =>
        _i12.LocalRepository(sharedPreferences: gh<_i10.SharedPreferences>()));
    gh.lazySingleton<_i13.IAuthRepository>(() => _i14.AuthRepository(
          apiClient: gh<_i3.ApiClient>(),
          localRepository: gh<_i11.ILocalRepository>(),
          profileRepository: gh<_i7.IProfileRepository>(),
        ));
    gh.lazySingleton<_i15.IBankAccountRepository>(
        () => _i16.BankAccountRepository(
              apiClient: gh<_i3.ApiClient>(),
              localRepository: gh<_i11.ILocalRepository>(),
            ));
    gh.factory<_i17.AuthCubit>(
        () => _i17.AuthCubit(gh<_i13.IAuthRepository>()));
    gh.factory<_i18.AuthFormCubit>(
        () => _i18.AuthFormCubit(gh<_i13.IAuthRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i19.InjectableModule {}
