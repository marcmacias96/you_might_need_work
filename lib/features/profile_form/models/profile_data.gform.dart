// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'profile_data.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProfileDataFormConsumer extends StatelessWidget {
  const ReactiveProfileDataFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ProfileDataForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileDataForm.of(context);

    if (formModel is! ProfileDataForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProfileDataFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ProfileDataFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProfileDataForm form;
}

class ReactiveProfileDataForm extends StatelessWidget {
  const ReactiveProfileDataForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ProfileDataForm form;

  final WillPopCallback? onWillPop;

  static ProfileDataForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ProfileDataFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProfileDataFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProfileDataFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProfileDataFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ProfileDataFormBuilder extends StatefulWidget {
  const ProfileDataFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProfileData? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ProfileDataForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ProfileDataForm formModel)?
      initState;

  @override
  _ProfileDataFormBuilderState createState() => _ProfileDataFormBuilderState();
}

class _ProfileDataFormBuilderState extends State<ProfileDataFormBuilder> {
  late ProfileDataForm _formModel;

  @override
  void initState() {
    _formModel =
        ProfileDataForm(ProfileDataForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfileDataFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ProfileDataForm(ProfileDataForm.formElements(widget.model), null);

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
    return ReactiveProfileDataForm(
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

class ProfileDataForm implements FormModel<ProfileData> {
  ProfileDataForm(
    this.form,
    this.path,
  );

  static const String levelOfStudyControlName = "levelOfStudy";

  static const String ocupationControlName = "ocupation";

  final FormGroup form;

  final String? path;

  String levelOfStudyControlPath() => pathBuilder(levelOfStudyControlName);

  String ocupationControlPath() => pathBuilder(ocupationControlName);

  String get _levelOfStudyValue => levelOfStudyControl.value as String;

  String get _ocupationValue => ocupationControl.value as String;

  bool get containsLevelOfStudy {
    try {
      form.control(levelOfStudyControlPath());
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

  Object? get levelOfStudyErrors => levelOfStudyControl.errors;

  Object? get ocupationErrors => ocupationControl.errors;

  void get levelOfStudyFocus => form.focus(levelOfStudyControlPath());

  void get ocupationFocus => form.focus(ocupationControlPath());

  void levelOfStudyValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    levelOfStudyControl.updateValue(value,
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

  void levelOfStudyValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    levelOfStudyControl.patchValue(value,
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

  void levelOfStudyValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      levelOfStudyControl.reset(
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

  FormControl<String> get levelOfStudyControl =>
      form.control(levelOfStudyControlPath()) as FormControl<String>;

  FormControl<String> get ocupationControl =>
      form.control(ocupationControlPath()) as FormControl<String>;

  void levelOfStudySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      levelOfStudyControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      levelOfStudyControl.markAsEnabled(
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

  @override
  ProfileData get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ProfileDataForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ProfileData(
        levelOfStudy: _levelOfStudyValue, ocupation: _ocupationValue);
  }

  @override
  void submit({
    required void Function(ProfileData model) onValid,
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
    ProfileData value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProfileDataForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ProfileData? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ProfileData? profileData) => FormGroup({
        levelOfStudyControlName: FormControl<String>(
            value: profileData?.levelOfStudy,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        ocupationControlName: FormControl<String>(
            value: profileData?.ocupation,
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

class ReactiveProfileDataFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveProfileDataFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ProfileDataForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProfileDataForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ProfileDataForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileDataForm.of(context);

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

class ReactiveProfileDataFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveProfileDataFormFormGroupArrayBuilder({
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
      ProfileDataForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProfileDataForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ProfileDataForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileDataForm.of(context);

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
