// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'payment_method.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePaymentMethodFormConsumer extends StatelessWidget {
  const ReactivePaymentMethodFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PaymentMethodForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentMethodForm.of(context);

    if (formModel is! PaymentMethodForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PaymentMethodFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PaymentMethodFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PaymentMethodForm form;
}

class ReactivePaymentMethodForm extends StatelessWidget {
  const ReactivePaymentMethodForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PaymentMethodForm form;

  final WillPopCallback? onWillPop;

  static PaymentMethodForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PaymentMethodFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PaymentMethodFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PaymentMethodFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PaymentMethodFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PaymentMethodFormBuilder extends StatefulWidget {
  const PaymentMethodFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PaymentMethod? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, PaymentMethodForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PaymentMethodForm formModel)?
      initState;

  @override
  _PaymentMethodFormBuilderState createState() =>
      _PaymentMethodFormBuilderState();
}

class _PaymentMethodFormBuilderState extends State<PaymentMethodFormBuilder> {
  late PaymentMethodForm _formModel;

  @override
  void initState() {
    _formModel =
        PaymentMethodForm(PaymentMethodForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PaymentMethodFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          PaymentMethodForm(PaymentMethodForm.formElements(widget.model), null);

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
    return ReactivePaymentMethodForm(
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

class PaymentMethodForm implements FormModel<PaymentMethod> {
  PaymentMethodForm(
    this.form,
    this.path,
  );

  static const String bankControlName = "bank";

  static const String accountNumberControlName = "accountNumber";

  static const String accountTypeControlName = "accountType";

  final FormGroup form;

  final String? path;

  String bankControlPath() => pathBuilder(bankControlName);

  String accountNumberControlPath() => pathBuilder(accountNumberControlName);

  String accountTypeControlPath() => pathBuilder(accountTypeControlName);

  String get _bankValue => bankControl.value as String;

  String get _accountNumberValue => accountNumberControl.value as String;

  String get _accountTypeValue => accountTypeControl.value as String;

  bool get containsBank {
    try {
      form.control(bankControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAccountNumber {
    try {
      form.control(accountNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAccountType {
    try {
      form.control(accountTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get bankErrors => bankControl.errors;

  Object? get accountNumberErrors => accountNumberControl.errors;

  Object? get accountTypeErrors => accountTypeControl.errors;

  void get bankFocus => form.focus(bankControlPath());

  void get accountNumberFocus => form.focus(accountNumberControlPath());

  void get accountTypeFocus => form.focus(accountTypeControlPath());

  void bankValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    bankControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void accountNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    accountNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void accountTypeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    accountTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void bankValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    bankControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void accountNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    accountNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void accountTypeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    accountTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void bankValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      bankControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void accountNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      accountNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void accountTypeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      accountTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get bankControl =>
      form.control(bankControlPath()) as FormControl<String>;

  FormControl<String> get accountNumberControl =>
      form.control(accountNumberControlPath()) as FormControl<String>;

  FormControl<String> get accountTypeControl =>
      form.control(accountTypeControlPath()) as FormControl<String>;

  void bankSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      bankControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      bankControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void accountNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      accountNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      accountNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void accountTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      accountTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      accountTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PaymentMethod get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'PaymentMethodForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PaymentMethod(
        bank: _bankValue,
        accountNumber: _accountNumberValue,
        accountType: _accountTypeValue);
  }

  @override
  void submit({
    required void Function(PaymentMethod model) onValid,
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
    PaymentMethod value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PaymentMethodForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PaymentMethod? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PaymentMethod? paymentMethod) => FormGroup({
        bankControlName: FormControl<String>(
            value: paymentMethod?.bank,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        accountNumberControlName: FormControl<String>(
            value: paymentMethod?.accountNumber,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        accountTypeControlName: FormControl<String>(
            value: paymentMethod?.accountType,
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

class ReactivePaymentMethodFormArrayBuilder<T> extends StatelessWidget {
  const ReactivePaymentMethodFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PaymentMethodForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentMethodForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PaymentMethodForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentMethodForm.of(context);

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

class ReactivePaymentMethodFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePaymentMethodFormFormGroupArrayBuilder({
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
      PaymentMethodForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentMethodForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PaymentMethodForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentMethodForm.of(context);

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
