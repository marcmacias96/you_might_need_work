// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'capacity.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCapacityFormConsumer extends StatelessWidget {
  const ReactiveCapacityFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, CapacityForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCapacityForm.of(context);

    if (formModel is! CapacityForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CapacityFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const CapacityFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CapacityForm form;
}

class ReactiveCapacityForm extends StatelessWidget {
  const ReactiveCapacityForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CapacityForm form;

  final WillPopCallback? onWillPop;

  static CapacityForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<CapacityFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CapacityFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CapacityFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CapacityFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CapacityFormBuilder extends StatefulWidget {
  const CapacityFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Capacity? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, CapacityForm formModel, Widget? child) builder;

  final void Function(BuildContext context, CapacityForm formModel)? initState;

  @override
  _CapacityFormBuilderState createState() => _CapacityFormBuilderState();
}

class _CapacityFormBuilderState extends State<CapacityFormBuilder> {
  late CapacityForm _formModel;

  @override
  void initState() {
    _formModel = CapacityForm(CapacityForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CapacityFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CapacityForm(CapacityForm.formElements(widget.model), null);

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
    return ReactiveCapacityForm(
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

class CapacityForm implements FormModel<Capacity> {
  CapacityForm(
    this.form,
    this.path,
  );

  static const String capacityControlName = "capacity";

  final FormGroup form;

  final String? path;

  String capacityControlPath() => pathBuilder(capacityControlName);

  String get _capacityValue => capacityControl.value as String;

  bool get containsCapacity {
    try {
      form.control(capacityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get capacityErrors => capacityControl.errors;

  void get capacityFocus => form.focus(capacityControlPath());

  void capacityValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    capacityControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void capacityValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    capacityControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void capacityValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      capacityControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get capacityControl =>
      form.control(capacityControlPath()) as FormControl<String>;

  void capacitySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      capacityControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      capacityControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Capacity get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CapacityForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Capacity(capacity: _capacityValue);
  }

  @override
  void submit({
    required void Function(Capacity model) onValid,
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
    Capacity value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CapacityForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Capacity? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Capacity? capacity) => FormGroup({
        capacityControlName: FormControl<String>(
            value: capacity?.capacity,
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

class ReactiveCapacityFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveCapacityFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CapacityForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, CapacityForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, CapacityForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCapacityForm.of(context);

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

class ReactiveCapacityFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveCapacityFormFormGroupArrayBuilder({
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
      CapacityForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, CapacityForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, CapacityForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCapacityForm.of(context);

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
