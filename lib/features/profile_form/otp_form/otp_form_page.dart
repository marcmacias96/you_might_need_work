import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:you_might_need_work/features/profile_form/user_type_form/user_type_form.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

enum OtpFormType { phoneNumber, validateOtp }

class OtpFormArgs extends Equatable {
  const OtpFormArgs({this.type = OtpFormType.phoneNumber});

  final OtpFormType type;

  @override
  List<Object?> get props => [type];
}

class OtpFormPage extends StatefulWidget {
  const OtpFormPage({required this.args, super.key});

  final OtpFormArgs args;
  static const String routeName = 'otp_form';

  @override
  State<OtpFormPage> createState() => _OtpFormPageState();
}

class _OtpFormPageState extends State<OtpFormPage> {
  final form = fb.group({
    'phoneNumber': FormControl<PhoneNumber>(
      validators: const [
        RequiredPhoneValidator(),
        ValidPhoneValidator(),
      ],
    ),
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ReactiveFormBuilder(
      form: () => form,
      builder: (context, form, _) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            titleSpacing: AppPadding.xl,
            title: Text(
              'You Might Need Work',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.xxl),
              child: ReactiveFormConsumer(
                builder: (context, form, _) {
                  return AppElevatedButton(
                    loading: false,
                    onPressed: widget.args.type == OtpFormType.phoneNumber
                        ? form.valid
                            ? () => context.pushReplacementNamed(
                                  OtpFormPage.routeName,
                                  extra: const OtpFormArgs(
                                    type: OtpFormType.validateOtp,
                                  ),
                                )
                            : null
                        : () => context.pushNamed(UserTypeFormPage.routeName),
                    text: 'Continue',
                  );
                },
              ),
            ),
          ),
          body: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.xxl),
              child: Column(
                children: [
                  Text(
                    widget.args.type == OtpFormType.phoneNumber
                        ? 'Enter your phone number'
                        : 'Confirm your phone number',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppPadding.xl),
                  Text(
                    widget.args.type == OtpFormType.phoneNumber
                        ? 'Enter your phone number, we will send you an '
                            'authentication code'
                        : 'Please enter the code we sent to your phone '
                            '(406) 555-0120',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: AppColors.grayGray2),
                  ),
                  const Gap(AppPadding.xxl),
                  if (widget.args.type == OtpFormType.phoneNumber)
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: AppShadow(
                        child: ReactivePhoneFormField<PhoneNumber>(
                          formControlName: 'phoneNumber',
                          decoration: const InputDecoration(
                            hintText: 'Enter your phone number',
                          ),
                          countrySelectorNavigator:
                              CountrySelectorNavigator.searchDelegate(
                            titleStyle:
                                Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    )
                  else
                    Column(
                      children: [
                        PinCodeTextField(
                          appContext: context,
                          length: 4,
                          animationType: AnimationType.fade,
                          cursorColor: AppColors.primary1,
                          textStyle: GoogleFonts.poppins(),
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.circle,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 50,
                            borderWidth: 0.5,
                            selectedBorderWidth: 0.5,
                            activeBorderWidth: 0.5,
                            errorBorderWidth: 0.5,
                            disabledBorderWidth: 0.5,
                            inactiveBorderWidth: 0.5,
                            selectedColor: AppColors.primary2,
                            inactiveColor: AppColors.grayGray1,
                            inactiveFillColor: AppColors.white,
                            selectedFillColor: Colors.transparent,
                            activeFillColor: Colors.transparent,
                            activeColor: AppColors.primary1,
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          backgroundColor: AppColors.white,
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          onCompleted: (v) {},
                          onChanged: (value) {},
                          beforeTextPaste: (text) {
                            //if you return true then it will show the paste
                            //confirmation dialog. Otherwise if false, then
                            //nothing will happen.
                            //but you can show anything you want here, like
                            // your pop up saying wrong paste format or etc
                            return true;
                          },
                        ),
                        const Gap(AppPadding.xl),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Resend code in ',
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  color: AppColors.grayGray2,
                                ),
                              ),
                              TextSpan(
                                text: '00:48',
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
