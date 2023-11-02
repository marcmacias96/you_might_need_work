// ignore_for_file: lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

enum OtpFormType { enterOtp, validateOtp }

class OtpFormArgs extends Equatable {
  const OtpFormArgs({this.type = OtpFormType.enterOtp});

  final OtpFormType type;

  @override
  List<Object?> get props => [type];
}

class OtpForm extends StatefulWidget {
  const OtpForm({this.args = const OtpFormArgs(), super.key});

  final OtpFormArgs args;

  static const String routeName = 'otp-form';

  @override
  State<OtpForm> createState() => _OtpFormPageState();
}

class _OtpFormPageState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.xl),
          child: AppElevatedButton(
            loading: false,
            onPressed: widget.args.type == OtpFormType.enterOtp
                ? () {
                    context.pushNamed(
                      OtpForm.routeName,
                      extra: const OtpFormArgs(
                        type: OtpFormType.validateOtp,
                      ),
                    );
                  }
                : () {
                    context.pushReplacementNamed(
                      SelectUserForm.routeName,
                    );
                  },
            text: 'Continue',
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.xxl),
            child: OtpFormBuilder(
              //     model: credentials,
              builder: (context, formModel, _) {
                return Column(
                  children: [
                    Text(
                      widget.args.type == OtpFormType.enterOtp
                          ? 'Enter your phone number'
                          : 'Confirm your phone number',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: AppPadding.big,
                    ),
                    Text(
                      widget.args.type == OtpFormType.enterOtp
                          ? 'Enter your phone number, we will send you an authentication code'
                          : 'Please enter the code we sent to your phone (406) 555-0120',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: AppColors.grayGray2),
                    ),
                    const SizedBox(
                      height: AppPadding.xxxl,
                    ),
                    if (widget.args.type == OtpFormType.enterOtp)
                      AppFormInput(
                        prefixIcon: Images.unitedStatesFlag,
                        //OJO
                        formControl: formModel.otpControl,
                        labelText: 'Write your phone number',
                        hintText: 'Enter your phone',
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'The phone number must not be empty',
                        },
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
                            animationDuration:
                                const Duration(milliseconds: 300),
                            backgroundColor: AppColors.white,
                            enableActiveFill: true,
                            keyboardType: TextInputType.number,
                            onCompleted: (v) {},
                            onChanged: (value) {},
                            beforeTextPaste: (text) {
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
