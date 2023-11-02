import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final Credentials credentials = Credentials.empty();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: BlocProvider(
        create: (context) => getIt<AuthFormCubit>(),
        child: Scaffold(
          body: BlocConsumer<AuthFormCubit, AuthFormState>(
            listener: (context, state) {
              state.authFailureOrSuccess?.fold(
                (l) {},
                (r) {},
              );
            },
            builder: (context, state) {
              return  CustomScrollView(
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
                                    ? 'Hello!'
                                    : 'Sign Up',
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
                                padding: const EdgeInsets.symmetric
                                (horizontal: AppPadding.large),
                            child: Form(
                              autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  AppFormInput(
                                    prefixIcon: Images.email,
                                    formControl: formModel.emailControl,
                                    labelText: 'E-mail',
                                    hintText: 'Enter your email',
                                    validationMessages: {
                                      ValidationMessage.required: (_) =>
                                          'The email must not be empty',
                                      ValidationMessage.email: (_) =>
                                          'The email must be valid',
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
                                          'The password must not be empty',
                                      ValidationMessage.minLength: (_) =>
                                          'The password must be'
                                          ' at least 6 characters',
                                    },
                                    textInputAction: TextInputAction.done,
                                    hintText: 'Password',
                                    labelText: 'Password',
                                  ),
                                  const SizedBox(height: AppPadding.large),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Forgot Password?',style: 
                                      theme.textTheme.bodyMedium!.copyWith(
                                        color: AppColors.grayGray1,
                                      ),),
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
                                        text: widget.args.type
                                         == AuthFormType.login
                                            ? 'Sign In'
                                            : 'Sign Up',
                                      );
                                    },
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
