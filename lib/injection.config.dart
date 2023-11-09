// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;
import 'package:you_might_need_work/data/auth/auth.dart' as _i12;
import 'package:you_might_need_work/data/auth/auth_repository.dart' as _i13;
import 'package:you_might_need_work/data/bank_account/bank_account_repository.dart'
    as _i15;
import 'package:you_might_need_work/data/bank_account/i_bank_account_repository.dart'
    as _i14;
import 'package:you_might_need_work/data/config/config_repository.dart' as _i5;
import 'package:you_might_need_work/data/config/i_config_repository.dart'
    as _i4;
import 'package:you_might_need_work/data/core/helpers/injectable_module.dart'
    as _i18;
import 'package:you_might_need_work/data/local/local.dart' as _i10;
import 'package:you_might_need_work/data/local/local_repository.dart' as _i11;
import 'package:you_might_need_work/data/profile/profile.dart' as _i6;
import 'package:you_might_need_work/data/profile/profile_repository.dart'
    as _i7;
import 'package:you_might_need_work/features/auth/cubit/auth_cubit.dart'
    as _i16;
import 'package:you_might_need_work/features/auth_form/cubit/auth_form_cubit.dart'
    as _i17;
import 'package:you_might_need_work/features/profile_form/cubit/profile_form_cubit.dart'
    as _i8;

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
    gh.lazySingleton<_i3.Dio>(() => injectableModule.httpClient);
    gh.lazySingleton<_i4.IConfigRepository>(
        () => _i5.ConfigRepository(dio: gh<_i3.Dio>()));
    gh.lazySingleton<_i6.IProfileRepository>(
        () => _i7.ProfileRepository(dio: gh<_i3.Dio>()));
    gh.factory<_i8.ProfileFormCubit>(() => _i8.ProfileFormCubit());
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => injectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i10.ILocalRepository>(() =>
        _i11.LocalRepository(sharedPreferences: gh<_i9.SharedPreferences>()));
    gh.lazySingleton<_i12.IAuthRepository>(() => _i13.AuthRepository(
          dio: gh<_i3.Dio>(),
          localRepository: gh<_i10.ILocalRepository>(),
          profileRepository: gh<_i6.IProfileRepository>(),
        ));
    gh.lazySingleton<_i14.IBankAccountRepository>(
        () => _i15.BankAccountRepository(
              dio: gh<_i3.Dio>(),
              localRepository: gh<_i10.ILocalRepository>(),
            ));
    gh.factory<_i16.AuthCubit>(
        () => _i16.AuthCubit(gh<_i12.IAuthRepository>()));
    gh.factory<_i17.AuthFormCubit>(
        () => _i17.AuthFormCubit(gh<_i12.IAuthRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i18.InjectableModule {}
