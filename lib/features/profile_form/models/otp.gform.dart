// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'otp.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveOtpFormConsumer extends StatelessWidget {
  const ReactiveOtpFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, OtpForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOtpForm.of(context);

    if (formModel is! OtpForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class OtpFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const OtpFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final OtpForm form;
}

class ReactiveOtpForm extends StatelessWidget {
  const ReactiveOtpForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final OtpForm form;

  final WillPopCallback? onWillPop;

  static OtpForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<OtpFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<OtpFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as OtpFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return OtpFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class OtpFormBuilder extends StatefulWidget {
  const OtpFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Otp? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, OtpForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, OtpForm formModel)? initState;

  @override
  _OtpFormBuilderState createState() => _OtpFormBuilderState();
}

class _OtpFormBuilderState extends State<OtpFormBuilder> {
  late OtpForm _formModel;

  @override
  void initState() {
    _formModel = OtpForm(OtpForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant OtpFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = OtpForm(OtpForm.formElements(widget.model), null);

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
    return ReactiveOtpForm(
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

class OtpForm implements FormModel<Otp> {
  OtpForm(
    this.form,
    this.path,
  );

  static const String otpControlName = "otp";

  final FormGroup form;

  final String? path;

  String otpControlPath() => pathBuilder(otpControlName);

  String get _otpValue => otpControl.value as String;

  bool get containsOtp {
    try {
      form.control(otpControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get otpErrors => otpControl.errors;

  void get otpFocus => form.focus(otpControlPath());

  void otpValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otpControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void otpValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otpControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void otpValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      otpControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get otpControl =>
      form.control(otpControlPath()) as FormControl<String>;

  void otpSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      otpControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      otpControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Otp get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'OtpForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Otp(otp: _otpValue);
  }

  @override
  void submit({
    required void Function(Otp model) onValid,
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
    Otp value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(OtpForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Otp? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Otp? otp) => FormGroup({
        otpControlName: FormControl<String>(
            value: otp?.otp,
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

class ReactiveOtpFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveOtpFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(OtpForm formModel)? control;

  final Widget Function(
      BuildContext context, List<Widget> itemList, OtpForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item, OtpForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOtpForm.of(context);

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

class ReactiveOtpFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveOtpFormFormGroupArrayBuilder({
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
      OtpForm formModel)? getExtended;

  final Widget Function(
      BuildContext context, List<Widget> itemList, OtpForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item, OtpForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOtpForm.of(context);

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
