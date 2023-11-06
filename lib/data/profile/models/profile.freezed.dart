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
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @DocumentTypeConverter()
  DocumentType get documentType => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  String get rawPassword => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get playerId => throw _privateConstructorUsedError;
  @UserTypeConverter()
  UserType get userType => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get occupationTitle => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isPhoneValidated => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get feedback => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get defaultCapacity => throw _privateConstructorUsedError;
  @AvailableDaysConverter()
  @JsonKey(includeIfNull: false)
  List<AvailableDays>? get availableDays => throw _privateConstructorUsedError;
  @RegistrationProviderConverter()
  @JsonKey(includeIfNull: false)
  RegistrationProvider? get registrationProvider =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<int>? get industries => throw _privateConstructorUsedError;
  @EducationLevelConverter()
  @JsonKey(includeIfNull: false)
  EducationLevel? get educationLevel => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get latitude => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get longitude => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get documentIssueDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isDocumentValidated => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isBasicInfoSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isWorkScheduleSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isAddressSetupCompleted => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isBankAccountSetupCompleted => throw _privateConstructorUsedError;

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
      {String firstName,
      String lastName,
      @DocumentTypeConverter() DocumentType documentType,
      String documentNumber,
      String rawPassword,
      String phone,
      String playerId,
      @UserTypeConverter() UserType userType,
      String displayName,
      String occupationTitle,
      String address,
      @JsonKey(includeIfNull: false) bool? isActive,
      @JsonKey(includeIfNull: false) bool? isPhoneValidated,
      @JsonKey(includeIfNull: false) String? feedback,
      @JsonKey(includeIfNull: false) int? defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false)
      List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false)
      RegistrationProvider? registrationProvider,
      @JsonKey(includeIfNull: false) List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false)
      EducationLevel? educationLevel,
      @JsonKey(includeIfNull: false) int? latitude,
      @JsonKey(includeIfNull: false) int? longitude,
      @JsonKey(includeIfNull: false) DateTime? documentIssueDate,
      @JsonKey(includeIfNull: false) bool? isDocumentValidated,
      @JsonKey(includeIfNull: false) bool? isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false) bool? isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false) bool? isAddressSetupCompleted,
      @JsonKey(includeIfNull: false) bool? isBankAccountSetupCompleted});
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
    Object? documentType = null,
    Object? documentNumber = null,
    Object? rawPassword = null,
    Object? phone = null,
    Object? playerId = null,
    Object? userType = null,
    Object? displayName = null,
    Object? occupationTitle = null,
    Object? address = null,
    Object? isActive = freezed,
    Object? isPhoneValidated = freezed,
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
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      rawPassword: null == rawPassword
          ? _value.rawPassword
          : rawPassword // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      occupationTitle: null == occupationTitle
          ? _value.occupationTitle
          : occupationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneValidated: freezed == isPhoneValidated
          ? _value.isPhoneValidated
          : isPhoneValidated // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
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
      {String firstName,
      String lastName,
      @DocumentTypeConverter() DocumentType documentType,
      String documentNumber,
      String rawPassword,
      String phone,
      String playerId,
      @UserTypeConverter() UserType userType,
      String displayName,
      String occupationTitle,
      String address,
      @JsonKey(includeIfNull: false) bool? isActive,
      @JsonKey(includeIfNull: false) bool? isPhoneValidated,
      @JsonKey(includeIfNull: false) String? feedback,
      @JsonKey(includeIfNull: false) int? defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false)
      List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false)
      RegistrationProvider? registrationProvider,
      @JsonKey(includeIfNull: false) List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false)
      EducationLevel? educationLevel,
      @JsonKey(includeIfNull: false) int? latitude,
      @JsonKey(includeIfNull: false) int? longitude,
      @JsonKey(includeIfNull: false) DateTime? documentIssueDate,
      @JsonKey(includeIfNull: false) bool? isDocumentValidated,
      @JsonKey(includeIfNull: false) bool? isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false) bool? isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false) bool? isAddressSetupCompleted,
      @JsonKey(includeIfNull: false) bool? isBankAccountSetupCompleted});
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
    Object? documentType = null,
    Object? documentNumber = null,
    Object? rawPassword = null,
    Object? phone = null,
    Object? playerId = null,
    Object? userType = null,
    Object? displayName = null,
    Object? occupationTitle = null,
    Object? address = null,
    Object? isActive = freezed,
    Object? isPhoneValidated = freezed,
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
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      rawPassword: null == rawPassword
          ? _value.rawPassword
          : rawPassword // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      occupationTitle: null == occupationTitle
          ? _value.occupationTitle
          : occupationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneValidated: freezed == isPhoneValidated
          ? _value.isPhoneValidated
          : isPhoneValidated // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl extends _Profile {
  _$ProfileImpl(
      {required this.firstName,
      required this.lastName,
      @DocumentTypeConverter() required this.documentType,
      required this.documentNumber,
      required this.rawPassword,
      required this.phone,
      required this.playerId,
      @UserTypeConverter() required this.userType,
      required this.displayName,
      required this.occupationTitle,
      required this.address,
      @JsonKey(includeIfNull: false) this.isActive,
      @JsonKey(includeIfNull: false) this.isPhoneValidated,
      @JsonKey(includeIfNull: false) this.feedback,
      @JsonKey(includeIfNull: false) this.defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false)
      final List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false)
      this.registrationProvider,
      @JsonKey(includeIfNull: false) final List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false)
      this.educationLevel,
      @JsonKey(includeIfNull: false) this.latitude,
      @JsonKey(includeIfNull: false) this.longitude,
      @JsonKey(includeIfNull: false) this.documentIssueDate,
      @JsonKey(includeIfNull: false) this.isDocumentValidated,
      @JsonKey(includeIfNull: false) this.isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false) this.isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false) this.isAddressSetupCompleted,
      @JsonKey(includeIfNull: false) this.isBankAccountSetupCompleted})
      : _availableDays = availableDays,
        _industries = industries,
        super._();

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  @DocumentTypeConverter()
  final DocumentType documentType;
  @override
  final String documentNumber;
  @override
  final String rawPassword;
  @override
  final String phone;
  @override
  final String playerId;
  @override
  @UserTypeConverter()
  final UserType userType;
  @override
  final String displayName;
  @override
  final String occupationTitle;
  @override
  final String address;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isActive;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isPhoneValidated;
  @override
  @JsonKey(includeIfNull: false)
  final String? feedback;
  @override
  @JsonKey(includeIfNull: false)
  final int? defaultCapacity;
  final List<AvailableDays>? _availableDays;
  @override
  @AvailableDaysConverter()
  @JsonKey(includeIfNull: false)
  List<AvailableDays>? get availableDays {
    final value = _availableDays;
    if (value == null) return null;
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @RegistrationProviderConverter()
  @JsonKey(includeIfNull: false)
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
  @JsonKey(includeIfNull: false)
  final EducationLevel? educationLevel;
  @override
  @JsonKey(includeIfNull: false)
  final int? latitude;
  @override
  @JsonKey(includeIfNull: false)
  final int? longitude;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? documentIssueDate;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isDocumentValidated;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isBasicInfoSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isWorkScheduleSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isAddressSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isBankAccountSetupCompleted;

  @override
  String toString() {
    return 'Profile(firstName: $firstName, lastName: $lastName, documentType: $documentType, documentNumber: $documentNumber, rawPassword: $rawPassword, phone: $phone, playerId: $playerId, userType: $userType, displayName: $displayName, occupationTitle: $occupationTitle, address: $address, isActive: $isActive, isPhoneValidated: $isPhoneValidated, feedback: $feedback, defaultCapacity: $defaultCapacity, availableDays: $availableDays, registrationProvider: $registrationProvider, industries: $industries, educationLevel: $educationLevel, latitude: $latitude, longitude: $longitude, documentIssueDate: $documentIssueDate, isDocumentValidated: $isDocumentValidated, isBasicInfoSetupCompleted: $isBasicInfoSetupCompleted, isWorkScheduleSetupCompleted: $isWorkScheduleSetupCompleted, isAddressSetupCompleted: $isAddressSetupCompleted, isBankAccountSetupCompleted: $isBankAccountSetupCompleted)';
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
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPhoneValidated, isPhoneValidated) ||
                other.isPhoneValidated == isPhoneValidated) &&
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
                    isBankAccountSetupCompleted));
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
        isActive,
        isPhoneValidated,
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
        isBankAccountSetupCompleted
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

