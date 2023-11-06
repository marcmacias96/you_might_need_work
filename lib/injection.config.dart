// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:you_might_need_work/data/auth/auth.dart' as _i6;
import 'package:you_might_need_work/data/auth/auth_repository.dart' as _i7;
import 'package:you_might_need_work/data/core/helpers/firebase_injectable_module.dart'
    as _i11;
import 'package:you_might_need_work/features/auth/cubit/auth_cubit.dart' as _i9;
import 'package:you_might_need_work/features/auth_form/cubit/auth_form_cubit.dart'
    as _i10;
import 'package:you_might_need_work/features/profile_form/cubit/profile_form_cubit.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.Dio>(() => firebaseInjectableModule.httpClient);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i6.IAuthRepository>(() => _i7.AuthRepository(
          firebaseAuth: gh<_i4.FirebaseAuth>(),
          googleSignIn: gh<_i5.GoogleSignIn>(),
        ));
    gh.factory<_i8.ProfileFormCubit>(() => _i8.ProfileFormCubit());
    gh.factory<_i9.AuthCubit>(() => _i9.AuthCubit(gh<_i6.IAuthRepository>()));
    gh.factory<_i10.AuthFormCubit>(
        () => _i10.AuthFormCubit(gh<_i6.IAuthRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i11.FirebaseInjectableModule {}
