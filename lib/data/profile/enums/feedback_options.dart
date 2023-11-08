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
}
