// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'identity_data.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveIdentityDataFormConsumer extends StatelessWidget {
  const ReactiveIdentityDataFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, IdentityDataForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdentityDataForm.of(context);

    if (formModel is! IdentityDataForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class IdentityDataFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const IdentityDataFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final IdentityDataForm form;
}

class ReactiveIdentityDataForm extends StatelessWidget {
  const ReactiveIdentityDataForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final IdentityDataForm form;

  final WillPopCallback? onWillPop;

  static IdentityDataForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              IdentityDataFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        IdentityDataFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as IdentityDataFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return IdentityDataFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class IdentityDataFormBuilder extends StatefulWidget {
  const IdentityDataFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final IdentityData? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, IdentityDataForm formModel, Widget? child) builder;

  final void Function(BuildContext context, IdentityDataForm formModel)?
      initState;

  @override
  _IdentityDataFormBuilderState createState() =>
      _IdentityDataFormBuilderState();
}

class _IdentityDataFormBuilderState extends State<IdentityDataFormBuilder> {
  late IdentityDataForm _formModel;

  @override
  void initState() {
    _formModel =
        IdentityDataForm(IdentityDataForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant IdentityDataFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          IdentityDataForm(IdentityDataForm.formElements(widget.model), null);

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
    return ReactiveIdentityDataForm(
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

class IdentityDataForm implements FormModel<IdentityData> {
  IdentityDataForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String lastNameControlName = "lastName";

  static const String documentNumberControlName = "documentNumber";

  static const String documentTypeControlName = "documentType";

  static const String documentIssueDateControlName = "documentIssueDate";

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);

  String lastNameControlPath() => pathBuilder(lastNameControlName);

  String documentNumberControlPath() => pathBuilder(documentNumberControlName);

  String documentTypeControlPath() => pathBuilder(documentTypeControlName);

  String documentIssueDateControlPath() =>
      pathBuilder(documentIssueDateControlName);

  String get _nameValue => nameControl.value as String;

  String get _lastNameValue => lastNameControl.value as String;

  String get _documentNumberValue => documentNumberControl.value as String;

  String get _documentTypeValue => documentTypeControl.value as String;

  String get _documentIssueDateValue =>
      documentIssueDateControl.value as String;

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLastName {
    try {
      form.control(lastNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDocumentNumber {
    try {
      form.control(documentNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDocumentType {
    try {
      form.control(documentTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDocumentIssueDate {
    try {
      form.control(documentIssueDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;

  Object? get lastNameErrors => lastNameControl.errors;

  Object? get documentNumberErrors => documentNumberControl.errors;

  Object? get documentTypeErrors => documentTypeControl.errors;

  Object? get documentIssueDateErrors => documentIssueDateControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get lastNameFocus => form.focus(lastNameControlPath());

  void get documentNumberFocus => form.focus(documentNumberControlPath());

  void get documentTypeFocus => form.focus(documentTypeControlPath());

  void get documentIssueDateFocus => form.focus(documentIssueDateControlPath());

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentTypeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentIssueDateValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentIssueDateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentTypeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentIssueDateValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentIssueDateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void lastNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lastNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void documentNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void documentTypeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void documentIssueDateValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentIssueDateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;

  FormControl<String> get documentNumberControl =>
      form.control(documentNumberControlPath()) as FormControl<String>;

  FormControl<String> get documentTypeControl =>
      form.control(documentTypeControlPath()) as FormControl<String>;

  FormControl<String> get documentIssueDateControl =>
      form.control(documentIssueDateControlPath()) as FormControl<String>;

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void lastNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      lastNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lastNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void documentNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void documentTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void documentIssueDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentIssueDateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentIssueDateControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  IdentityData get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'IdentityDataForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return IdentityData(
        name: _nameValue,
        lastName: _lastNameValue,
        documentNumber: _documentNumberValue,
        documentType: _documentTypeValue,
        documentIssueDate: _documentIssueDateValue);
  }

  @override
  void submit({
    required void Function(IdentityData model) onValid,
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
    IdentityData value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(IdentityDataForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    IdentityData? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(IdentityData? identityData) => FormGroup({
        nameControlName: FormControl<String>(
            value: identityData?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: identityData?.lastName,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        documentNumberControlName: FormControl<String>(
            value: identityData?.documentNumber,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        documentTypeControlName: FormControl<String>(
            value: identityData?.documentType,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        documentIssueDateControlName: FormControl<String>(
            value: identityData?.documentIssueDate,
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

class ReactiveIdentityDataFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveIdentityDataFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(IdentityDataForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      IdentityDataForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, IdentityDataForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdentityDataForm.of(context);

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

class ReactiveIdentityDataFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveIdentityDataFormFormGroupArrayBuilder({
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
      IdentityDataForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      IdentityDataForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, IdentityDataForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdentityDataForm.of(context);

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
