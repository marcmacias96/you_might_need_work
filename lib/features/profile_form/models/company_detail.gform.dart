// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'company_detail.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCompanyDetailFormConsumer extends StatelessWidget {
  const ReactiveCompanyDetailFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, CompanyDetailForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCompanyDetailForm.of(context);

    if (formModel is! CompanyDetailForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CompanyDetailFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const CompanyDetailFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CompanyDetailForm form;
}

class ReactiveCompanyDetailForm extends StatelessWidget {
  const ReactiveCompanyDetailForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CompanyDetailForm form;

  final WillPopCallback? onWillPop;

  static CompanyDetailForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              CompanyDetailFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CompanyDetailFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CompanyDetailFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CompanyDetailFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CompanyDetailFormBuilder extends StatefulWidget {
  const CompanyDetailFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CompanyDetail? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, CompanyDetailForm formModel, Widget? child) builder;

  final void Function(BuildContext context, CompanyDetailForm formModel)?
      initState;

  @override
  _CompanyDetailFormBuilderState createState() =>
      _CompanyDetailFormBuilderState();
}

class _CompanyDetailFormBuilderState extends State<CompanyDetailFormBuilder> {
  late CompanyDetailForm _formModel;

  @override
  void initState() {
    _formModel =
        CompanyDetailForm(CompanyDetailForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CompanyDetailFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          CompanyDetailForm(CompanyDetailForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveCompanyDetailForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class CompanyDetailForm implements FormModel<CompanyDetail> {
  CompanyDetailForm(
    this.form,
    this.path,
  );

  static const String industryControlName = "industry";

  static const String descriptionControlName = "description";

  static const String titleControlName = "title";

  static const String ocupationControlName = "ocupation";

  static const String specializationControlName = "specialization";

  static const String statingAtControlName = "statingAt";

  static const String endingAtControlName = "endingAt";

  static const String paymentForHourControlName = "paymentForHour";

  static const String hoursRequiredControlName = "hoursRequired";

  final FormGroup form;

  final String? path;

  String industryControlPath() => pathBuilder(industryControlName);

  String descriptionControlPath() => pathBuilder(descriptionControlName);

  String titleControlPath() => pathBuilder(titleControlName);

  String ocupationControlPath() => pathBuilder(ocupationControlName);

  String specializationControlPath() => pathBuilder(specializationControlName);

  String statingAtControlPath() => pathBuilder(statingAtControlName);

  String endingAtControlPath() => pathBuilder(endingAtControlName);

  String paymentForHourControlPath() => pathBuilder(paymentForHourControlName);

  String hoursRequiredControlPath() => pathBuilder(hoursRequiredControlName);

  String get _industryValue => industryControl.value as String;

  String get _descriptionValue => descriptionControl.value as String;

  String get _titleValue => titleControl.value as String;

  String get _ocupationValue => ocupationControl.value as String;

  String get _specializationValue => specializationControl.value as String;

  String get _statingAtValue => statingAtControl.value as String;

  String get _endingAtValue => endingAtControl.value as String;

  String get _paymentForHourValue => paymentForHourControl.value as String;

  String get _hoursRequiredValue => hoursRequiredControl.value as String;

  bool get containsIndustry {
    try {
      form.control(industryControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTitle {
    try {
      form.control(titleControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOcupation {
    try {
      form.control(ocupationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSpecialization {
    try {
      form.control(specializationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsStatingAt {
    try {
      form.control(statingAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEndingAt {
    try {
      form.control(endingAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPaymentForHour {
    try {
      form.control(paymentForHourControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHoursRequired {
    try {
      form.control(hoursRequiredControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get industryErrors => industryControl.errors;

  Object? get descriptionErrors => descriptionControl.errors;

  Object? get titleErrors => titleControl.errors;

  Object? get ocupationErrors => ocupationControl.errors;

  Object? get specializationErrors => specializationControl.errors;

  Object? get statingAtErrors => statingAtControl.errors;

  Object? get endingAtErrors => endingAtControl.errors;

  Object? get paymentForHourErrors => paymentForHourControl.errors;

  Object? get hoursRequiredErrors => hoursRequiredControl.errors;

  void get industryFocus => form.focus(industryControlPath());

  void get descriptionFocus => form.focus(descriptionControlPath());

  void get titleFocus => form.focus(titleControlPath());

  void get ocupationFocus => form.focus(ocupationControlPath());

  void get specializationFocus => form.focus(specializationControlPath());

  void get statingAtFocus => form.focus(statingAtControlPath());

  void get endingAtFocus => form.focus(endingAtControlPath());

  void get paymentForHourFocus => form.focus(paymentForHourControlPath());

  void get hoursRequiredFocus => form.focus(hoursRequiredControlPath());

  void industryValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    industryControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ocupationValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ocupationControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void specializationValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    specializationControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void statingAtValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    statingAtControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endingAtValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endingAtControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void paymentForHourValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentForHourControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hoursRequiredValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hoursRequiredControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void industryValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    industryControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ocupationValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ocupationControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void specializationValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    specializationControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void statingAtValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    statingAtControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endingAtValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endingAtControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void paymentForHourValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentForHourControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hoursRequiredValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hoursRequiredControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void industryValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      industryControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void descriptionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      descriptionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void titleValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      titleControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void ocupationValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      ocupationControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void specializationValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      specializationControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void statingAtValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      statingAtControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void endingAtValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      endingAtControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void paymentForHourValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      paymentForHourControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void hoursRequiredValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hoursRequiredControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get industryControl =>
      form.control(industryControlPath()) as FormControl<String>;

  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;

  FormControl<String> get titleControl =>
      form.control(titleControlPath()) as FormControl<String>;

  FormControl<String> get ocupationControl =>
      form.control(ocupationControlPath()) as FormControl<String>;

  FormControl<String> get specializationControl =>
      form.control(specializationControlPath()) as FormControl<String>;

  FormControl<String> get statingAtControl =>
      form.control(statingAtControlPath()) as FormControl<String>;

  FormControl<String> get endingAtControl =>
      form.control(endingAtControlPath()) as FormControl<String>;

  FormControl<String> get paymentForHourControl =>
      form.control(paymentForHourControlPath()) as FormControl<String>;

  FormControl<String> get hoursRequiredControl =>
      form.control(hoursRequiredControlPath()) as FormControl<String>;

  void industrySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      industryControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      industryControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void descriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      descriptionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      descriptionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void titleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      titleControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      titleControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void ocupationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      ocupationControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      ocupationControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void specializationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      specializationControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      specializationControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void statingAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      statingAtControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      statingAtControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void endingAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      endingAtControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      endingAtControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void paymentForHourSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      paymentForHourControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      paymentForHourControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void hoursRequiredSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hoursRequiredControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hoursRequiredControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  CompanyDetail get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CompanyDetailForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CompanyDetail(
        industry: _industryValue,
        description: _descriptionValue,
        title: _titleValue,
        ocupation: _ocupationValue,
        specialization: _specializationValue,
        statingAt: _statingAtValue,
        endingAt: _endingAtValue,
        paymentForHour: _paymentForHourValue,
        hoursRequired: _hoursRequiredValue);
  }

  @override
  void submit({
    required void Function(CompanyDetail model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    CompanyDetail value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CompanyDetailForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    CompanyDetail? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(CompanyDetail? companyDetail) => FormGroup({
        industryControlName: FormControl<String>(
            value: companyDetail?.industry,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        descriptionControlName: FormControl<String>(
            value: companyDetail?.description,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        titleControlName: FormControl<String>(
            value: companyDetail?.title,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        ocupationControlName: FormControl<String>(
            value: companyDetail?.ocupation,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        specializationControlName: FormControl<String>(
            value: companyDetail?.specialization,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        statingAtControlName: FormControl<String>(
            value: companyDetail?.statingAt,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        endingAtControlName: FormControl<String>(
            value: companyDetail?.endingAt,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        paymentForHourControlName: FormControl<String>(
            value: companyDetail?.paymentForHour,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        hoursRequiredControlName: FormControl<String>(
            value: companyDetail?.hoursRequired,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveCompanyDetailFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveCompanyDetailFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CompanyDetailForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CompanyDetailForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, CompanyDetailForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCompanyDetailForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveCompanyDetailFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveCompanyDetailFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      CompanyDetailForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CompanyDetailForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, CompanyDetailForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCompanyDetailForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
