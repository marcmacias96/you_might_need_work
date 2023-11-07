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
import 'package:shared_preferences/shared_preferences.dart' as _i7;
import 'package:you_might_need_work/data/auth/auth.dart' as _i10;
import 'package:you_might_need_work/data/auth/auth_repository.dart' as _i11;
import 'package:you_might_need_work/data/core/helpers/injectable_module.dart'
    as _i15;
import 'package:you_might_need_work/data/local/i_local_repository.dart' as _i12;
import 'package:you_might_need_work/data/local/local.dart' as _i8;
import 'package:you_might_need_work/data/local/local_repository.dart' as _i9;
import 'package:you_might_need_work/data/profile/i_profile_repository.dart'
    as _i4;
import 'package:you_might_need_work/data/profile/profile_repository.dart'
    as _i5;
import 'package:you_might_need_work/features/auth/cubit/auth_cubit.dart'
    as _i13;
import 'package:you_might_need_work/features/auth_form/cubit/auth_form_cubit.dart'
    as _i14;
import 'package:you_might_need_work/features/profile_form/cubit/profile_form_cubit.dart'
    as _i6;

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
    gh.lazySingleton<_i4.IProfileRepository>(
        () => _i5.ProfileRepository(dio: gh<_i3.Dio>()));
    gh.factory<_i6.ProfileFormCubit>(() => _i6.ProfileFormCubit());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => injectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i8.ILocalRepository>(() =>
        _i9.LocalRepository(sharedPreferences: gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i10.IAuthRepository>(() => _i11.AuthRepository(
          dio: gh<_i3.Dio>(),
          localRepository: gh<_i12.ILocalRepository>(),
          profileRepository: gh<_i4.IProfileRepository>(),
        ));
    gh.factory<_i13.AuthCubit>(
        () => _i13.AuthCubit(gh<_i10.IAuthRepository>()));
    gh.factory<_i14.AuthFormCubit>(
        () => _i14.AuthFormCubit(gh<_i10.IAuthRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i15.InjectableModule {}
