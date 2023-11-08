import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum FeedbackOptions {
  feedbackOption1('TRACK_BILLABLE_TIME'),
  feedbackOption2('BUSINESS_ON_TRACK'),
  feedbackOption3('ESTIMATE_FUTURE_PROJECTS'),
  feedbackOption4('EVIDENCE_OF_WORK'),
  feedbackOption5('SOMETHING_ELSE');

  const FeedbackOptions(this.value);

  final String value;

  static FeedbackOptions fromString(String value) {
    return FeedbackOptions.values.firstWhere(
      (element) => element.value == value,
      orElse: () => FeedbackOptions.feedbackOption1,
    );
  }

  String getTraduction(AppLocalizations localization) {
    switch (this) {
      case FeedbackOptions.feedbackOption1:
        return localization.feedback1;
      case FeedbackOptions.feedbackOption2:
        return localization.feedback2;
      case FeedbackOptions.feedbackOption3:
        return localization.feedback3;
      case FeedbackOptions.feedbackOption4:
        return localization.feedback4;
      case FeedbackOptions.feedbackOption5:
        return localization.feedback5;
    }
  }
}
