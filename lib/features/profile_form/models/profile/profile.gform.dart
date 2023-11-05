// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'profile.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProfileFormConsumer extends StatelessWidget {
  const ReactiveProfileFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ProfileForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

    if (formModel is! ProfileForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProfileFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ProfileFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProfileForm form;
}

class ReactiveProfileForm extends StatelessWidget {
  const ReactiveProfileForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ProfileForm form;

  final WillPopCallback? onWillPop;

  static ProfileForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<ProfileFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProfileFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProfileFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProfileFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ProfileFormBuilder extends StatefulWidget {
  const ProfileFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Profile? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ProfileForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ProfileForm formModel)? initState;

  @override
  _ProfileFormBuilderState createState() => _ProfileFormBuilderState();
}

class _ProfileFormBuilderState extends State<ProfileFormBuilder> {
  late ProfileForm _formModel;

  @override
  void initState() {
    _formModel = ProfileForm(ProfileForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfileFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ProfileForm(ProfileForm.formElements(widget.model), null);

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
    return ReactiveProfileForm(
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

class ProfileForm implements FormModel<Profile> {
  ProfileForm(
    this.form,
    this.path,
  );

  static const String companyDataControlName = "companyData";

  static const String companyDetailControlName = "companyDetail";

  static const String addressControlName = "address";

  static const String identityDataControlName = "identityData";

  static const String profileDataControlName = "profileData";

  static const String workDayDataControlName = "workDayData";

  static const String paymentMethodControlName = "paymentMethod";

  static const String phoneNumberControlName = "phoneNumber";

  final FormGroup form;

  final String? path;

  String companyDataControlPath() => pathBuilder(companyDataControlName);

  String companyDetailControlPath() => pathBuilder(companyDetailControlName);

  String addressControlPath() => pathBuilder(addressControlName);

  String identityDataControlPath() => pathBuilder(identityDataControlName);

  String profileDataControlPath() => pathBuilder(profileDataControlName);

  String workDayDataControlPath() => pathBuilder(workDayDataControlName);

  String paymentMethodControlPath() => pathBuilder(paymentMethodControlName);

  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);

  CompanyData? get _companyDataValue => companyDataForm.model;

  CompanyDetail? get _companyDetailValue => companyDetailForm.model;

  Address? get _addressValue => addressForm.model;

  IdentityData? get _identityDataValue => identityDataForm.model;

  ProfileData? get _profileDataValue => profileDataForm.model;

  WorkDayData? get _workDayDataValue => workDayDataForm.model;

  PaymentMethod? get _paymentMethodValue => paymentMethodForm.model;

  PhoneNumberData? get _phoneNumberValue => phoneNumberForm.model;

  bool get containsCompanyData {
    try {
      form.control(companyDataControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCompanyDetail {
    try {
      form.control(companyDetailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIdentityData {
    try {
      form.control(identityDataControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsProfileData {
    try {
      form.control(profileDataControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsWorkDayData {
    try {
      form.control(workDayDataControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPaymentMethod {
    try {
      form.control(paymentMethodControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPhoneNumber {
    try {
      form.control(phoneNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get companyDataErrors => companyDataControl?.errors;

  Object? get companyDetailErrors => companyDetailControl?.errors;

  Object? get addressErrors => addressControl?.errors;

  Object? get identityDataErrors => identityDataControl?.errors;

  Object? get profileDataErrors => profileDataControl?.errors;

  Object? get workDayDataErrors => workDayDataControl?.errors;

  Object? get paymentMethodErrors => paymentMethodControl?.errors;

  Object? get phoneNumberErrors => phoneNumberControl?.errors;

  void get companyDataFocus => form.focus(companyDataControlPath());

  void get companyDetailFocus => form.focus(companyDetailControlPath());

  void get addressFocus => form.focus(addressControlPath());

  void get identityDataFocus => form.focus(identityDataControlPath());

  void get profileDataFocus => form.focus(profileDataControlPath());

  void get workDayDataFocus => form.focus(workDayDataControlPath());

  void get paymentMethodFocus => form.focus(paymentMethodControlPath());

  void get phoneNumberFocus => form.focus(phoneNumberControlPath());

  void companyDataRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCompanyData) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          companyDataControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            companyDataControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void companyDetailRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCompanyDetail) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          companyDetailControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            companyDetailControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void addressRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAddress) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          addressControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            addressControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void identityDataRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIdentityData) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          identityDataControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            identityDataControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void profileDataRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsProfileData) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          profileDataControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            profileDataControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void workDayDataRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsWorkDayData) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          workDayDataControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            workDayDataControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void paymentMethodRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPaymentMethod) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          paymentMethodControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            paymentMethodControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void phoneNumberRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPhoneNumber) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          phoneNumberControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            phoneNumberControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void companyDataValueUpdate(
    CompanyData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyDataControl?.updateValue(
        CompanyDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void companyDetailValueUpdate(
    CompanyDetail? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyDetailControl?.updateValue(
        CompanyDetailForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void addressValueUpdate(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identityDataValueUpdate(
    IdentityData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identityDataControl?.updateValue(
        IdentityDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void profileDataValueUpdate(
    ProfileData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    profileDataControl?.updateValue(
        ProfileDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void workDayDataValueUpdate(
    WorkDayData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    workDayDataControl?.updateValue(
        WorkDayDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void paymentMethodValueUpdate(
    PaymentMethod? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentMethodControl?.updateValue(
        PaymentMethodForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void phoneNumberValueUpdate(
    PhoneNumberData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl?.updateValue(
        PhoneNumberDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void companyDataValuePatch(
    CompanyData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyDataControl?.updateValue(
        CompanyDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void companyDetailValuePatch(
    CompanyDetail? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyDetailControl?.updateValue(
        CompanyDetailForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void addressValuePatch(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identityDataValuePatch(
    IdentityData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identityDataControl?.updateValue(
        IdentityDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void profileDataValuePatch(
    ProfileData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    profileDataControl?.updateValue(
        ProfileDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void workDayDataValuePatch(
    WorkDayData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    workDayDataControl?.updateValue(
        WorkDayDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void paymentMethodValuePatch(
    PaymentMethod? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentMethodControl?.updateValue(
        PaymentMethodForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void phoneNumberValuePatch(
    PhoneNumberData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl?.updateValue(
        PhoneNumberDataForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void companyDataValueReset(
    CompanyData? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      companyDataControl?.reset(
          value: CompanyDataForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void companyDetailValueReset(
    CompanyDetail? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      companyDetailControl?.reset(
          value: CompanyDetailForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void addressValueReset(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl?.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void identityDataValueReset(
    IdentityData? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      identityDataControl?.reset(
          value: IdentityDataForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void profileDataValueReset(
    ProfileData? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      profileDataControl?.reset(
          value: ProfileDataForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void workDayDataValueReset(
    WorkDayData? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      workDayDataControl?.reset(
          value: WorkDayDataForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void paymentMethodValueReset(
    PaymentMethod? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      paymentMethodControl?.reset(
          value: PaymentMethodForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void phoneNumberValueReset(
    PhoneNumberData? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneNumberControl?.reset(
          value: PhoneNumberDataForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormGroup? get companyDataControl => containsCompanyData
      ? form.control(companyDataControlPath()) as FormGroup?
      : null;

  FormGroup? get companyDetailControl => containsCompanyDetail
      ? form.control(companyDetailControlPath()) as FormGroup?
      : null;

  FormGroup? get addressControl =>
      containsAddress ? form.control(addressControlPath()) as FormGroup? : null;

  FormGroup? get identityDataControl => containsIdentityData
      ? form.control(identityDataControlPath()) as FormGroup?
      : null;

  FormGroup? get profileDataControl => containsProfileData
      ? form.control(profileDataControlPath()) as FormGroup?
      : null;

  FormGroup? get workDayDataControl => containsWorkDayData
      ? form.control(workDayDataControlPath()) as FormGroup?
      : null;

  FormGroup? get paymentMethodControl => containsPaymentMethod
      ? form.control(paymentMethodControlPath()) as FormGroup?
      : null;

  FormGroup? get phoneNumberControl => containsPhoneNumber
      ? form.control(phoneNumberControlPath()) as FormGroup?
      : null;

  CompanyDataForm get companyDataForm =>
      CompanyDataForm(form, pathBuilder('companyData'));

  CompanyDetailForm get companyDetailForm =>
      CompanyDetailForm(form, pathBuilder('companyDetail'));

  AddressForm get addressForm => AddressForm(form, pathBuilder('address'));

  IdentityDataForm get identityDataForm =>
      IdentityDataForm(form, pathBuilder('identityData'));

  ProfileDataForm get profileDataForm =>
      ProfileDataForm(form, pathBuilder('profileData'));

  WorkDayDataForm get workDayDataForm =>
      WorkDayDataForm(form, pathBuilder('workDayData'));

  PaymentMethodForm get paymentMethodForm =>
      PaymentMethodForm(form, pathBuilder('paymentMethod'));

  PhoneNumberDataForm get phoneNumberForm =>
      PhoneNumberDataForm(form, pathBuilder('phoneNumber'));

  void companyDataSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      companyDataControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      companyDataControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void companyDetailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      companyDetailControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      companyDetailControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void identityDataSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      identityDataControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      identityDataControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void profileDataSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      profileDataControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      profileDataControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void workDayDataSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      workDayDataControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      workDayDataControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void paymentMethodSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      paymentMethodControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      paymentMethodControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phoneNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneNumberControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneNumberControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Profile get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ProfileForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Profile(
        companyData: _companyDataValue,
        companyDetail: _companyDetailValue,
        address: _addressValue,
        identityData: _identityDataValue,
        profileData: _profileDataValue,
        workDayData: _workDayDataValue,
        paymentMethod: _paymentMethodValue,
        phoneNumber: _phoneNumberValue);
  }

  @override
  void submit({
    required void Function(Profile model) onValid,
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
    Profile value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProfileForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Profile? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Profile? profile) => FormGroup({
        companyDataControlName:
            CompanyDataForm.formElements(profile?.companyData),
        companyDetailControlName:
            CompanyDetailForm.formElements(profile?.companyDetail),
        addressControlName: AddressForm.formElements(profile?.address),
        identityDataControlName:
            IdentityDataForm.formElements(profile?.identityData),
        profileDataControlName:
            ProfileDataForm.formElements(profile?.profileData),
        workDayDataControlName:
            WorkDayDataForm.formElements(profile?.workDayData),
        paymentMethodControlName:
            PaymentMethodForm.formElements(profile?.paymentMethod),
        phoneNumberControlName:
            PhoneNumberDataForm.formElements(profile?.phoneNumber)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class CompanyDataForm implements FormModel<CompanyData> {
  CompanyDataForm(
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
  CompanyData get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CompanyDataForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CompanyData(company: _companyValue);
  }

  @override
  void submit({
    required void Function(CompanyData model) onValid,
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
    CompanyData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CompanyDataForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    CompanyData? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(CompanyData? companyData) => FormGroup({
        companyControlName: FormControl<String>(
            value: companyData?.company,
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

class CompanyDetailForm implements FormModel<CompanyDetail> {
  CompanyDetailForm(
    this.form,
    this.path,
  );

  static const String industryControlName = "industry";

  static const String descriptionControlName = "description";

  static const String titleControlName = "title";

  static const String occupationControlName = "occupation";

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

  String occupationControlPath() => pathBuilder(occupationControlName);

  String specializationControlPath() => pathBuilder(specializationControlName);

  String statingAtControlPath() => pathBuilder(statingAtControlName);

  String endingAtControlPath() => pathBuilder(endingAtControlName);

  String paymentForHourControlPath() => pathBuilder(paymentForHourControlName);

  String hoursRequiredControlPath() => pathBuilder(hoursRequiredControlName);

  String get _industryValue => industryControl.value as String;

  String get _descriptionValue => descriptionControl.value as String;

  String get _titleValue => titleControl.value as String;

  String get _occupationValue => occupationControl.value as String;

  String get _specializationValue => specializationControl.value as String;

  DateTime get _statingAtValue => statingAtControl.value as DateTime;

  DateTime get _endingAtValue => endingAtControl.value as DateTime;

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

  bool get containsOccupation {
    try {
      form.control(occupationControlPath());
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

  Object? get occupationErrors => occupationControl.errors;

  Object? get specializationErrors => specializationControl.errors;

  Object? get statingAtErrors => statingAtControl.errors;

  Object? get endingAtErrors => endingAtControl.errors;

  Object? get paymentForHourErrors => paymentForHourControl.errors;

  Object? get hoursRequiredErrors => hoursRequiredControl.errors;

  void get industryFocus => form.focus(industryControlPath());

  void get descriptionFocus => form.focus(descriptionControlPath());

  void get titleFocus => form.focus(titleControlPath());

  void get occupationFocus => form.focus(occupationControlPath());

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

  void occupationValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    occupationControl.updateValue(value,
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
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    statingAtControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endingAtValueUpdate(
    DateTime value, {
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

  void occupationValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    occupationControl.patchValue(value,
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
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    statingAtControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endingAtValuePatch(
    DateTime value, {
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

  void occupationValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      occupationControl.reset(
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
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      statingAtControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void endingAtValueReset(
    DateTime value, {
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

  FormControl<String> get occupationControl =>
      form.control(occupationControlPath()) as FormControl<String>;

  FormControl<String> get specializationControl =>
      form.control(specializationControlPath()) as FormControl<String>;

  FormControl<DateTime> get statingAtControl =>
      form.control(statingAtControlPath()) as FormControl<DateTime>;

  FormControl<DateTime> get endingAtControl =>
      form.control(endingAtControlPath()) as FormControl<DateTime>;

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

  void occupationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      occupationControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      occupationControl.markAsEnabled(
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
        occupation: _occupationValue,
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
    CompanyDetail? value, {
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
        occupationControlName: FormControl<String>(
            value: companyDetail?.occupation,
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
        statingAtControlName: FormControl<DateTime>(
            value: companyDetail?.statingAt,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        endingAtControlName: FormControl<DateTime>(
            value: companyDetail?.endingAt,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        paymentForHourControlName: FormControl<String>(
            value: companyDetail?.paymentForHour,
            validators: [RequiredValidator(), NumberValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        hoursRequiredControlName: FormControl<String>(
            value: companyDetail?.hoursRequired,
            validators: [RequiredValidator(), NumberValidator()],
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

class AddressForm implements FormModel<Address> {
  AddressForm(
    this.form,
    this.path,
  );

  static const String addressControlName = "address";

  final FormGroup form;

  final String? path;

  String addressControlPath() => pathBuilder(addressControlName);

  String get _addressValue => addressControl.value as String;

  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get addressErrors => addressControl.errors;

  void get addressFocus => form.focus(addressControlPath());

  void addressValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get addressControl =>
      form.control(addressControlPath()) as FormControl<String>;

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Address get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'AddressForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Address(address: _addressValue);
  }

  @override
  void submit({
    required void Function(Address model) onValid,
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
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddressForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Address? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Address? address) => FormGroup({
        addressControlName: FormControl<String>(
            value: address?.address,
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

  DateTime get _documentIssueDateValue =>
      documentIssueDateControl.value as DateTime;

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
    DateTime value, {
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
    DateTime value, {
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
    DateTime value, {
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

  FormControl<DateTime> get documentIssueDateControl =>
      form.control(documentIssueDateControlPath()) as FormControl<DateTime>;

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
    IdentityData? value, {
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
            validators: [RequiredValidator(), NumberValidator()],
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
        documentIssueDateControlName: FormControl<DateTime>(
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

class ProfileDataForm implements FormModel<ProfileData> {
  ProfileDataForm(
    this.form,
    this.path,
  );

  static const String levelOfStudyControlName = "levelOfStudy";

  static const String occupationControlName = "occupation";

  final FormGroup form;

  final String? path;

  String levelOfStudyControlPath() => pathBuilder(levelOfStudyControlName);

  String occupationControlPath() => pathBuilder(occupationControlName);

  String get _levelOfStudyValue => levelOfStudyControl.value as String;

  String get _occupationValue => occupationControl.value as String;

  bool get containsLevelOfStudy {
    try {
      form.control(levelOfStudyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOccupation {
    try {
      form.control(occupationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get levelOfStudyErrors => levelOfStudyControl.errors;

  Object? get occupationErrors => occupationControl.errors;

  void get levelOfStudyFocus => form.focus(levelOfStudyControlPath());

  void get occupationFocus => form.focus(occupationControlPath());

  void levelOfStudyValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    levelOfStudyControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void occupationValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    occupationControl.updateValue(value,
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

  void occupationValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    occupationControl.patchValue(value,
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

  void occupationValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      occupationControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get levelOfStudyControl =>
      form.control(levelOfStudyControlPath()) as FormControl<String>;

  FormControl<String> get occupationControl =>
      form.control(occupationControlPath()) as FormControl<String>;

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

  void occupationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      occupationControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      occupationControl.markAsEnabled(
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
        levelOfStudy: _levelOfStudyValue, occupation: _occupationValue);
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
    ProfileData? value, {
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
        occupationControlName: FormControl<String>(
            value: profileData?.occupation,
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

class WorkDayDataForm implements FormModel<WorkDayData> {
  WorkDayDataForm(
    this.form,
    this.path,
  );

  static const String capacityControlName = "capacity";

  static const String availableDaysControlName = "availableDays";

  final FormGroup form;

  final String? path;

  String capacityControlPath() => pathBuilder(capacityControlName);

  String availableDaysControlPath() => pathBuilder(availableDaysControlName);

  String get _capacityValue => capacityControl.value as String;

  List<String> get _availableDaysValue =>
      availableDaysControl.value as List<String>;

  bool get containsCapacity {
    try {
      form.control(capacityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAvailableDays {
    try {
      form.control(availableDaysControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get capacityErrors => capacityControl.errors;

  Object? get availableDaysErrors => availableDaysControl.errors;

  void get capacityFocus => form.focus(capacityControlPath());

  void get availableDaysFocus => form.focus(availableDaysControlPath());

  void capacityValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    capacityControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void availableDaysValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    availableDaysControl.updateValue(value,
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

  void availableDaysValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    availableDaysControl.patchValue(value,
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

  void availableDaysValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      availableDaysControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get capacityControl =>
      form.control(capacityControlPath()) as FormControl<String>;

  FormControl<List<String>> get availableDaysControl =>
      form.control(availableDaysControlPath()) as FormControl<List<String>>;

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

  void availableDaysSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      availableDaysControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      availableDaysControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  WorkDayData get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'WorkDayDataForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return WorkDayData(
        capacity: _capacityValue, availableDays: _availableDaysValue);
  }

  @override
  void submit({
    required void Function(WorkDayData model) onValid,
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
    WorkDayData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(WorkDayDataForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    WorkDayData? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(WorkDayData? workDayData) => FormGroup({
        capacityControlName: FormControl<String>(
            value: workDayData?.capacity,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        availableDaysControlName: FormControl<List<String>>(
            value: workDayData?.availableDays,
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
    PaymentMethod? value, {
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

class PhoneNumberDataForm implements FormModel<PhoneNumberData> {
  PhoneNumberDataForm(
    this.form,
    this.path,
  );

  static const String phoneNumberControlName = "phoneNumber";

  final FormGroup form;

  final String? path;

  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);

  PhoneNumber get _phoneNumberValue => phoneNumberControl.value as PhoneNumber;

  bool get containsPhoneNumber {
    try {
      form.control(phoneNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get phoneNumberErrors => phoneNumberControl.errors;

  void get phoneNumberFocus => form.focus(phoneNumberControlPath());

  void phoneNumberValueUpdate(
    PhoneNumber value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValuePatch(
    PhoneNumber value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValueReset(
    PhoneNumber value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<PhoneNumber> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<PhoneNumber>;

  void phoneNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PhoneNumberData get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'PhoneNumberDataForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PhoneNumberData(phoneNumber: _phoneNumberValue);
  }

  @override
  void submit({
    required void Function(PhoneNumberData model) onValid,
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
    PhoneNumberData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PhoneNumberDataForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PhoneNumberData? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PhoneNumberData? phoneNumberData) => FormGroup({
        phoneNumberControlName: FormControl<PhoneNumber>(
            value: phoneNumberData?.phoneNumber,
            validators: [RequiredPhoneValidator(), ValidPhoneValidator()],
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

class ReactiveProfileFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveProfileFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ProfileForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, ProfileForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

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

class ReactiveProfileFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveProfileFormFormGroupArrayBuilder({
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
      ProfileForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, ProfileForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

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
