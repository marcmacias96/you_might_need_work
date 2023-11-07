// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_type')
  @DocumentTypeConverter()
  DocumentType? get documentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_number')
  String? get documentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_password')
  String? get rawPassword => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'player_id')
  String? get playerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  @UserTypeConverter()
  UserType? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupation_title')
  String? get occupationTitle => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_boarding')
  Onboarding get onboarding => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_phone_validated')
  @JsonKey(includeIfNull: false)
  bool get isPhoneValidated => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  @JsonKey(includeIfNull: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get feedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_capacity')
  @JsonKey(includeIfNull: false)
  int? get defaultCapacity => throw _privateConstructorUsedError;
  @AvailableDaysConverter()
  @JsonKey(includeIfNull: false, name: 'available_days')
  List<AvailableDays>? get availableDays => throw _privateConstructorUsedError;
  @RegistrationProviderConverter()
  @JsonKey(includeIfNull: false, name: 'registration_provider')
  RegistrationProvider? get registrationProvider =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<int>? get industries => throw _privateConstructorUsedError;
  @EducationLevelConverter()
  @JsonKey(includeIfNull: false, name: 'education_level')
  EducationLevel? get educationLevel => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get latitude => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get longitude => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'document_issue_date')
  DateTime? get documentIssueDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_document_validated')
  bool? get isDocumentValidated => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
  bool? get isBasicInfoSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
  bool? get isWorkScheduleSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
  bool? get isAddressSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
  bool? get isBankAccountSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'document_type')
      @DocumentTypeConverter()
      DocumentType? documentType,
      @JsonKey(name: 'document_number') String? documentNumber,
      @JsonKey(name: 'raw_password') String? rawPassword,
      String? phone,
      @JsonKey(name: 'player_id') String? playerId,
      @JsonKey(name: 'user_type') @UserTypeConverter() UserType? userType,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'occupation_title') String? occupationTitle,
      String? address,
      @JsonKey(name: 'on_boarding') Onboarding onboarding,
      @JsonKey(name: 'is_phone_validated')
      @JsonKey(includeIfNull: false)
      bool isPhoneValidated,
      @JsonKey(name: 'is_active') @JsonKey(includeIfNull: false) bool? isActive,
      @JsonKey(includeIfNull: false) String? feedback,
      @JsonKey(name: 'default_capacity')
      @JsonKey(includeIfNull: false)
      int? defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false, name: 'available_days')
      List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false, name: 'registration_provider')
      RegistrationProvider? registrationProvider,
      @JsonKey(includeIfNull: false) List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false, name: 'education_level')
      EducationLevel? educationLevel,
      @JsonKey(includeIfNull: false) int? latitude,
      @JsonKey(includeIfNull: false) int? longitude,
      @JsonKey(includeIfNull: false, name: 'document_issue_date')
      DateTime? documentIssueDate,
      @JsonKey(includeIfNull: false, name: 'is_document_validated')
      bool? isDocumentValidated,
      @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
      bool? isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
      bool? isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
      bool? isAddressSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
      bool? isBankAccountSetupCompleted,
      @JsonKey(includeIfNull: false) String? id});

  $OnboardingCopyWith<$Res> get onboarding;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? documentType = freezed,
    Object? documentNumber = freezed,
    Object? rawPassword = freezed,
    Object? phone = freezed,
    Object? playerId = freezed,
    Object? userType = freezed,
    Object? displayName = freezed,
    Object? occupationTitle = freezed,
    Object? address = freezed,
    Object? onboarding = null,
    Object? isPhoneValidated = null,
    Object? isActive = freezed,
    Object? feedback = freezed,
    Object? defaultCapacity = freezed,
    Object? availableDays = freezed,
    Object? registrationProvider = freezed,
    Object? industries = freezed,
    Object? educationLevel = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? documentIssueDate = freezed,
    Object? isDocumentValidated = freezed,
    Object? isBasicInfoSetupCompleted = freezed,
    Object? isWorkScheduleSetupCompleted = freezed,
    Object? isAddressSetupCompleted = freezed,
    Object? isBankAccountSetupCompleted = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as DocumentType?,
      documentNumber: freezed == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPassword: freezed == rawPassword
          ? _value.rawPassword
          : rawPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      occupationTitle: freezed == occupationTitle
          ? _value.occupationTitle
          : occupationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarding: null == onboarding
          ? _value.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as Onboarding,
      isPhoneValidated: null == isPhoneValidated
          ? _value.isPhoneValidated
          : isPhoneValidated // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultCapacity: freezed == defaultCapacity
          ? _value.defaultCapacity
          : defaultCapacity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableDays: freezed == availableDays
          ? _value.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<AvailableDays>?,
      registrationProvider: freezed == registrationProvider
          ? _value.registrationProvider
          : registrationProvider // ignore: cast_nullable_to_non_nullable
              as RegistrationProvider?,
      industries: freezed == industries
          ? _value.industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as EducationLevel?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      documentIssueDate: freezed == documentIssueDate
          ? _value.documentIssueDate
          : documentIssueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDocumentValidated: freezed == isDocumentValidated
          ? _value.isDocumentValidated
          : isDocumentValidated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBasicInfoSetupCompleted: freezed == isBasicInfoSetupCompleted
          ? _value.isBasicInfoSetupCompleted
          : isBasicInfoSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isWorkScheduleSetupCompleted: freezed == isWorkScheduleSetupCompleted
          ? _value.isWorkScheduleSetupCompleted
          : isWorkScheduleSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddressSetupCompleted: freezed == isAddressSetupCompleted
          ? _value.isAddressSetupCompleted
          : isAddressSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBankAccountSetupCompleted: freezed == isBankAccountSetupCompleted
          ? _value.isBankAccountSetupCompleted
          : isBankAccountSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OnboardingCopyWith<$Res> get onboarding {
    return $OnboardingCopyWith<$Res>(_value.onboarding, (value) {
      return _then(_value.copyWith(onboarding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'document_type')
      @DocumentTypeConverter()
      DocumentType? documentType,
      @JsonKey(name: 'document_number') String? documentNumber,
      @JsonKey(name: 'raw_password') String? rawPassword,
      String? phone,
      @JsonKey(name: 'player_id') String? playerId,
      @JsonKey(name: 'user_type') @UserTypeConverter() UserType? userType,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'occupation_title') String? occupationTitle,
      String? address,
      @JsonKey(name: 'on_boarding') Onboarding onboarding,
      @JsonKey(name: 'is_phone_validated')
      @JsonKey(includeIfNull: false)
      bool isPhoneValidated,
      @JsonKey(name: 'is_active') @JsonKey(includeIfNull: false) bool? isActive,
      @JsonKey(includeIfNull: false) String? feedback,
      @JsonKey(name: 'default_capacity')
      @JsonKey(includeIfNull: false)
      int? defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false, name: 'available_days')
      List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false, name: 'registration_provider')
      RegistrationProvider? registrationProvider,
      @JsonKey(includeIfNull: false) List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false, name: 'education_level')
      EducationLevel? educationLevel,
      @JsonKey(includeIfNull: false) int? latitude,
      @JsonKey(includeIfNull: false) int? longitude,
      @JsonKey(includeIfNull: false, name: 'document_issue_date')
      DateTime? documentIssueDate,
      @JsonKey(includeIfNull: false, name: 'is_document_validated')
      bool? isDocumentValidated,
      @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
      bool? isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
      bool? isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
      bool? isAddressSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
      bool? isBankAccountSetupCompleted,
      @JsonKey(includeIfNull: false) String? id});

  @override
  $OnboardingCopyWith<$Res> get onboarding;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? documentType = freezed,
    Object? documentNumber = freezed,
    Object? rawPassword = freezed,
    Object? phone = freezed,
    Object? playerId = freezed,
    Object? userType = freezed,
    Object? displayName = freezed,
    Object? occupationTitle = freezed,
    Object? address = freezed,
    Object? onboarding = null,
    Object? isPhoneValidated = null,
    Object? isActive = freezed,
    Object? feedback = freezed,
    Object? defaultCapacity = freezed,
    Object? availableDays = freezed,
    Object? registrationProvider = freezed,
    Object? industries = freezed,
    Object? educationLevel = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? documentIssueDate = freezed,
    Object? isDocumentValidated = freezed,
    Object? isBasicInfoSetupCompleted = freezed,
    Object? isWorkScheduleSetupCompleted = freezed,
    Object? isAddressSetupCompleted = freezed,
    Object? isBankAccountSetupCompleted = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ProfileImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as DocumentType?,
      documentNumber: freezed == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPassword: freezed == rawPassword
          ? _value.rawPassword
          : rawPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      playerId: freezed == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      occupationTitle: freezed == occupationTitle
          ? _value.occupationTitle
          : occupationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarding: null == onboarding
          ? _value.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as Onboarding,
      isPhoneValidated: null == isPhoneValidated
          ? _value.isPhoneValidated
          : isPhoneValidated // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultCapacity: freezed == defaultCapacity
          ? _value.defaultCapacity
          : defaultCapacity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableDays: freezed == availableDays
          ? _value._availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<AvailableDays>?,
      registrationProvider: freezed == registrationProvider
          ? _value.registrationProvider
          : registrationProvider // ignore: cast_nullable_to_non_nullable
              as RegistrationProvider?,
      industries: freezed == industries
          ? _value._industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as EducationLevel?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      documentIssueDate: freezed == documentIssueDate
          ? _value.documentIssueDate
          : documentIssueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDocumentValidated: freezed == isDocumentValidated
          ? _value.isDocumentValidated
          : isDocumentValidated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBasicInfoSetupCompleted: freezed == isBasicInfoSetupCompleted
          ? _value.isBasicInfoSetupCompleted
          : isBasicInfoSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isWorkScheduleSetupCompleted: freezed == isWorkScheduleSetupCompleted
          ? _value.isWorkScheduleSetupCompleted
          : isWorkScheduleSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddressSetupCompleted: freezed == isAddressSetupCompleted
          ? _value.isAddressSetupCompleted
          : isAddressSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBankAccountSetupCompleted: freezed == isBankAccountSetupCompleted
          ? _value.isBankAccountSetupCompleted
          : isBankAccountSetupCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  _$ProfileImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'document_type')
      @DocumentTypeConverter()
      required this.documentType,
      @JsonKey(name: 'document_number') required this.documentNumber,
      @JsonKey(name: 'raw_password') required this.rawPassword,
      required this.phone,
      @JsonKey(name: 'player_id') required this.playerId,
      @JsonKey(name: 'user_type') @UserTypeConverter() required this.userType,
      @JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'occupation_title') required this.occupationTitle,
      required this.address,
      @JsonKey(name: 'on_boarding') required this.onboarding,
      @JsonKey(name: 'is_phone_validated')
      @JsonKey(includeIfNull: false)
      required this.isPhoneValidated,
      @JsonKey(name: 'is_active') @JsonKey(includeIfNull: false) this.isActive,
      @JsonKey(includeIfNull: false) this.feedback,
      @JsonKey(name: 'default_capacity')
      @JsonKey(includeIfNull: false)
      this.defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false, name: 'available_days')
      final List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false, name: 'registration_provider')
      this.registrationProvider,
      @JsonKey(includeIfNull: false) final List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false, name: 'education_level')
      this.educationLevel,
      @JsonKey(includeIfNull: false) this.latitude,
      @JsonKey(includeIfNull: false) this.longitude,
      @JsonKey(includeIfNull: false, name: 'document_issue_date')
      this.documentIssueDate,
      @JsonKey(includeIfNull: false, name: 'is_document_validated')
      this.isDocumentValidated,
      @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
      this.isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
      this.isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
      this.isAddressSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
      this.isBankAccountSetupCompleted,
      @JsonKey(includeIfNull: false) this.id})
      : _availableDays = availableDays,
        _industries = industries;

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'document_type')
  @DocumentTypeConverter()
  final DocumentType? documentType;
  @override
  @JsonKey(name: 'document_number')
  final String? documentNumber;
  @override
  @JsonKey(name: 'raw_password')
  final String? rawPassword;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'player_id')
  final String? playerId;
  @override
  @JsonKey(name: 'user_type')
  @UserTypeConverter()
  final UserType? userType;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'occupation_title')
  final String? occupationTitle;
  @override
  final String? address;
  @override
  @JsonKey(name: 'on_boarding')
  final Onboarding onboarding;
  @override
  @JsonKey(name: 'is_phone_validated')
  @JsonKey(includeIfNull: false)
  final bool isPhoneValidated;
  @override
  @JsonKey(name: 'is_active')
  @JsonKey(includeIfNull: false)
  final bool? isActive;
  @override
  @JsonKey(includeIfNull: false)
  final String? feedback;
  @override
  @JsonKey(name: 'default_capacity')
  @JsonKey(includeIfNull: false)
  final int? defaultCapacity;
  final List<AvailableDays>? _availableDays;
  @override
  @AvailableDaysConverter()
  @JsonKey(includeIfNull: false, name: 'available_days')
  List<AvailableDays>? get availableDays {
    final value = _availableDays;
    if (value == null) return null;
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @RegistrationProviderConverter()
  @JsonKey(includeIfNull: false, name: 'registration_provider')
  final RegistrationProvider? registrationProvider;
  final List<int>? _industries;
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get industries {
    final value = _industries;
    if (value == null) return null;
    if (_industries is EqualUnmodifiableListView) return _industries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @EducationLevelConverter()
  @JsonKey(includeIfNull: false, name: 'education_level')
  final EducationLevel? educationLevel;
  @override
  @JsonKey(includeIfNull: false)
  final int? latitude;
  @override
  @JsonKey(includeIfNull: false)
  final int? longitude;
  @override
  @JsonKey(includeIfNull: false, name: 'document_issue_date')
  final DateTime? documentIssueDate;
  @override
  @JsonKey(includeIfNull: false, name: 'is_document_validated')
  final bool? isDocumentValidated;
  @override
  @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
  final bool? isBasicInfoSetupCompleted;
  @override
  @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
  final bool? isWorkScheduleSetupCompleted;
  @override
  @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
  final bool? isAddressSetupCompleted;
  @override
  @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
  final bool? isBankAccountSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  final String? id;

  @override
  String toString() {
    return 'Profile(firstName: $firstName, lastName: $lastName, documentType: $documentType, documentNumber: $documentNumber, rawPassword: $rawPassword, phone: $phone, playerId: $playerId, userType: $userType, displayName: $displayName, occupationTitle: $occupationTitle, address: $address, onboarding: $onboarding, isPhoneValidated: $isPhoneValidated, isActive: $isActive, feedback: $feedback, defaultCapacity: $defaultCapacity, availableDays: $availableDays, registrationProvider: $registrationProvider, industries: $industries, educationLevel: $educationLevel, latitude: $latitude, longitude: $longitude, documentIssueDate: $documentIssueDate, isDocumentValidated: $isDocumentValidated, isBasicInfoSetupCompleted: $isBasicInfoSetupCompleted, isWorkScheduleSetupCompleted: $isWorkScheduleSetupCompleted, isAddressSetupCompleted: $isAddressSetupCompleted, isBankAccountSetupCompleted: $isBankAccountSetupCompleted, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.rawPassword, rawPassword) ||
                other.rawPassword == rawPassword) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.occupationTitle, occupationTitle) ||
                other.occupationTitle == occupationTitle) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onboarding, onboarding) ||
                other.onboarding == onboarding) &&
            (identical(other.isPhoneValidated, isPhoneValidated) ||
                other.isPhoneValidated == isPhoneValidated) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.defaultCapacity, defaultCapacity) ||
                other.defaultCapacity == defaultCapacity) &&
            const DeepCollectionEquality()
                .equals(other._availableDays, _availableDays) &&
            (identical(other.registrationProvider, registrationProvider) ||
                other.registrationProvider == registrationProvider) &&
            const DeepCollectionEquality()
                .equals(other._industries, _industries) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.documentIssueDate, documentIssueDate) ||
                other.documentIssueDate == documentIssueDate) &&
            (identical(other.isDocumentValidated, isDocumentValidated) ||
                other.isDocumentValidated == isDocumentValidated) &&
            (identical(other.isBasicInfoSetupCompleted,
                    isBasicInfoSetupCompleted) ||
                other.isBasicInfoSetupCompleted == isBasicInfoSetupCompleted) &&
            (identical(other.isWorkScheduleSetupCompleted,
                    isWorkScheduleSetupCompleted) ||
                other.isWorkScheduleSetupCompleted ==
                    isWorkScheduleSetupCompleted) &&
            (identical(
                    other.isAddressSetupCompleted, isAddressSetupCompleted) ||
                other.isAddressSetupCompleted == isAddressSetupCompleted) &&
            (identical(other.isBankAccountSetupCompleted,
                    isBankAccountSetupCompleted) ||
                other.isBankAccountSetupCompleted ==
                    isBankAccountSetupCompleted) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        firstName,
        lastName,
        documentType,
        documentNumber,
        rawPassword,
        phone,
        playerId,
        userType,
        displayName,
        occupationTitle,
        address,
        onboarding,
        isPhoneValidated,
        isActive,
        feedback,
        defaultCapacity,
        const DeepCollectionEquality().hash(_availableDays),
        registrationProvider,
        const DeepCollectionEquality().hash(_industries),
        educationLevel,
        latitude,
        longitude,
        documentIssueDate,
        isDocumentValidated,
        isBasicInfoSetupCompleted,
        isWorkScheduleSetupCompleted,
        isAddressSetupCompleted,
        isBankAccountSetupCompleted,
        id
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  factory _Profile(
      {@JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      @JsonKey(name: 'document_type')
      @DocumentTypeConverter()
      required final DocumentType? documentType,
      @JsonKey(name: 'document_number') required final String? documentNumber,
      @JsonKey(name: 'raw_password') required final String? rawPassword,
      required final String? phone,
      @JsonKey(name: 'player_id') required final String? playerId,
      @JsonKey(name: 'user_type')
      @UserTypeConverter()
      required final UserType? userType,
      @JsonKey(name: 'display_name') required final String? displayName,
      @JsonKey(name: 'occupation_title') required final String? occupationTitle,
      required final String? address,
      @JsonKey(name: 'on_boarding') required final Onboarding onboarding,
      @JsonKey(name: 'is_phone_validated')
      @JsonKey(includeIfNull: false)
      required final bool isPhoneValidated,
      @JsonKey(name: 'is_active')
      @JsonKey(includeIfNull: false)
      final bool? isActive,
      @JsonKey(includeIfNull: false) final String? feedback,
      @JsonKey(name: 'default_capacity')
      @JsonKey(includeIfNull: false)
      final int? defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false, name: 'available_days')
      final List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false, name: 'registration_provider')
      final RegistrationProvider? registrationProvider,
      @JsonKey(includeIfNull: false) final List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false, name: 'education_level')
      final EducationLevel? educationLevel,
      @JsonKey(includeIfNull: false) final int? latitude,
      @JsonKey(includeIfNull: false) final int? longitude,
      @JsonKey(includeIfNull: false, name: 'document_issue_date')
      final DateTime? documentIssueDate,
      @JsonKey(includeIfNull: false, name: 'is_document_validated')
      final bool? isDocumentValidated,
      @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
      final bool? isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
      final bool? isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
      final bool? isAddressSetupCompleted,
      @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
      final bool? isBankAccountSetupCompleted,
      @JsonKey(includeIfNull: false) final String? id}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'document_type')
  @DocumentTypeConverter()
  DocumentType? get documentType;
  @override
  @JsonKey(name: 'document_number')
  String? get documentNumber;
  @override
  @JsonKey(name: 'raw_password')
  String? get rawPassword;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'player_id')
  String? get playerId;
  @override
  @JsonKey(name: 'user_type')
  @UserTypeConverter()
  UserType? get userType;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'occupation_title')
  String? get occupationTitle;
  @override
  String? get address;
  @override
  @JsonKey(name: 'on_boarding')
  Onboarding get onboarding;
  @override
  @JsonKey(name: 'is_phone_validated')
  @JsonKey(includeIfNull: false)
  bool get isPhoneValidated;
  @override
  @JsonKey(name: 'is_active')
  @JsonKey(includeIfNull: false)
  bool? get isActive;
  @override
  @JsonKey(includeIfNull: false)
  String? get feedback;
  @override
  @JsonKey(name: 'default_capacity')
  @JsonKey(includeIfNull: false)
  int? get defaultCapacity;
  @override
  @AvailableDaysConverter()
  @JsonKey(includeIfNull: false, name: 'available_days')
  List<AvailableDays>? get availableDays;
  @override
  @RegistrationProviderConverter()
  @JsonKey(includeIfNull: false, name: 'registration_provider')
  RegistrationProvider? get registrationProvider;
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get industries;
  @override
  @EducationLevelConverter()
  @JsonKey(includeIfNull: false, name: 'education_level')
  EducationLevel? get educationLevel;
  @override
  @JsonKey(includeIfNull: false)
  int? get latitude;
  @override
  @JsonKey(includeIfNull: false)
  int? get longitude;
  @override
  @JsonKey(includeIfNull: false, name: 'document_issue_date')
  DateTime? get documentIssueDate;
  @override
  @JsonKey(includeIfNull: false, name: 'is_document_validated')
  bool? get isDocumentValidated;
  @override
  @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
  bool? get isBasicInfoSetupCompleted;
  @override
  @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
  bool? get isWorkScheduleSetupCompleted;
  @override
  @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
  bool? get isAddressSetupCompleted;
  @override
  @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
  bool? get isBankAccountSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
