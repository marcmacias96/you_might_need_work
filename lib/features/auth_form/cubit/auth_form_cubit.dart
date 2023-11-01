import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/auth/auth.dart';
import 'package:you_might_need_work/data/auth/models/models.dart';
import 'package:you_might_need_work/features/auth_form/models/models.dart';

part 'auth_form_state.dart';
part 'auth_form_cubit.freezed.dart';

@injectable
class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit(this._authRepository) : super(AuthFormState.initial());

  final IAuthRepository _authRepository;


  void registerWithEmailAndPasswordPressed(Credentials credentials) {
    _performActionOnAuthRepositoryWithEmailAndPassword(
      _authRepository.registerWithEmailAndPassword,
      credentials: credentials,
    );
  }

  void signInWithEmailAndPasswordPressed(Credentials credentials) {
    _performActionOnAuthRepositoryWithEmailAndPassword(
      _authRepository.signInWithEmailPassword,
      credentials: credentials,
    );
  }

  void signInWithGooglePressed() {
    _performActionOnAuthRepositoryWithThirdPartyProviders(
      _authRepository.signInWithGoogle,
    );
  }

  void signInWithApplePressed() {
    _performActionOnAuthRepositoryWithThirdPartyProviders(
      _authRepository.signInWithApple,
    );
  }


  Future<void> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required String emailAddress,
      required String password,
    }) forwardedCall, {
    required Credentials credentials,
  }) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: null,
      ),
    );

    final failureOrSuccess = await forwardedCall(
      emailAddress: credentials.email,
      password: credentials.password,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: failureOrSuccess,
      ),
    );
  }

  Future<void> _performActionOnAuthRepositoryWithThirdPartyProviders(
    Future<Either<AuthFailure, Unit>> Function() forwardedCall,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: null,
      ),
    );

    final failureOrSuccess = await forwardedCall();

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: failureOrSuccess,
      ),
    );
  }
}
