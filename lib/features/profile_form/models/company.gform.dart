// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'company.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCompanyFormConsumer extends StatelessWidget {
  const ReactiveCompanyFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, CompanyForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCompanyForm.of(context);

    if (formModel is! CompanyForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CompanyFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const CompanyFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CompanyForm form;
}

class ReactiveCompanyForm extends StatelessWidget {
  const ReactiveCompanyForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CompanyForm form;

  final WillPopCallback? onWillPop;

  static CompanyForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<CompanyFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CompanyFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CompanyFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CompanyFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CompanyFormBuilder extends StatefulWidget {
  const CompanyFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Company? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, CompanyForm formModel, Widget? child) builder;

  final void Function(BuildContext context, CompanyForm formModel)? initState;

  @override
  _CompanyFormBuilderState createState() => _CompanyFormBuilderState();
}

class _CompanyFormBuilderState extends State<CompanyFormBuilder> {
  late CompanyForm _formModel;

  @override
  void initState() {
    _formModel = CompanyForm(CompanyForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CompanyFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CompanyForm(CompanyForm.formElements(widget.model), null);

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
    return ReactiveCompanyForm(
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

class CompanyForm implements FormModel<Company> {
  CompanyForm(
    this.form,
    this.path,
  );

  static const String companyControlName = "company";

  final FormGroup form;

  final String? path;

  String companyControlPath() => pathBuilder(companyControlName);

  String get _companyValue => companyControl.value as String;

  bool get containsCompany {
    try {
      form.control(companyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get companyErrors => companyControl.errors;

  void get companyFocus => form.focus(companyControlPath());

  void companyValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void companyValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void companyValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      companyControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get companyControl =>
      form.control(companyControlPath()) as FormControl<String>;

  void companySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      companyControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      companyControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Company get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CompanyForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Company(company: _companyValue);
  }

  @override
  void submit({
    required void Function(Company model) onValid,
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
    Company value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CompanyForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Company? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Company? company) => FormGroup({
        companyControlName: FormControl<String>(
            value: company?.company,
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

class ReactiveCompanyFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveCompanyFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CompanyForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, CompanyForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, CompanyForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCompanyForm.of(context);

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

class ReactiveCompanyFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveCompanyFormFormGroupArrayBuilder({
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
      CompanyForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, CompanyForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, CompanyForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCompanyForm.of(context);

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
