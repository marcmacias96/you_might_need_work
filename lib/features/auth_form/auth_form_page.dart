// ignore_for_file: lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/auth_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/auth_form/models/models.dart';
import 'package:you_might_need_work/injection.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

enum AuthFormType { signUp, login }

class AuthFormArgs extends Equatable {
  const AuthFormArgs({required this.type});

  final AuthFormType type;

  @override
  List<Object?> get props => [type];
}

class AuthFormPage extends StatefulWidget {
  const AuthFormPage({
    required this.args,
    super.key,
  });

  static const String routeName = 'auth-form';

  final AuthFormArgs args;

  @override
  State<AuthFormPage> createState() => _AuthFormPageState();
}

class _AuthFormPageState extends State<AuthFormPage> {
  final credentials = Credentials.empty();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = AppLocalizations.of(context);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: BlocProvider(
        create: (context) => getIt<AuthFormCubit>(),
        child: Scaffold(
          body: BlocConsumer<AuthFormCubit, AuthFormState>(
            listener: (context, state) {
              state.authFailureOrSuccess?.fold(
                (l) {},
                (r) {
                  // context.pushReplacement(AuthPage.routePath);
                },
              );
            },
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar.medium(
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    centerTitle: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.args.type == AuthFormType.login
                              ? localization.signIn
                              : localization.signUp,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CredentialsFormBuilder(
                      model: credentials,
                      builder: (context, formModel, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.large,
                          ),
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                AppFormInput(
                                  prefixIcon: Images.email,
                                  formControl: formModel.emailControl,
                                  labelText: localization.email,
                                  hintText: localization.enterYourEmail,
                                  validationMessages: {
                                    ValidationMessage.required: (_) =>
                                        localization.emailMustNotBeEmpty,
                                    ValidationMessage.email: (_) =>
                                        localization.emailMustBeValid,
                                  },
                                ),
                                const SizedBox(height: AppPadding.big),
                                AppFormInput(
                                  prefixIcon: Images.lock,
                                  suffixIcon: Images.eye,
                                  formControl: formModel.passwordControl,
                                  obscureText: true,
                                  validationMessages: {
                                    ValidationMessage.required: (_) =>
                                        localization.passwordMustNotBeEmpty,
                                    ValidationMessage.minLength: (_) =>
                                        localization.passwordMustBe,
                                  },
                                  textInputAction: TextInputAction.done,
                                  hintText: localization.password,
                                  labelText: localization.password,
                                ),
                                const SizedBox(height: AppPadding.large),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      localization.forgotPassword,
                                      style:
                                          theme.textTheme.bodyMedium!.copyWith(
                                        color: AppColors.grayGray1,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: AppPadding.xxxl),
                                ReactiveCredentialsFormConsumer(
                                  builder: (context, form, child) {
                                    return AppElevatedButton(
                                      loading: state.isSubmitting,
                                      onPressed: form.form.valid
                                          ? () => handleAction(
                                                context,
                                                credentials: formModel.model,
                                              )
                                          : null,
                                      text:
                                          widget.args.type == AuthFormType.login
                                              ? localization.signIn
                                              : localization.signUp,
                                    );
                                  },
                                ),
                                const SizedBox(height: AppPadding.xxxl),
                                GestureDetector(
                                  onTap: widget.args.type == AuthFormType.login
                                      ? () {
                                          context.pushNamed(
                                            AuthFormPage.routeName,
                                            extra: const AuthFormArgs(
                                              type: AuthFormType.signUp,
                                            ),
                                          );
                                        }
                                      : () {
                                          context.pushNamed(
                                            AuthFormPage.routeName,
                                            extra: const AuthFormArgs(
                                              type: AuthFormType.login,
                                            ),
                                          );
                                        },
                                  child: widget.args.type == AuthFormType.login
                                      ? Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: localization
                                                    .dontHaveAnyAccount,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                  color: AppColors.grayGray2,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${AppLocalizations.of(context).signUp}',
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: localization
                                                    .youHaveAnAccount,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                  color: AppColors.grayGray2,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${AppLocalizations.of(context).signIn}',
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void handleAction(
    BuildContext context, {
    required Credentials credentials,
  }) {
    if (widget.args.type == AuthFormType.login) {
      context
          .read<AuthFormCubit>()
          .signInWithEmailAndPasswordPressed(credentials);
    } else {
      context
          .read<AuthFormCubit>()
          .registerWithEmailAndPasswordPressed(credentials);
    }
  }
}