abstract class _Profile extends Profile {
  factory _Profile(
      {required final String firstName,
      required final String lastName,
      @DocumentTypeConverter() required final DocumentType documentType,
      required final String documentNumber,
      required final String rawPassword,
      required final String phone,
      required final String playerId,
      @UserTypeConverter() required final UserType userType,
      required final String displayName,
      required final String occupationTitle,
      required final String address,
      @JsonKey(includeIfNull: false) final bool? isActive,
      @JsonKey(includeIfNull: false) final bool? isPhoneValidated,
      @JsonKey(includeIfNull: false) final String? feedback,
      @JsonKey(includeIfNull: false) final int? defaultCapacity,
      @AvailableDaysConverter()
      @JsonKey(includeIfNull: false)
      final List<AvailableDays>? availableDays,
      @RegistrationProviderConverter()
      @JsonKey(includeIfNull: false)
      final RegistrationProvider? registrationProvider,
      @JsonKey(includeIfNull: false) final List<int>? industries,
      @EducationLevelConverter()
      @JsonKey(includeIfNull: false)
      final EducationLevel? educationLevel,
      @JsonKey(includeIfNull: false) final int? latitude,
      @JsonKey(includeIfNull: false) final int? longitude,
      @JsonKey(includeIfNull: false) final DateTime? documentIssueDate,
      @JsonKey(includeIfNull: false) final bool? isDocumentValidated,
      @JsonKey(includeIfNull: false) final bool? isBasicInfoSetupCompleted,
      @JsonKey(includeIfNull: false) final bool? isWorkScheduleSetupCompleted,
      @JsonKey(includeIfNull: false) final bool? isAddressSetupCompleted,
      @JsonKey(includeIfNull: false)
      final bool? isBankAccountSetupCompleted}) = _$ProfileImpl;
  _Profile._() : super._();

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @DocumentTypeConverter()
  DocumentType get documentType;
  @override
  String get documentNumber;
  @override
  String get rawPassword;
  @override
  String get phone;
  @override
  String get playerId;
  @override
  @UserTypeConverter()
  UserType get userType;
  @override
  String get displayName;
  @override
  String get occupationTitle;
  @override
  String get address;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isActive;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isPhoneValidated;
  @override
  @JsonKey(includeIfNull: false)
  String? get feedback;
  @override
  @JsonKey(includeIfNull: false)
  int? get defaultCapacity;
  @override
  @AvailableDaysConverter()
  @JsonKey(includeIfNull: false)
  List<AvailableDays>? get availableDays;
  @override
  @RegistrationProviderConverter()
  @JsonKey(includeIfNull: false)
  RegistrationProvider? get registrationProvider;
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get industries;
  @override
  @EducationLevelConverter()
  @JsonKey(includeIfNull: false)
  EducationLevel? get educationLevel;
  @override
  @JsonKey(includeIfNull: false)
  int? get latitude;
  @override
  @JsonKey(includeIfNull: false)
  int? get longitude;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get documentIssueDate;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isDocumentValidated;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isBasicInfoSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isWorkScheduleSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isAddressSetupCompleted;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isBankAccountSetupCompleted;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
