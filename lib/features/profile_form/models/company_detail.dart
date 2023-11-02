import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'company_detail.gform.dart';

@Rf()
class CompanyDetail {
  CompanyDetail({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.industry,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.description,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.title,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.ocupation,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.specialization,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.statingAt,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.endingAt,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.paymentForHour,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.hoursRequired,
  });

  factory CompanyDetail.empty() => CompanyDetail(
        industry: '',
        title: '',
        description: '',
        ocupation: '',
        specialization: '',
        statingAt: '',
        endingAt: '',
        paymentForHour: '',
        hoursRequired: '',
      );

  final String industry;
  final String title;
  final String description;
  final String ocupation;
  final String specialization;
  final String statingAt;
  final String endingAt;
  final String paymentForHour;
  final String hoursRequired;
}
