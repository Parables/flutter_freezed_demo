import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part app_models.dart;
part 'app_models.g.dart';

/// Create a new address for the customer. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class AccountAddressCreate with _$AccountAddressCreate {
  const AccountAddressCreate._();

  /// Create a new address for the customer. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory AccountAddressCreate({
    required List<AccountError> accountErrors,
    Address? address,
    required List<AccountError> errors,
    /// A user instance for which the address was created.
    User? user,
  }) = _AccountAddressCreate;

  factory AccountAddressCreate.fromJson(Map<String, Object?> json) => _AccountAddressCreateFromJson(json);
}

/// Delete an address of the logged-in user. Requires one of the following permissions: MANAGE_USERS, IS_OWNER. 
@freezed
class AccountAddressDelete with _$AccountAddressDelete {
  const AccountAddressDelete._();

  /// Delete an address of the logged-in user. Requires one of the following permissions: MANAGE_USERS, IS_OWNER. 
  const factory AccountAddressDelete({
    required List<AccountError> accountErrors,
    Address? address,
    required List<AccountError> errors,
    /// A user instance for which the address was deleted.
    User? user,
  }) = _AccountAddressDelete;

  factory AccountAddressDelete.fromJson(Map<String, Object?> json) => _AccountAddressDeleteFromJson(json);
}

/// Updates an address of the logged-in user. Requires one of the following permissions: MANAGE_USERS, IS_OWNER. 
@freezed
class AccountAddressUpdate with _$AccountAddressUpdate {
  const AccountAddressUpdate._();

  /// Updates an address of the logged-in user. Requires one of the following permissions: MANAGE_USERS, IS_OWNER. 
  const factory AccountAddressUpdate({
    required List<AccountError> accountErrors,
    Address? address,
    required List<AccountError> errors,
    /// A user object for which the address was edited.
    User? user,
  }) = _AccountAddressUpdate;

  factory AccountAddressUpdate.fromJson(Map<String, Object?> json) => _AccountAddressUpdateFromJson(json);
}

/// Remove user account. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class AccountDelete with _$AccountDelete {
  const AccountDelete._();

  /// Remove user account. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory AccountDelete({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    User? user,
  }) = _AccountDelete;

  factory AccountDelete.fromJson(Map<String, Object?> json) => _AccountDeleteFromJson(json);
}

@freezed
class AccountError with _$AccountError {
  const AccountError._();

  const factory AccountError({
    /// A type of address that causes the error.
    AddressTypeEnum? addressType,
    /// The error code.
    required AccountErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _AccountError;

  factory AccountError.fromJson(Map<String, Object?> json) => _AccountErrorFromJson(json);
}

enum AccountErrorCode{
  @JsonKey(name: ACCOUNT_NOT_CONFIRMED) account_not_confirmed
  @JsonKey(name: ACTIVATE_OWN_ACCOUNT) activate_own_account
  @JsonKey(name: ACTIVATE_SUPERUSER_ACCOUNT) activate_superuser_account
  @JsonKey(name: CHANNEL_INACTIVE) channel_inactive
  @JsonKey(name: DEACTIVATE_OWN_ACCOUNT) deactivate_own_account
  @JsonKey(name: DEACTIVATE_SUPERUSER_ACCOUNT) deactivate_superuser_account
  @JsonKey(name: DELETE_NON_STAFF_USER) delete_non_staff_user
  @JsonKey(name: DELETE_OWN_ACCOUNT) delete_own_account
  @JsonKey(name: DELETE_STAFF_ACCOUNT) delete_staff_account
  @JsonKey(name: DELETE_SUPERUSER_ACCOUNT) delete_superuser_account
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INACTIVE) inactive
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: INVALID_CREDENTIALS) invalid_credentials
  @JsonKey(name: INVALID_PASSWORD) invalid_password
  @JsonKey(name: JWT_DECODE_ERROR) jwt_decode_error
  @JsonKey(name: JWT_INVALID_CSRF_TOKEN) jwt_invalid_csrf_token
  @JsonKey(name: JWT_INVALID_TOKEN) jwt_invalid_token
  @JsonKey(name: JWT_MISSING_TOKEN) jwt_missing_token
  @JsonKey(name: JWT_SIGNATURE_EXPIRED) jwt_signature_expired
  @JsonKey(name: LEFT_NOT_MANAGEABLE_PERMISSION) left_not_manageable_permission
  @JsonKey(name: MISSING_CHANNEL_SLUG) missing_channel_slug
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: OUT_OF_SCOPE_GROUP) out_of_scope_group
  @JsonKey(name: OUT_OF_SCOPE_PERMISSION) out_of_scope_permission
  @JsonKey(name: OUT_OF_SCOPE_USER) out_of_scope_user
  @JsonKey(name: PASSWORD_ENTIRELY_NUMERIC) password_entirely_numeric
  @JsonKey(name: PASSWORD_TOO_COMMON) password_too_common
  @JsonKey(name: PASSWORD_TOO_SHORT) password_too_short
  @JsonKey(name: PASSWORD_TOO_SIMILAR) password_too_similar
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class AccountInput with _$AccountInput {
  const AccountInput._();

  const factory AccountInput({
    /// Billing address of the customer.
    AddressInput? defaultBillingAddress,
    /// Shipping address of the customer.
    AddressInput? defaultShippingAddress,
    /// Given name.
    String? firstName,
    /// User language code.
    LanguageCodeEnum? languageCode,
    /// Family name.
    String? lastName,
  }) = _AccountInput;

  factory AccountInput.fromJson(Map<String, Object?> json) => _AccountInputFromJson(json);
}

/// Register a new user. 
@freezed
class AccountRegister with _$AccountRegister {
  const AccountRegister._();

  /// Register a new user. 
  const factory AccountRegister({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// Informs whether users need to confirm their email address.
    bool? requiresConfirmation,
    User? user,
  }) = _AccountRegister;

  factory AccountRegister.fromJson(Map<String, Object?> json) => _AccountRegisterFromJson(json);
}

@unfreezed
class AccountRegisterInput with _$AccountRegisterInput {
  const AccountRegisterInput._();

  const factory AccountRegisterInput({
    /// Slug of a channel which will be used to notify users. Optional when only one channel exists.
    String? channel,
    /// The email address of the user.
    required String email,
    /// Given name.
    String? firstName,
    /// User language code.
    LanguageCodeEnum? languageCode,
    /// Family name.
    String? lastName,
    /// User public metadata.
    List<MetadataInput>? metadata,
    /// Password.
    required String password,
    /// Base of frontend URL that will be needed to create confirmation URL.
    String? redirectUrl,
  }) = _AccountRegisterInput;

  factory AccountRegisterInput.fromJson(Map<String, Object?> json) => _AccountRegisterInputFromJson(json);
}

/// Sends an email with the account removal link for the logged-in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class AccountRequestDeletion with _$AccountRequestDeletion {
  const AccountRequestDeletion._();

  /// Sends an email with the account removal link for the logged-in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory AccountRequestDeletion({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
  }) = _AccountRequestDeletion;

  factory AccountRequestDeletion.fromJson(Map<String, Object?> json) => _AccountRequestDeletionFromJson(json);
}

/// Sets a default address for the authenticated user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class AccountSetDefaultAddress with _$AccountSetDefaultAddress {
  const AccountSetDefaultAddress._();

  /// Sets a default address for the authenticated user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory AccountSetDefaultAddress({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// An updated user instance.
    User? user,
  }) = _AccountSetDefaultAddress;

  factory AccountSetDefaultAddress.fromJson(Map<String, Object?> json) => _AccountSetDefaultAddressFromJson(json);
}

/// Updates the account of the logged-in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class AccountUpdate with _$AccountUpdate {
  const AccountUpdate._();

  /// Updates the account of the logged-in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory AccountUpdate({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    User? user,
  }) = _AccountUpdate;

  factory AccountUpdate.fromJson(Map<String, Object?> json) => _AccountUpdateFromJson(json);
}

/// Represents user address data. 
@freezed
class Address with _$Address {
  const Address._();

  /// Represents user address data. 
  const factory Address({
    required String city,
    required String cityArea,
    required String companyName,
    /// Shop's default country.
    required CountryDisplay country,
    required String countryArea,
    required String firstName,
    required String id,
    /// Address is user's default billing address.
    bool? isDefaultBillingAddress,
    /// Address is user's default shipping address.
    bool? isDefaultShippingAddress,
    required String lastName,
    String? phone,
    required String postalCode,
    required String streetAddress1,
    required String streetAddress2,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) => _AddressFromJson(json);
}

/// Creates user address. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class AddressCreate with _$AddressCreate {
  const AddressCreate._();

  /// Creates user address. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory AddressCreate({
    required List<AccountError> accountErrors,
    Address? address,
    required List<AccountError> errors,
    /// A user instance for which the address was created.
    User? user,
  }) = _AddressCreate;

  factory AddressCreate.fromJson(Map<String, Object?> json) => _AddressCreateFromJson(json);
}

/// Event sent when new address is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AddressCreated with _$AddressCreated {
  const AddressCreated._();

  /// Event sent when new address is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AddressCreated({
    /// The address the event relates to.
    Address? address,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AddressCreated;

  factory AddressCreated.fromJson(Map<String, Object?> json) => _AddressCreatedFromJson(json);
}

/// Deletes an address. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class AddressDelete with _$AddressDelete {
  const AddressDelete._();

  /// Deletes an address. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory AddressDelete({
    required List<AccountError> accountErrors,
    Address? address,
    required List<AccountError> errors,
    /// A user instance for which the address was deleted.
    User? user,
  }) = _AddressDelete;

  factory AddressDelete.fromJson(Map<String, Object?> json) => _AddressDeleteFromJson(json);
}

/// Event sent when address is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AddressDeleted with _$AddressDeleted {
  const AddressDeleted._();

  /// Event sent when address is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AddressDeleted({
    /// The address the event relates to.
    Address? address,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AddressDeleted;

  factory AddressDeleted.fromJson(Map<String, Object?> json) => _AddressDeletedFromJson(json);
}

@unfreezed
class AddressInput with _$AddressInput {
  const AddressInput._();

  const factory AddressInput({
    /// City.
    String? city,
    /// District.
    String? cityArea,
    /// Company or organization.
    String? companyName,
    /// Country.
    CountryCode? country,
    /// State or province.
    String? countryArea,
    /// Given name.
    String? firstName,
    /// Family name.
    String? lastName,
    /// Phone number.
    String? phone,
    /// Postal code.
    String? postalCode,
    /// Address.
    String? streetAddress1,
    /// Address.
    String? streetAddress2,
  }) = _AddressInput;

  factory AddressInput.fromJson(Map<String, Object?> json) => _AddressInputFromJson(json);
}

/// Sets a default address for the given user. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class AddressSetDefault with _$AddressSetDefault {
  const AddressSetDefault._();

  /// Sets a default address for the given user. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory AddressSetDefault({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// An updated user instance.
    User? user,
  }) = _AddressSetDefault;

  factory AddressSetDefault.fromJson(Map<String, Object?> json) => _AddressSetDefaultFromJson(json);
}

enum AddressTypeEnum{
  @JsonKey(name: BILLING) billing
  @JsonKey(name: SHIPPING) shipping
}

/// Updates an address. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class AddressUpdate with _$AddressUpdate {
  const AddressUpdate._();

  /// Updates an address. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory AddressUpdate({
    required List<AccountError> accountErrors,
    Address? address,
    required List<AccountError> errors,
    /// A user object for which the address was edited.
    User? user,
  }) = _AddressUpdate;

  factory AddressUpdate.fromJson(Map<String, Object?> json) => _AddressUpdateFromJson(json);
}

/// Event sent when address is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AddressUpdated with _$AddressUpdated {
  const AddressUpdated._();

  /// Event sent when address is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AddressUpdated({
    /// The address the event relates to.
    Address? address,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AddressUpdated;

  factory AddressUpdated.fromJson(Map<String, Object?> json) => _AddressUpdatedFromJson(json);
}

@freezed
class AddressValidationData with _$AddressValidationData {
  const AddressValidationData._();

  const factory AddressValidationData({
    required String addressFormat,
    required String addressLatinFormat,
    required List<String> allowedFields,
    required List<ChoiceValue> cityAreaChoices,
    required String cityAreaType,
    required List<ChoiceValue> cityChoices,
    required String cityType,
    required List<ChoiceValue> countryAreaChoices,
    required String countryAreaType,
    required String countryCode,
    required String countryName,
    required List<String> postalCodeExamples,
    required List<String> postalCodeMatchers,
    required String postalCodePrefix,
    required String postalCodeType,
    required List<String> requiredFields,
    required List<String> upperFields,
  }) = _AddressValidationData;

  factory AddressValidationData.fromJson(Map<String, Object?> json) => _AddressValidationDataFromJson(json);
}

/// Represents allocation. 
@freezed
class Allocation with _$Allocation {
  const Allocation._();

  /// Represents allocation. 
  const factory Allocation({
    required String id,
    /// Quantity allocated for orders.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    required int quantity,
    /// The warehouse were items were allocated.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    required Warehouse warehouse,
  }) = _Allocation;

  factory Allocation.fromJson(Map<String, Object?> json) => _AllocationFromJson(json);
}

enum AllocationStrategyEnum{
  @JsonKey(name: PRIORITIZE_HIGH_STOCK) prioritize_high_stock
  @JsonKey(name: PRIORITIZE_SORTING_ORDER) prioritize_sorting_order
}

/// Represents app data. 
@freezed
class App with _$App {
  const App._();

  /// Represents app data. 
  const factory App({
    /// Description of this app.
    String? aboutApp,
    /// JWT token used to authenticate by thridparty app.
    String? accessToken,
    /// URL to iframe with the app.
    String? appUrl,
    /// URL to iframe with the configuration for the app.
    String? configurationUrl,
    /// The date and time when the app was created.
    DateTime? created,
    /// Description of the data privacy defined for this app.
    String? dataPrivacy,
    /// URL to details about the privacy policy on the app owner page.
    String? dataPrivacyUrl,
    /// App's dashboard extensions.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<AppExtension> extensions,
    /// Homepage of the app.
    String? homepageUrl,
    required String id,
    /// Determine if app will be set active or not.
    bool? isActive,
    /// URL to manifest used during app's installation.

Added in Saleor 3.5.
    String? manifestUrl,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Name of the app.
    String? name,
    /// List of the app's permissions.
    List<Permission>? permissions,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Support page for the app.
    String? supportUrl,
    /// Last 4 characters of the tokens.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    List<AppToken>? tokens,
    /// Type of the app.
    AppTypeEnum? type,
    /// Version number of the app.
    String? version,
    /// List of webhooks assigned to this app.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    List<Webhook>? webhooks,
  }) = _App;

  factory App.fromJson(Map<String, Object?> json) => _AppFromJson(json);
}

/// Activate the app. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppActivate with _$AppActivate {
  const AppActivate._();

  /// Activate the app. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppActivate({
    App? app,
    required List<AppError> appErrors,
    required List<AppError> errors,
  }) = _AppActivate;

  factory AppActivate.fromJson(Map<String, Object?> json) => _AppActivateFromJson(json);
}

@freezed
class AppCountableConnection with _$AppCountableConnection {
  const AppCountableConnection._();

  const factory AppCountableConnection({
    required List<AppCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _AppCountableConnection;

  factory AppCountableConnection.fromJson(Map<String, Object?> json) => _AppCountableConnectionFromJson(json);
}

@freezed
class AppCountableEdge with _$AppCountableEdge {
  const AppCountableEdge._();

  const factory AppCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required App node,
  }) = _AppCountableEdge;

  factory AppCountableEdge.fromJson(Map<String, Object?> json) => _AppCountableEdgeFromJson(json);
}

/// Creates a new app. Requires the following permissions: AUTHENTICATED_STAFF_USER and MANAGE_APPS. 
@freezed
class AppCreate with _$AppCreate {
  const AppCreate._();

  /// Creates a new app. Requires the following permissions: AUTHENTICATED_STAFF_USER and MANAGE_APPS. 
  const factory AppCreate({
    App? app,
    required List<AppError> appErrors,
    /// The newly created authentication token.
    String? authToken,
    required List<AppError> errors,
  }) = _AppCreate;

  factory AppCreate.fromJson(Map<String, Object?> json) => _AppCreateFromJson(json);
}

/// Deactivate the app. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppDeactivate with _$AppDeactivate {
  const AppDeactivate._();

  /// Deactivate the app. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppDeactivate({
    App? app,
    required List<AppError> appErrors,
    required List<AppError> errors,
  }) = _AppDeactivate;

  factory AppDeactivate.fromJson(Map<String, Object?> json) => _AppDeactivateFromJson(json);
}

/// Deletes an app. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppDelete with _$AppDelete {
  const AppDelete._();

  /// Deletes an app. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppDelete({
    App? app,
    required List<AppError> appErrors,
    required List<AppError> errors,
  }) = _AppDelete;

  factory AppDelete.fromJson(Map<String, Object?> json) => _AppDeleteFromJson(json);
}

/// Delete failed installation. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppDeleteFailedInstallation with _$AppDeleteFailedInstallation {
  const AppDeleteFailedInstallation._();

  /// Delete failed installation. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppDeleteFailedInstallation({
    required List<AppError> appErrors,
    AppInstallation? appInstallation,
    required List<AppError> errors,
  }) = _AppDeleteFailedInstallation;

  factory AppDeleteFailedInstallation.fromJson(Map<String, Object?> json) => _AppDeleteFailedInstallationFromJson(json);
}

/// Event sent when app is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AppDeleted with _$AppDeleted {
  const AppDeleted._();

  /// Event sent when app is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AppDeleted({
    /// The application the event relates to.
    App? app,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AppDeleted;

  factory AppDeleted.fromJson(Map<String, Object?> json) => _AppDeletedFromJson(json);
}

@freezed
class AppError with _$AppError {
  const AppError._();

  const factory AppError({
    /// The error code.
    required AppErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of permissions which causes the error.
    List<PermissionEnum>? permissions,
  }) = _AppError;

  factory AppError.fromJson(Map<String, Object?> json) => _AppErrorFromJson(json);
}

enum AppErrorCode{
  @JsonKey(name: FORBIDDEN) forbidden
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: INVALID_MANIFEST_FORMAT) invalid_manifest_format
  @JsonKey(name: INVALID_PERMISSION) invalid_permission
  @JsonKey(name: INVALID_STATUS) invalid_status
  @JsonKey(name: INVALID_URL_FORMAT) invalid_url_format
  @JsonKey(name: MANIFEST_URL_CANT_CONNECT) manifest_url_cant_connect
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: OUT_OF_SCOPE_APP) out_of_scope_app
  @JsonKey(name: OUT_OF_SCOPE_PERMISSION) out_of_scope_permission
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

/// Represents app data. 
@freezed
class AppExtension with _$AppExtension {
  const AppExtension._();

  /// Represents app data. 
  const factory AppExtension({
    /// JWT token used to authenticate by thridparty app extension.
    String? accessToken,
    required App app,
    required String id,
    /// Label of the extension to show in the dashboard.
    required String label,
    /// Place where given extension will be mounted.
    required AppExtensionMountEnum mount,
    /// List of the app extension's permissions.
    required List<Permission> permissions,
    /// Type of way how app extension will be opened.
    required AppExtensionTargetEnum target,
    /// URL of a view where extension's iframe is placed.
    required String url,
  }) = _AppExtension;

  factory AppExtension.fromJson(Map<String, Object?> json) => _AppExtensionFromJson(json);
}

@freezed
class AppExtensionCountableConnection with _$AppExtensionCountableConnection {
  const AppExtensionCountableConnection._();

  const factory AppExtensionCountableConnection({
    required List<AppExtensionCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _AppExtensionCountableConnection;

  factory AppExtensionCountableConnection.fromJson(Map<String, Object?> json) => _AppExtensionCountableConnectionFromJson(json);
}

@freezed
class AppExtensionCountableEdge with _$AppExtensionCountableEdge {
  const AppExtensionCountableEdge._();

  const factory AppExtensionCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required AppExtension node,
  }) = _AppExtensionCountableEdge;

  factory AppExtensionCountableEdge.fromJson(Map<String, Object?> json) => _AppExtensionCountableEdgeFromJson(json);
}

@unfreezed
class AppExtensionFilterInput with _$AppExtensionFilterInput {
  const AppExtensionFilterInput._();

  const factory AppExtensionFilterInput({
    List<AppExtensionMountEnum>? mount,
    AppExtensionTargetEnum? target,
  }) = _AppExtensionFilterInput;

  factory AppExtensionFilterInput.fromJson(Map<String, Object?> json) => _AppExtensionFilterInputFromJson(json);
}

enum AppExtensionMountEnum{
  @JsonKey(name: CUSTOMER_DETAILS_MORE_ACTIONS) customer_details_more_actions
  @JsonKey(name: CUSTOMER_OVERVIEW_CREATE) customer_overview_create
  @JsonKey(name: CUSTOMER_OVERVIEW_MORE_ACTIONS) customer_overview_more_actions
  @JsonKey(name: NAVIGATION_CATALOG) navigation_catalog
  @JsonKey(name: NAVIGATION_CUSTOMERS) navigation_customers
  @JsonKey(name: NAVIGATION_DISCOUNTS) navigation_discounts
  @JsonKey(name: NAVIGATION_ORDERS) navigation_orders
  @JsonKey(name: NAVIGATION_PAGES) navigation_pages
  @JsonKey(name: NAVIGATION_TRANSLATIONS) navigation_translations
  @JsonKey(name: ORDER_DETAILS_MORE_ACTIONS) order_details_more_actions
  @JsonKey(name: ORDER_OVERVIEW_CREATE) order_overview_create
  @JsonKey(name: ORDER_OVERVIEW_MORE_ACTIONS) order_overview_more_actions
  @JsonKey(name: PRODUCT_DETAILS_MORE_ACTIONS) product_details_more_actions
  @JsonKey(name: PRODUCT_OVERVIEW_CREATE) product_overview_create
  @JsonKey(name: PRODUCT_OVERVIEW_MORE_ACTIONS) product_overview_more_actions
}

enum AppExtensionTargetEnum{
  @JsonKey(name: APP_PAGE) app_page
  @JsonKey(name: POPUP) popup
}

/// Fetch and validate manifest. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppFetchManifest with _$AppFetchManifest {
  const AppFetchManifest._();

  /// Fetch and validate manifest. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppFetchManifest({
    required List<AppError> appErrors,
    required List<AppError> errors,
    Manifest? manifest,
  }) = _AppFetchManifest;

  factory AppFetchManifest.fromJson(Map<String, Object?> json) => _AppFetchManifestFromJson(json);
}

@unfreezed
class AppFilterInput with _$AppFilterInput {
  const AppFilterInput._();

  const factory AppFilterInput({
    bool? isActive,
    String? search,
    AppTypeEnum? type,
  }) = _AppFilterInput;

  factory AppFilterInput.fromJson(Map<String, Object?> json) => _AppFilterInputFromJson(json);
}

@unfreezed
class AppInput with _$AppInput {
  const AppInput._();

  const factory AppInput({
    /// Name of the app.
    String? name,
    /// List of permission code names to assign to this app.
    List<PermissionEnum>? permissions,
  }) = _AppInput;

  factory AppInput.fromJson(Map<String, Object?> json) => _AppInputFromJson(json);
}

/// Install new app by using app manifest. Requires the following permissions: AUTHENTICATED_STAFF_USER and MANAGE_APPS. 
@freezed
class AppInstall with _$AppInstall {
  const AppInstall._();

  /// Install new app by using app manifest. Requires the following permissions: AUTHENTICATED_STAFF_USER and MANAGE_APPS. 
  const factory AppInstall({
    required List<AppError> appErrors,
    AppInstallation? appInstallation,
    required List<AppError> errors,
  }) = _AppInstall;

  factory AppInstall.fromJson(Map<String, Object?> json) => _AppInstallFromJson(json);
}

@unfreezed
class AppInstallInput with _$AppInstallInput {
  const AppInstallInput._();

  const factory AppInstallInput({
    /// Determine if app will be set active or not.
    bool? activateAfterInstallation,
    /// Name of the app to install.
    String? appName,
    /// Url to app's manifest in JSON format.
    String? manifestUrl,
    /// List of permission code names to assign to this app.
    List<PermissionEnum>? permissions,
  }) = _AppInstallInput;

  factory AppInstallInput.fromJson(Map<String, Object?> json) => _AppInstallInputFromJson(json);
}

/// Represents ongoing installation of app. 
@freezed
class AppInstallation with _$AppInstallation {
  const AppInstallation._();

  /// Represents ongoing installation of app. 
  const factory AppInstallation({
    required String appName,
    /// Created date time of job in ISO 8601 format.
    required DateTime createdAt,
    required String id,
    required String manifestUrl,
    /// Job message.
    String? message,
    /// Job status.
    required JobStatusEnum status,
    /// Date time of job last update in ISO 8601 format.
    required DateTime updatedAt,
  }) = _AppInstallation;

  factory AppInstallation.fromJson(Map<String, Object?> json) => _AppInstallationFromJson(json);
}

/// Event sent when new app is installed.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AppInstalled with _$AppInstalled {
  const AppInstalled._();

  /// Event sent when new app is installed.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AppInstalled({
    /// The application the event relates to.
    App? app,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AppInstalled;

  factory AppInstalled.fromJson(Map<String, Object?> json) => _AppInstalledFromJson(json);
}

@freezed
class AppManifestExtension with _$AppManifestExtension {
  const AppManifestExtension._();

  const factory AppManifestExtension({
    /// Label of the extension to show in the dashboard.
    required String label,
    /// Place where given extension will be mounted.
    required AppExtensionMountEnum mount,
    /// List of the app extension's permissions.
    required List<Permission> permissions,
    /// Type of way how app extension will be opened.
    required AppExtensionTargetEnum target,
    /// URL of a view where extension's iframe is placed.
    required String url,
  }) = _AppManifestExtension;

  factory AppManifestExtension.fromJson(Map<String, Object?> json) => _AppManifestExtensionFromJson(json);
}

@freezed
class AppManifestWebhook with _$AppManifestWebhook {
  const AppManifestWebhook._();

  const factory AppManifestWebhook({
    /// The asynchronous events that webhook wants to subscribe.
    List<WebhookEventTypeAsyncEnum>? asyncEvents,
    /// The name of the webhook.
    required String name,
    /// Subscription query of a webhook
    required String query,
    /// The synchronous events that webhook wants to subscribe.
    List<WebhookEventTypeSyncEnum>? syncEvents,
    /// The url to receive the payload.
    required String targetUrl,
  }) = _AppManifestWebhook;

  factory AppManifestWebhook.fromJson(Map<String, Object?> json) => _AppManifestWebhookFromJson(json);
}

/// Retry failed installation of new app. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppRetryInstall with _$AppRetryInstall {
  const AppRetryInstall._();

  /// Retry failed installation of new app. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppRetryInstall({
    required List<AppError> appErrors,
    AppInstallation? appInstallation,
    required List<AppError> errors,
  }) = _AppRetryInstall;

  factory AppRetryInstall.fromJson(Map<String, Object?> json) => _AppRetryInstallFromJson(json);
}

enum AppSortField{
  /// Sort apps by creation date. 
@JsonKey(name: CREATION_DATE) creation_date
  /// Sort apps by name. 
@JsonKey(name: NAME) name
}

@unfreezed
class AppSortingInput with _$AppSortingInput {
  const AppSortingInput._();

  const factory AppSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort apps by the selected field.
    required AppSortField field,
  }) = _AppSortingInput;

  factory AppSortingInput.fromJson(Map<String, Object?> json) => _AppSortingInputFromJson(json);
}

/// Event sent when app status has changed.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AppStatusChanged with _$AppStatusChanged {
  const AppStatusChanged._();

  /// Event sent when app status has changed.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AppStatusChanged({
    /// The application the event relates to.
    App? app,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AppStatusChanged;

  factory AppStatusChanged.fromJson(Map<String, Object?> json) => _AppStatusChangedFromJson(json);
}

/// Represents token data. 
@freezed
class AppToken with _$AppToken {
  const AppToken._();

  /// Represents token data. 
  const factory AppToken({
    /// Last 4 characters of the token.
    String? authToken,
    required String id,
    /// Name of the authenticated token.
    String? name,
  }) = _AppToken;

  factory AppToken.fromJson(Map<String, Object?> json) => _AppTokenFromJson(json);
}

/// Creates a new token. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppTokenCreate with _$AppTokenCreate {
  const AppTokenCreate._();

  /// Creates a new token. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppTokenCreate({
    required List<AppError> appErrors,
    AppToken? appToken,
    /// The newly created authentication token.
    String? authToken,
    required List<AppError> errors,
  }) = _AppTokenCreate;

  factory AppTokenCreate.fromJson(Map<String, Object?> json) => _AppTokenCreateFromJson(json);
}

/// Deletes an authentication token assigned to app. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppTokenDelete with _$AppTokenDelete {
  const AppTokenDelete._();

  /// Deletes an authentication token assigned to app. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppTokenDelete({
    required List<AppError> appErrors,
    AppToken? appToken,
    required List<AppError> errors,
  }) = _AppTokenDelete;

  factory AppTokenDelete.fromJson(Map<String, Object?> json) => _AppTokenDeleteFromJson(json);
}

@unfreezed
class AppTokenInput with _$AppTokenInput {
  const AppTokenInput._();

  const factory AppTokenInput({
    /// ID of app.
    required String app,
    /// Name of the token.
    String? name,
  }) = _AppTokenInput;

  factory AppTokenInput.fromJson(Map<String, Object?> json) => _AppTokenInputFromJson(json);
}

/// Verify provided app token. 
@freezed
class AppTokenVerify with _$AppTokenVerify {
  const AppTokenVerify._();

  /// Verify provided app token. 
  const factory AppTokenVerify({
    required List<AppError> appErrors,
    required List<AppError> errors,
    /// Determine if token is valid or not.
    required bool valid,
  }) = _AppTokenVerify;

  factory AppTokenVerify.fromJson(Map<String, Object?> json) => _AppTokenVerifyFromJson(json);
}

enum AppTypeEnum{
  /// Local Saleor App. The app is fully manageable from dashboard. You can change assigned permissions, add webhooks, or authentication token 
@JsonKey(name: LOCAL) local
  /// Third party external App. Installation is fully automated. Saleor uses a defined App manifest to gather all required information. 
@JsonKey(name: THIRDPARTY) thirdparty
}

/// Updates an existing app. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class AppUpdate with _$AppUpdate {
  const AppUpdate._();

  /// Updates an existing app. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory AppUpdate({
    App? app,
    required List<AppError> appErrors,
    required List<AppError> errors,
  }) = _AppUpdate;

  factory AppUpdate.fromJson(Map<String, Object?> json) => _AppUpdateFromJson(json);
}

/// Event sent when app is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AppUpdated with _$AppUpdated {
  const AppUpdated._();

  /// Event sent when app is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AppUpdated({
    /// The application the event relates to.
    App? app,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AppUpdated;

  factory AppUpdated.fromJson(Map<String, Object?> json) => _AppUpdatedFromJson(json);
}

enum AreaUnitsEnum{
  @JsonKey(name: SQ_CM) sq_cm
  @JsonKey(name: SQ_FT) sq_ft
  @JsonKey(name: SQ_INCH) sq_inch
  @JsonKey(name: SQ_KM) sq_km
  @JsonKey(name: SQ_M) sq_m
  @JsonKey(name: SQ_YD) sq_yd
}

/// Assigns storefront's navigation menus. 

Requires one of the following permissions: MANAGE_MENUS, MANAGE_SETTINGS. 
@freezed
class AssignNavigation with _$AssignNavigation {
  const AssignNavigation._();

  /// Assigns storefront's navigation menus. 

Requires one of the following permissions: MANAGE_MENUS, MANAGE_SETTINGS. 
  const factory AssignNavigation({
    required List<MenuError> errors,
    /// Assigned navigation menu.
    Menu? menu,
    required List<MenuError> menuErrors,
  }) = _AssignNavigation;

  factory AssignNavigation.fromJson(Map<String, Object?> json) => _AssignNavigationFromJson(json);
}

/// Represents assigned attribute to variant with variant selection attached.

Added in Saleor 3.1. 
@freezed
class AssignedVariantAttribute with _$AssignedVariantAttribute {
  const AssignedVariantAttribute._();

  /// Represents assigned attribute to variant with variant selection attached.

Added in Saleor 3.1. 
  const factory AssignedVariantAttribute({
    /// Attribute assigned to variant.
    required Attribute attribute,
    /// Determines, whether assigned attribute is allowed for variant selection. Supported variant types for variant selection are: ['dropdown', 'boolean', 'swatch', 'numeric']
    required bool variantSelection,
  }) = _AssignedVariantAttribute;

  factory AssignedVariantAttribute.fromJson(Map<String, Object?> json) => _AssignedVariantAttributeFromJson(json);
}

/// Custom attribute of a product. Attributes can be assigned to products and variants at the product type level. 
@freezed
class Attribute with _$Attribute {
  const Attribute._();

  /// Custom attribute of a product. Attributes can be assigned to products and variants at the product type level. 
  const factory Attribute({
    /// Whether the attribute can be displayed in the admin product list. Requires one of the following permissions: MANAGE_PAGES, MANAGE_PAGE_TYPES_AND_ATTRIBUTES, MANAGE_PRODUCTS, MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES.
    required bool availableInGrid,
    /// List of attribute's values.
    AttributeValueCountableConnection? choices,
    /// The entity type which can be used as a reference.
    AttributeEntityTypeEnum? entityType,
    /// Whether the attribute can be filtered in dashboard. Requires one of the following permissions: MANAGE_PAGES, MANAGE_PAGE_TYPES_AND_ATTRIBUTES, MANAGE_PRODUCTS, MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES.
    required bool filterableInDashboard,
    /// Whether the attribute can be filtered in storefront. Requires one of the following permissions: MANAGE_PAGES, MANAGE_PAGE_TYPES_AND_ATTRIBUTES, MANAGE_PRODUCTS, MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES.
    required bool filterableInStorefront,
    required String id,
    /// The input type to use for entering attribute values in the dashboard.
    AttributeInputTypeEnum? inputType,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Name of an attribute displayed in the interface.
    String? name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required ProductTypeCountableConnection productTypes,
    required ProductTypeCountableConnection productVariantTypes,
    /// Internal representation of an attribute name.
    String? slug,
    /// The position of the attribute in the storefront navigation (0 by default). Requires one of the following permissions: MANAGE_PAGES, MANAGE_PAGE_TYPES_AND_ATTRIBUTES, MANAGE_PRODUCTS, MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES.
    required int storefrontSearchPosition,
    /// Returns translated attribute fields for the given language code.
    AttributeTranslation? translation,
    /// The attribute type.
    AttributeTypeEnum? type,
    /// The unit of attribute values.
    MeasurementUnitsEnum? unit,
    /// Whether the attribute requires values to be passed or not. Requires one of the following permissions: MANAGE_PAGES, MANAGE_PAGE_TYPES_AND_ATTRIBUTES, MANAGE_PRODUCTS, MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES.
    required bool valueRequired,
    /// Whether the attribute should be visible or not in storefront. Requires one of the following permissions: MANAGE_PAGES, MANAGE_PAGE_TYPES_AND_ATTRIBUTES, MANAGE_PRODUCTS, MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES.
    required bool visibleInStorefront,
    /// Flag indicating that attribute has predefined choices.
    required bool withChoices,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, Object?> json) => _AttributeFromJson(json);
}

/// Deletes attributes. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeBulkDelete with _$AttributeBulkDelete {
  const AttributeBulkDelete._();

  /// Deletes attributes. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory AttributeBulkDelete({
    required List<AttributeError> attributeErrors,
    /// Returns how many objects were affected.
    required int count,
    required List<AttributeError> errors,
  }) = _AttributeBulkDelete;

  factory AttributeBulkDelete.fromJson(Map<String, Object?> json) => _AttributeBulkDeleteFromJson(json);
}

enum AttributeChoicesSortField{
  /// Sort attribute choice by name. 
@JsonKey(name: NAME) name
  /// Sort attribute choice by slug. 
@JsonKey(name: SLUG) slug
}

@unfreezed
class AttributeChoicesSortingInput with _$AttributeChoicesSortingInput {
  const AttributeChoicesSortingInput._();

  const factory AttributeChoicesSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort attribute choices by the selected field.
    required AttributeChoicesSortField field,
  }) = _AttributeChoicesSortingInput;

  factory AttributeChoicesSortingInput.fromJson(Map<String, Object?> json) => _AttributeChoicesSortingInputFromJson(json);
}

@freezed
class AttributeCountableConnection with _$AttributeCountableConnection {
  const AttributeCountableConnection._();

  const factory AttributeCountableConnection({
    required List<AttributeCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _AttributeCountableConnection;

  factory AttributeCountableConnection.fromJson(Map<String, Object?> json) => _AttributeCountableConnectionFromJson(json);
}

@freezed
class AttributeCountableEdge with _$AttributeCountableEdge {
  const AttributeCountableEdge._();

  const factory AttributeCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Attribute node,
  }) = _AttributeCountableEdge;

  factory AttributeCountableEdge.fromJson(Map<String, Object?> json) => _AttributeCountableEdgeFromJson(json);
}

/// Creates an attribute. 
@freezed
class AttributeCreate with _$AttributeCreate {
  const AttributeCreate._();

  /// Creates an attribute. 
  const factory AttributeCreate({
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    required List<AttributeError> errors,
  }) = _AttributeCreate;

  factory AttributeCreate.fromJson(Map<String, Object?> json) => _AttributeCreateFromJson(json);
}

@unfreezed
class AttributeCreateInput with _$AttributeCreateInput {
  const AttributeCreateInput._();

  const factory AttributeCreateInput({
    /// Whether the attribute can be displayed in the admin product list.
    bool? availableInGrid,
    /// The entity type which can be used as a reference.
    AttributeEntityTypeEnum? entityType,
    /// Whether the attribute can be filtered in dashboard.
    bool? filterableInDashboard,
    /// Whether the attribute can be filtered in storefront.
    bool? filterableInStorefront,
    /// The input type to use for entering attribute values in the dashboard.
    AttributeInputTypeEnum? inputType,
    /// Whether the attribute is for variants only.
    bool? isVariantOnly,
    /// Name of an attribute displayed in the interface.
    required String name,
    /// Internal representation of an attribute name.
    String? slug,
    /// The position of the attribute in the storefront navigation (0 by default).
    int? storefrontSearchPosition,
    /// The attribute type.
    required AttributeTypeEnum type,
    /// The unit of attribute values.
    MeasurementUnitsEnum? unit,
    /// Whether the attribute requires values to be passed or not.
    bool? valueRequired,
    /// List of attribute's values.
    List<AttributeValueCreateInput>? values,
    /// Whether the attribute should be visible or not in storefront.
    bool? visibleInStorefront,
  }) = _AttributeCreateInput;

  factory AttributeCreateInput.fromJson(Map<String, Object?> json) => _AttributeCreateInputFromJson(json);
}

/// Event sent when new attribute is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AttributeCreated with _$AttributeCreated {
  const AttributeCreated._();

  /// Event sent when new attribute is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AttributeCreated({
    /// The attribute the event relates to.
    Attribute? attribute,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AttributeCreated;

  factory AttributeCreated.fromJson(Map<String, Object?> json) => _AttributeCreatedFromJson(json);
}

/// Deletes an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeDelete with _$AttributeDelete {
  const AttributeDelete._();

  /// Deletes an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory AttributeDelete({
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    required List<AttributeError> errors,
  }) = _AttributeDelete;

  factory AttributeDelete.fromJson(Map<String, Object?> json) => _AttributeDeleteFromJson(json);
}

/// Event sent when attribute is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AttributeDeleted with _$AttributeDeleted {
  const AttributeDeleted._();

  /// Event sent when attribute is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AttributeDeleted({
    /// The attribute the event relates to.
    Attribute? attribute,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AttributeDeleted;

  factory AttributeDeleted.fromJson(Map<String, Object?> json) => _AttributeDeletedFromJson(json);
}

enum AttributeEntityTypeEnum{
  @JsonKey(name: PAGE) page
  @JsonKey(name: PRODUCT) product
}

@freezed
class AttributeError with _$AttributeError {
  const AttributeError._();

  const factory AttributeError({
    /// The error code.
    required AttributeErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _AttributeError;

  factory AttributeError.fromJson(Map<String, Object?> json) => _AttributeErrorFromJson(json);
}

enum AttributeErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class AttributeFilterInput with _$AttributeFilterInput {
  const AttributeFilterInput._();

  const factory AttributeFilterInput({
    bool? availableInGrid,
    /// Specifies the channel by which the data should be filtered. 

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    bool? filterableInDashboard,
    bool? filterableInStorefront,
    List<String>? ids,
    String? inCategory,
    String? inCollection,
    bool? isVariantOnly,
    List<MetadataFilter>? metadata,
    String? search,
    AttributeTypeEnum? type,
    bool? valueRequired,
    bool? visibleInStorefront,
  }) = _AttributeFilterInput;

  factory AttributeFilterInput.fromJson(Map<String, Object?> json) => _AttributeFilterInputFromJson(json);
}

@unfreezed
class AttributeInput with _$AttributeInput {
  const AttributeInput._();

  const factory AttributeInput({
    /// The boolean value of the attribute.
    bool? boolean,
    /// The date range that the returned values should be in. In case of date/time attributes, the UTC midnight of the given date is used.
    DateRangeInput? date,
    /// The date/time range that the returned values should be in.
    DateTimeRangeInput? dateTime,
    /// Internal representation of an attribute name.
    required String slug,
    /// Internal representation of a value (unique per attribute).
    List<String>? values,
    /// The range that the returned values should be in.
    IntRangeInput? valuesRange,
  }) = _AttributeInput;

  factory AttributeInput.fromJson(Map<String, Object?> json) => _AttributeInputFromJson(json);
}

enum AttributeInputTypeEnum{
  @JsonKey(name: BOOLEAN) boolean
  @JsonKey(name: DATE) date
  @JsonKey(name: DATE_TIME) date_time
  @JsonKey(name: DROPDOWN) dropdown
  @JsonKey(name: FILE) file
  @JsonKey(name: MULTISELECT) multiselect
  @JsonKey(name: NUMERIC) numeric
  @JsonKey(name: PLAIN_TEXT) plain_text
  @JsonKey(name: REFERENCE) reference
  @JsonKey(name: RICH_TEXT) rich_text
  @JsonKey(name: SWATCH) swatch
}

/// Reorder the values of an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeReorderValues with _$AttributeReorderValues {
  const AttributeReorderValues._();

  /// Reorder the values of an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory AttributeReorderValues({
    /// Attribute from which values are reordered.
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    required List<AttributeError> errors,
  }) = _AttributeReorderValues;

  factory AttributeReorderValues.fromJson(Map<String, Object?> json) => _AttributeReorderValuesFromJson(json);
}

enum AttributeSortField{
  /// Sort attributes based on whether they can be displayed or not in a product grid. 
@JsonKey(name: AVAILABLE_IN_GRID) available_in_grid
  /// Sort attributes by the filterable in dashboard flag 
@JsonKey(name: FILTERABLE_IN_DASHBOARD) filterable_in_dashboard
  /// Sort attributes by the filterable in storefront flag 
@JsonKey(name: FILTERABLE_IN_STOREFRONT) filterable_in_storefront
  /// Sort attributes by the variant only flag 
@JsonKey(name: IS_VARIANT_ONLY) is_variant_only
  /// Sort attributes by name 
@JsonKey(name: NAME) name
  /// Sort attributes by slug 
@JsonKey(name: SLUG) slug
  /// Sort attributes by their position in storefront 
@JsonKey(name: STOREFRONT_SEARCH_POSITION) storefront_search_position
  /// Sort attributes by the value required flag 
@JsonKey(name: VALUE_REQUIRED) value_required
  /// Sort attributes by visibility in the storefront 
@JsonKey(name: VISIBLE_IN_STOREFRONT) visible_in_storefront
}

@unfreezed
class AttributeSortingInput with _$AttributeSortingInput {
  const AttributeSortingInput._();

  const factory AttributeSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort attributes by the selected field.
    required AttributeSortField field,
  }) = _AttributeSortingInput;

  factory AttributeSortingInput.fromJson(Map<String, Object?> json) => _AttributeSortingInputFromJson(json);
}

@freezed
class AttributeTranslatableContent with _$AttributeTranslatableContent {
  const AttributeTranslatableContent._();

  const factory AttributeTranslatableContent({
    /// Custom attribute of a product.
    Attribute? attribute,
    required String id,
    required String name,
    /// Returns translated attribute fields for the given language code.
    AttributeTranslation? translation,
  }) = _AttributeTranslatableContent;

  factory AttributeTranslatableContent.fromJson(Map<String, Object?> json) => _AttributeTranslatableContentFromJson(json);
}

/// Creates/updates translations for an attribute. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class AttributeTranslate with _$AttributeTranslate {
  const AttributeTranslate._();

  /// Creates/updates translations for an attribute. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory AttributeTranslate({
    Attribute? attribute,
    required List<TranslationError> errors,
    required List<TranslationError> translationErrors,
  }) = _AttributeTranslate;

  factory AttributeTranslate.fromJson(Map<String, Object?> json) => _AttributeTranslateFromJson(json);
}

@freezed
class AttributeTranslation with _$AttributeTranslation {
  const AttributeTranslation._();

  const factory AttributeTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
  }) = _AttributeTranslation;

  factory AttributeTranslation.fromJson(Map<String, Object?> json) => _AttributeTranslationFromJson(json);
}

enum AttributeTypeEnum{
  @JsonKey(name: PAGE_TYPE) page_type
  @JsonKey(name: PRODUCT_TYPE) product_type
}

/// Updates attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeUpdate with _$AttributeUpdate {
  const AttributeUpdate._();

  /// Updates attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory AttributeUpdate({
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    required List<AttributeError> errors,
  }) = _AttributeUpdate;

  factory AttributeUpdate.fromJson(Map<String, Object?> json) => _AttributeUpdateFromJson(json);
}

@unfreezed
class AttributeUpdateInput with _$AttributeUpdateInput {
  const AttributeUpdateInput._();

  const factory AttributeUpdateInput({
    /// New values to be created for this attribute.
    List<AttributeValueUpdateInput>? addValues,
    /// Whether the attribute can be displayed in the admin product list.
    bool? availableInGrid,
    /// Whether the attribute can be filtered in dashboard.
    bool? filterableInDashboard,
    /// Whether the attribute can be filtered in storefront.
    bool? filterableInStorefront,
    /// Whether the attribute is for variants only.
    bool? isVariantOnly,
    /// Name of an attribute displayed in the interface.
    String? name,
    /// IDs of values to be removed from this attribute.
    List<String>? removeValues,
    /// Internal representation of an attribute name.
    String? slug,
    /// The position of the attribute in the storefront navigation (0 by default).
    int? storefrontSearchPosition,
    /// The unit of attribute values.
    MeasurementUnitsEnum? unit,
    /// Whether the attribute requires values to be passed or not.
    bool? valueRequired,
    /// Whether the attribute should be visible or not in storefront.
    bool? visibleInStorefront,
  }) = _AttributeUpdateInput;

  factory AttributeUpdateInput.fromJson(Map<String, Object?> json) => _AttributeUpdateInputFromJson(json);
}

/// Event sent when attribute is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AttributeUpdated with _$AttributeUpdated {
  const AttributeUpdated._();

  /// Event sent when attribute is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AttributeUpdated({
    /// The attribute the event relates to.
    Attribute? attribute,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AttributeUpdated;

  factory AttributeUpdated.fromJson(Map<String, Object?> json) => _AttributeUpdatedFromJson(json);
}

/// Represents a value of an attribute. 
@freezed
class AttributeValue with _$AttributeValue {
  const AttributeValue._();

  /// Represents a value of an attribute. 
  const factory AttributeValue({
    /// Represents the boolean value of the attribute value.
    bool? boolean,
    /// Represents the date value of the attribute value.
    Date? date,
    /// Represents the date/time value of the attribute value.
    DateTime? dateTime,
    /// Represents file URL and content type (if attribute value is a file).
    File? file,
    required String id,
    /// The input type to use for entering attribute values in the dashboard.
    AttributeInputTypeEnum? inputType,
    /// Name of a value displayed in the interface.
    String? name,
    /// Represents the text of the attribute value, plain text without formating.
    String? plainText,
    /// The ID of the attribute reference.
    String? reference,
    /// Represents the text of the attribute value, includes formatting.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
    /// Internal representation of a value (unique per attribute).
    String? slug,
    /// Returns translated attribute value fields for the given language code.
    AttributeValueTranslation? translation,
    /// Represent value of the attribute value (e.g. color values for swatch attributes).
    String? value,
  }) = _AttributeValue;

  factory AttributeValue.fromJson(Map<String, Object?> json) => _AttributeValueFromJson(json);
}

/// Deletes values of attributes. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeValueBulkDelete with _$AttributeValueBulkDelete {
  const AttributeValueBulkDelete._();

  /// Deletes values of attributes. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory AttributeValueBulkDelete({
    required List<AttributeError> attributeErrors,
    /// Returns how many objects were affected.
    required int count,
    required List<AttributeError> errors,
  }) = _AttributeValueBulkDelete;

  factory AttributeValueBulkDelete.fromJson(Map<String, Object?> json) => _AttributeValueBulkDeleteFromJson(json);
}

@freezed
class AttributeValueCountableConnection with _$AttributeValueCountableConnection {
  const AttributeValueCountableConnection._();

  const factory AttributeValueCountableConnection({
    required List<AttributeValueCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _AttributeValueCountableConnection;

  factory AttributeValueCountableConnection.fromJson(Map<String, Object?> json) => _AttributeValueCountableConnectionFromJson(json);
}

@freezed
class AttributeValueCountableEdge with _$AttributeValueCountableEdge {
  const AttributeValueCountableEdge._();

  const factory AttributeValueCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required AttributeValue node,
  }) = _AttributeValueCountableEdge;

  factory AttributeValueCountableEdge.fromJson(Map<String, Object?> json) => _AttributeValueCountableEdgeFromJson(json);
}

/// Creates a value for an attribute. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class AttributeValueCreate with _$AttributeValueCreate {
  const AttributeValueCreate._();

  /// Creates a value for an attribute. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory AttributeValueCreate({
    /// The updated attribute.
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    AttributeValue? attributeValue,
    required List<AttributeError> errors,
  }) = _AttributeValueCreate;

  factory AttributeValueCreate.fromJson(Map<String, Object?> json) => _AttributeValueCreateFromJson(json);
}

@unfreezed
class AttributeValueCreateInput with _$AttributeValueCreateInput {
  const AttributeValueCreateInput._();

  const factory AttributeValueCreateInput({
    /// File content type.
    String? contentType,
    /// URL of the file attribute. Every time, a new value is created.
    String? fileUrl,
    /// Name of a value displayed in the interface.
    required String name,
    /// Represents the text of the attribute value, plain text without formating.
    String? plainText,
    /// Represents the text of the attribute value, includes formatting.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
    /// Represent value of the attribute value (e.g. color values for swatch attributes).
    String? value,
  }) = _AttributeValueCreateInput;

  factory AttributeValueCreateInput.fromJson(Map<String, Object?> json) => _AttributeValueCreateInputFromJson(json);
}

/// Event sent when new attribute value is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AttributeValueCreated with _$AttributeValueCreated {
  const AttributeValueCreated._();

  /// Event sent when new attribute value is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AttributeValueCreated({
    /// The attribute value the event relates to.
    AttributeValue? attributeValue,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AttributeValueCreated;

  factory AttributeValueCreated.fromJson(Map<String, Object?> json) => _AttributeValueCreatedFromJson(json);
}

/// Deletes a value of an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeValueDelete with _$AttributeValueDelete {
  const AttributeValueDelete._();

  /// Deletes a value of an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory AttributeValueDelete({
    /// The updated attribute.
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    AttributeValue? attributeValue,
    required List<AttributeError> errors,
  }) = _AttributeValueDelete;

  factory AttributeValueDelete.fromJson(Map<String, Object?> json) => _AttributeValueDeleteFromJson(json);
}

/// Event sent when attribute value is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AttributeValueDeleted with _$AttributeValueDeleted {
  const AttributeValueDeleted._();

  /// Event sent when attribute value is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AttributeValueDeleted({
    /// The attribute value the event relates to.
    AttributeValue? attributeValue,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AttributeValueDeleted;

  factory AttributeValueDeleted.fromJson(Map<String, Object?> json) => _AttributeValueDeletedFromJson(json);
}

@unfreezed
class AttributeValueFilterInput with _$AttributeValueFilterInput {
  const AttributeValueFilterInput._();

  const factory AttributeValueFilterInput({
    List<String>? ids,
    String? search,
  }) = _AttributeValueFilterInput;

  factory AttributeValueFilterInput.fromJson(Map<String, Object?> json) => _AttributeValueFilterInputFromJson(json);
}

@unfreezed
class AttributeValueInput with _$AttributeValueInput {
  const AttributeValueInput._();

  const factory AttributeValueInput({
    /// Represents the boolean value of the attribute value.
    bool? boolean,
    /// File content type.
    String? contentType,
    /// Represents the date value of the attribute value.
    Date? date,
    /// Represents the date/time value of the attribute value.
    DateTime? dateTime,
    /// URL of the file attribute. Every time, a new value is created.
    String? file,
    /// ID of the selected attribute.
    String? id,
    /// Plain text content.
    String? plainText,
    /// List of entity IDs that will be used as references.
    List<String>? references,
    /// Text content in JSON format.
    JSONString? richText,
    /// The value or slug of an attribute to resolve. If the passed value is non-existent, it will be created.
    List<String>? values,
  }) = _AttributeValueInput;

  factory AttributeValueInput.fromJson(Map<String, Object?> json) => _AttributeValueInputFromJson(json);
}

@freezed
class AttributeValueTranslatableContent with _$AttributeValueTranslatableContent {
  const AttributeValueTranslatableContent._();

  const factory AttributeValueTranslatableContent({
    /// Represents a value of an attribute.
    AttributeValue? attributeValue,
    required String id,
    required String name,
    /// Attribute plain text value.
    String? plainText,
    /// Attribute value.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
    /// Returns translated attribute value fields for the given language code.
    AttributeValueTranslation? translation,
  }) = _AttributeValueTranslatableContent;

  factory AttributeValueTranslatableContent.fromJson(Map<String, Object?> json) => _AttributeValueTranslatableContentFromJson(json);
}

/// Creates/updates translations for an attribute value. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class AttributeValueTranslate with _$AttributeValueTranslate {
  const AttributeValueTranslate._();

  /// Creates/updates translations for an attribute value. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory AttributeValueTranslate({
    AttributeValue? attributeValue,
    required List<TranslationError> errors,
    required List<TranslationError> translationErrors,
  }) = _AttributeValueTranslate;

  factory AttributeValueTranslate.fromJson(Map<String, Object?> json) => _AttributeValueTranslateFromJson(json);
}

@freezed
class AttributeValueTranslation with _$AttributeValueTranslation {
  const AttributeValueTranslation._();

  const factory AttributeValueTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
    /// Attribute plain text value.
    String? plainText,
    /// Attribute value.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
  }) = _AttributeValueTranslation;

  factory AttributeValueTranslation.fromJson(Map<String, Object?> json) => _AttributeValueTranslationFromJson(json);
}

@unfreezed
class AttributeValueTranslationInput with _$AttributeValueTranslationInput {
  const AttributeValueTranslationInput._();

  const factory AttributeValueTranslationInput({
    String? name,
    /// Translated text.
    String? plainText,
    /// Translated text.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
  }) = _AttributeValueTranslationInput;

  factory AttributeValueTranslationInput.fromJson(Map<String, Object?> json) => _AttributeValueTranslationInputFromJson(json);
}

/// Updates value of an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class AttributeValueUpdate with _$AttributeValueUpdate {
  const AttributeValueUpdate._();

  /// Updates value of an attribute. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory AttributeValueUpdate({
    /// The updated attribute.
    Attribute? attribute,
    required List<AttributeError> attributeErrors,
    AttributeValue? attributeValue,
    required List<AttributeError> errors,
  }) = _AttributeValueUpdate;

  factory AttributeValueUpdate.fromJson(Map<String, Object?> json) => _AttributeValueUpdateFromJson(json);
}

@unfreezed
class AttributeValueUpdateInput with _$AttributeValueUpdateInput {
  const AttributeValueUpdateInput._();

  const factory AttributeValueUpdateInput({
    /// File content type.
    String? contentType,
    /// URL of the file attribute. Every time, a new value is created.
    String? fileUrl,
    /// Name of a value displayed in the interface.
    String? name,
    /// Represents the text of the attribute value, plain text without formating.
    String? plainText,
    /// Represents the text of the attribute value, includes formatting.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
    /// Represent value of the attribute value (e.g. color values for swatch attributes).
    String? value,
  }) = _AttributeValueUpdateInput;

  factory AttributeValueUpdateInput.fromJson(Map<String, Object?> json) => _AttributeValueUpdateInputFromJson(json);
}

/// Event sent when attribute value is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class AttributeValueUpdated with _$AttributeValueUpdated {
  const AttributeValueUpdated._();

  /// Event sent when attribute value is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory AttributeValueUpdated({
    /// The attribute value the event relates to.
    AttributeValue? attributeValue,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _AttributeValueUpdated;

  factory AttributeValueUpdated.fromJson(Map<String, Object?> json) => _AttributeValueUpdatedFromJson(json);
}

@unfreezed
class BulkAttributeValueInput with _$BulkAttributeValueInput {
  const BulkAttributeValueInput._();

  const factory BulkAttributeValueInput({
    /// The boolean value of an attribute to resolve. If the passed value is non-existent, it will be created.
    bool? boolean,
    /// ID of the selected attribute.
    String? id,
    /// The value or slug of an attribute to resolve. If the passed value is non-existent, it will be created.
    List<String>? values,
  }) = _BulkAttributeValueInput;

  factory BulkAttributeValueInput.fromJson(Map<String, Object?> json) => _BulkAttributeValueInputFromJson(json);
}

@freezed
class BulkProductError with _$BulkProductError {
  const BulkProductError._();

  const factory BulkProductError({
    /// List of attributes IDs which causes the error.
    List<String>? attributes,
    /// List of channel IDs which causes the error.
    List<String>? channels,
    /// The error code.
    required ProductErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// Index of an input list item that caused the error.
    int? index,
    /// The error message.
    String? message,
    /// List of attribute values IDs which causes the error.
    List<String>? values,
    /// List of warehouse IDs which causes the error.
    List<String>? warehouses,
  }) = _BulkProductError;

  factory BulkProductError.fromJson(Map<String, Object?> json) => _BulkProductErrorFromJson(json);
}

@freezed
class BulkStockError with _$BulkStockError {
  const BulkStockError._();

  const factory BulkStockError({
    /// List of attributes IDs which causes the error.
    List<String>? attributes,
    /// The error code.
    required ProductErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// Index of an input list item that caused the error.
    int? index,
    /// The error message.
    String? message,
    /// List of attribute values IDs which causes the error.
    List<String>? values,
  }) = _BulkStockError;

  factory BulkStockError.fromJson(Map<String, Object?> json) => _BulkStockErrorFromJson(json);
}

@unfreezed
class CardInput with _$CardInput {
  const CardInput._();

  const factory CardInput({
    /// Payment method nonce, a token returned by the appropriate provider's SDK.
    required String code,
    /// Card security code.
    String? cvc,
    /// Information about currency and amount.
    required MoneyInput money,
  }) = _CardInput;

  factory CardInput.fromJson(Map<String, Object?> json) => _CardInputFromJson(json);
}

@unfreezed
class CatalogueInput with _$CatalogueInput {
  const CatalogueInput._();

  const factory CatalogueInput({
    /// Categories related to the discount.
    List<String>? categories,
    /// Collections related to the discount.
    List<String>? collections,
    /// Products related to the discount.
    List<String>? products,
    /// Product variant related to the discount.

Added in Saleor 3.1.
    List<String>? variants,
  }) = _CatalogueInput;

  factory CatalogueInput.fromJson(Map<String, Object?> json) => _CatalogueInputFromJson(json);
}

/// Represents a single category of products. Categories allow to organize products in a tree-hierarchies which can be used for navigation in the storefront. 
@freezed
class Category with _$Category {
  const Category._();

  /// Represents a single category of products. Categories allow to organize products in a tree-hierarchies which can be used for navigation in the storefront. 
  const factory Category({
    /// List of ancestors of the category.
    CategoryCountableConnection? ancestors,
    Image? backgroundImage,
    /// List of children of the category.
    CategoryCountableConnection? children,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required int level,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    Category? parent,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of products in the category. Requires the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    ProductCountableConnection? products,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    /// Returns translated category fields for the given language code.
    CategoryTranslation? translation,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) => _CategoryFromJson(json);
}

/// Deletes categories. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CategoryBulkDelete with _$CategoryBulkDelete {
  const CategoryBulkDelete._();

  /// Deletes categories. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CategoryBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _CategoryBulkDelete;

  factory CategoryBulkDelete.fromJson(Map<String, Object?> json) => _CategoryBulkDeleteFromJson(json);
}

@freezed
class CategoryCountableConnection with _$CategoryCountableConnection {
  const CategoryCountableConnection._();

  const factory CategoryCountableConnection({
    required List<CategoryCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _CategoryCountableConnection;

  factory CategoryCountableConnection.fromJson(Map<String, Object?> json) => _CategoryCountableConnectionFromJson(json);
}

@freezed
class CategoryCountableEdge with _$CategoryCountableEdge {
  const CategoryCountableEdge._();

  const factory CategoryCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Category node,
  }) = _CategoryCountableEdge;

  factory CategoryCountableEdge.fromJson(Map<String, Object?> json) => _CategoryCountableEdgeFromJson(json);
}

/// Creates a new category. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CategoryCreate with _$CategoryCreate {
  const CategoryCreate._();

  /// Creates a new category. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CategoryCreate({
    Category? category,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _CategoryCreate;

  factory CategoryCreate.fromJson(Map<String, Object?> json) => _CategoryCreateFromJson(json);
}

/// Event sent when new category is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CategoryCreated with _$CategoryCreated {
  const CategoryCreated._();

  /// Event sent when new category is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CategoryCreated({
    /// The category the event relates to.
    Category? category,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CategoryCreated;

  factory CategoryCreated.fromJson(Map<String, Object?> json) => _CategoryCreatedFromJson(json);
}

/// Deletes a category. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CategoryDelete with _$CategoryDelete {
  const CategoryDelete._();

  /// Deletes a category. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CategoryDelete({
    Category? category,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _CategoryDelete;

  factory CategoryDelete.fromJson(Map<String, Object?> json) => _CategoryDeleteFromJson(json);
}

/// Event sent when category is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CategoryDeleted with _$CategoryDeleted {
  const CategoryDeleted._();

  /// Event sent when category is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CategoryDeleted({
    /// The category the event relates to.
    Category? category,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CategoryDeleted;

  factory CategoryDeleted.fromJson(Map<String, Object?> json) => _CategoryDeletedFromJson(json);
}

@unfreezed
class CategoryFilterInput with _$CategoryFilterInput {
  const CategoryFilterInput._();

  const factory CategoryFilterInput({
    List<String>? ids,
    List<MetadataFilter>? metadata,
    String? search,
  }) = _CategoryFilterInput;

  factory CategoryFilterInput.fromJson(Map<String, Object?> json) => _CategoryFilterInputFromJson(json);
}

@unfreezed
class CategoryInput with _$CategoryInput {
  const CategoryInput._();

  const factory CategoryInput({
    /// Background image file.
    Upload? backgroundImage,
    /// Alt text for a product media.
    String? backgroundImageAlt,
    /// Category description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Category name.
    String? name,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Category slug.
    String? slug,
  }) = _CategoryInput;

  factory CategoryInput.fromJson(Map<String, Object?> json) => _CategoryInputFromJson(json);
}

enum CategorySortField{
  /// Sort categories by name. 
@JsonKey(name: NAME) name
  /// Sort categories by product count. 
@JsonKey(name: PRODUCT_COUNT) product_count
  /// Sort categories by subcategory count. 
@JsonKey(name: SUBCATEGORY_COUNT) subcategory_count
}

@unfreezed
class CategorySortingInput with _$CategorySortingInput {
  const CategorySortingInput._();

  const factory CategorySortingInput({
    /// Specifies the channel in which to sort the data.

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort categories by the selected field.
    required CategorySortField field,
  }) = _CategorySortingInput;

  factory CategorySortingInput.fromJson(Map<String, Object?> json) => _CategorySortingInputFromJson(json);
}

@freezed
class CategoryTranslatableContent with _$CategoryTranslatableContent {
  const CategoryTranslatableContent._();

  const factory CategoryTranslatableContent({
    /// Represents a single category of products.
    Category? category,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required String name,
    String? seoDescription,
    String? seoTitle,
    /// Returns translated category fields for the given language code.
    CategoryTranslation? translation,
  }) = _CategoryTranslatableContent;

  factory CategoryTranslatableContent.fromJson(Map<String, Object?> json) => _CategoryTranslatableContentFromJson(json);
}

/// Creates/updates translations for a category. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class CategoryTranslate with _$CategoryTranslate {
  const CategoryTranslate._();

  /// Creates/updates translations for a category. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory CategoryTranslate({
    Category? category,
    required List<TranslationError> errors,
    required List<TranslationError> translationErrors,
  }) = _CategoryTranslate;

  factory CategoryTranslate.fromJson(Map<String, Object?> json) => _CategoryTranslateFromJson(json);
}

@freezed
class CategoryTranslation with _$CategoryTranslation {
  const CategoryTranslation._();

  const factory CategoryTranslation({
    /// Translated description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Translated description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = _CategoryTranslation;

  factory CategoryTranslation.fromJson(Map<String, Object?> json) => _CategoryTranslationFromJson(json);
}

/// Updates a category. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CategoryUpdate with _$CategoryUpdate {
  const CategoryUpdate._();

  /// Updates a category. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CategoryUpdate({
    Category? category,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _CategoryUpdate;

  factory CategoryUpdate.fromJson(Map<String, Object?> json) => _CategoryUpdateFromJson(json);
}

/// Event sent when category is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CategoryUpdated with _$CategoryUpdated {
  const CategoryUpdated._();

  /// Event sent when category is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CategoryUpdated({
    /// The category the event relates to.
    Category? category,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CategoryUpdated;

  factory CategoryUpdated.fromJson(Map<String, Object?> json) => _CategoryUpdatedFromJson(json);
}

/// Represents channel. 
@freezed
class Channel with _$Channel {
  const Channel._();

  /// Represents channel. 
  const factory Channel({
    /// Shipping methods that are available for the channel.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<ShippingMethodsPerCountry>? availableShippingMethodsPerCountry,
    /// List of shippable countries for the channel.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<CountryDisplay>? countries,
    /// A currency that is assigned to the channel.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    required String currencyCode,
    /// Default country for the channel. Default country can be used in checkout to determine the stock quantities or calculate taxes when the country was not explicitly provided.

Added in Saleor 3.1.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    required CountryDisplay defaultCountry,
    /// Whether a channel has associated orders.

Requires one of the following permissions: MANAGE_CHANNELS.
    required bool hasOrders,
    required String id,
    /// Whether the channel is active.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    required bool isActive,
    /// Name of the channel.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    required String name,
    /// Slug of the channel.
    required String slug,
    /// Define the stock setting for this channel.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    required StockSettings stockSettings,
    /// List of warehouses assigned to this channel.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    required List<Warehouse> warehouses,
  }) = _Channel;

  factory Channel.fromJson(Map<String, Object?> json) => _ChannelFromJson(json);
}

/// Activate a channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
@freezed
class ChannelActivate with _$ChannelActivate {
  const ChannelActivate._();

  /// Activate a channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
  const factory ChannelActivate({
    /// Activated channel.
    Channel? channel,
    required List<ChannelError> channelErrors,
    required List<ChannelError> errors,
  }) = _ChannelActivate;

  factory ChannelActivate.fromJson(Map<String, Object?> json) => _ChannelActivateFromJson(json);
}

/// Creates new channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
@freezed
class ChannelCreate with _$ChannelCreate {
  const ChannelCreate._();

  /// Creates new channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
  const factory ChannelCreate({
    Channel? channel,
    required List<ChannelError> channelErrors,
    required List<ChannelError> errors,
  }) = _ChannelCreate;

  factory ChannelCreate.fromJson(Map<String, Object?> json) => _ChannelCreateFromJson(json);
}

@unfreezed
class ChannelCreateInput with _$ChannelCreateInput {
  const ChannelCreateInput._();

  const factory ChannelCreateInput({
    /// List of shipping zones to assign to the channel.
    List<String>? addShippingZones,
    /// List of warehouses to assign to the channel.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<String>? addWarehouses,
    /// Currency of the channel.
    required String currencyCode,
    /// Default country for the channel. Default country can be used in checkout to determine the stock quantities or calculate taxes when the country was not explicitly provided.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required CountryCode defaultCountry,
    /// isActive flag.
    bool? isActive,
    /// Name of the channel.
    required String name,
    /// Slug of the channel.
    required String slug,
    /// The channel stock settings.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    StockSettingsInput? stockSettings,
  }) = _ChannelCreateInput;

  factory ChannelCreateInput.fromJson(Map<String, Object?> json) => _ChannelCreateInputFromJson(json);
}

/// Event sent when new channel is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ChannelCreated with _$ChannelCreated {
  const ChannelCreated._();

  /// Event sent when new channel is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ChannelCreated({
    /// The channel the event relates to.
    Channel? channel,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ChannelCreated;

  factory ChannelCreated.fromJson(Map<String, Object?> json) => _ChannelCreatedFromJson(json);
}

/// Deactivate a channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
@freezed
class ChannelDeactivate with _$ChannelDeactivate {
  const ChannelDeactivate._();

  /// Deactivate a channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
  const factory ChannelDeactivate({
    /// Deactivated channel.
    Channel? channel,
    required List<ChannelError> channelErrors,
    required List<ChannelError> errors,
  }) = _ChannelDeactivate;

  factory ChannelDeactivate.fromJson(Map<String, Object?> json) => _ChannelDeactivateFromJson(json);
}

/// Delete a channel. Orders associated with the deleted channel will be moved to the target channel. Checkouts, product availability, and pricing will be removed. 

Requires one of the following permissions: MANAGE_CHANNELS. 
@freezed
class ChannelDelete with _$ChannelDelete {
  const ChannelDelete._();

  /// Delete a channel. Orders associated with the deleted channel will be moved to the target channel. Checkouts, product availability, and pricing will be removed. 

Requires one of the following permissions: MANAGE_CHANNELS. 
  const factory ChannelDelete({
    Channel? channel,
    required List<ChannelError> channelErrors,
    required List<ChannelError> errors,
  }) = _ChannelDelete;

  factory ChannelDelete.fromJson(Map<String, Object?> json) => _ChannelDeleteFromJson(json);
}

@unfreezed
class ChannelDeleteInput with _$ChannelDeleteInput {
  const ChannelDeleteInput._();

  const factory ChannelDeleteInput({
    /// ID of channel to migrate orders from origin channel.
    required String channelId,
  }) = _ChannelDeleteInput;

  factory ChannelDeleteInput.fromJson(Map<String, Object?> json) => _ChannelDeleteInputFromJson(json);
}

/// Event sent when channel is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ChannelDeleted with _$ChannelDeleted {
  const ChannelDeleted._();

  /// Event sent when channel is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ChannelDeleted({
    /// The channel the event relates to.
    Channel? channel,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ChannelDeleted;

  factory ChannelDeleted.fromJson(Map<String, Object?> json) => _ChannelDeletedFromJson(json);
}

@freezed
class ChannelError with _$ChannelError {
  const ChannelError._();

  const factory ChannelError({
    /// The error code.
    required ChannelErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of shipping zone IDs which causes the error.
    List<String>? shippingZones,
    /// List of warehouses IDs which causes the error.
    List<String>? warehouses,
  }) = _ChannelError;

  factory ChannelError.fromJson(Map<String, Object?> json) => _ChannelErrorFromJson(json);
}

enum ChannelErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: CHANNELS_CURRENCY_MUST_BE_THE_SAME) channels_currency_must_be_the_same
  @JsonKey(name: CHANNEL_WITH_ORDERS) channel_with_orders
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

/// Reorder the warehouses of a channel.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_CHANNELS. 
@freezed
class ChannelReorderWarehouses with _$ChannelReorderWarehouses {
  const ChannelReorderWarehouses._();

  /// Reorder the warehouses of a channel.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_CHANNELS. 
  const factory ChannelReorderWarehouses({
    /// Channel within the warehouses are reordered.
    Channel? channel,
    required List<ChannelError> errors,
  }) = _ChannelReorderWarehouses;

  factory ChannelReorderWarehouses.fromJson(Map<String, Object?> json) => _ChannelReorderWarehousesFromJson(json);
}

/// Event sent when channel status has changed.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ChannelStatusChanged with _$ChannelStatusChanged {
  const ChannelStatusChanged._();

  /// Event sent when channel status has changed.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ChannelStatusChanged({
    /// The channel the event relates to.
    Channel? channel,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ChannelStatusChanged;

  factory ChannelStatusChanged.fromJson(Map<String, Object?> json) => _ChannelStatusChangedFromJson(json);
}

/// Update a channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
@freezed
class ChannelUpdate with _$ChannelUpdate {
  const ChannelUpdate._();

  /// Update a channel. 

Requires one of the following permissions: MANAGE_CHANNELS. 
  const factory ChannelUpdate({
    Channel? channel,
    required List<ChannelError> channelErrors,
    required List<ChannelError> errors,
  }) = _ChannelUpdate;

  factory ChannelUpdate.fromJson(Map<String, Object?> json) => _ChannelUpdateFromJson(json);
}

@unfreezed
class ChannelUpdateInput with _$ChannelUpdateInput {
  const ChannelUpdateInput._();

  const factory ChannelUpdateInput({
    /// List of shipping zones to assign to the channel.
    List<String>? addShippingZones,
    /// List of warehouses to assign to the channel.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<String>? addWarehouses,
    /// Default country for the channel. Default country can be used in checkout to determine the stock quantities or calculate taxes when the country was not explicitly provided.

Added in Saleor 3.1.
    CountryCode? defaultCountry,
    /// isActive flag.
    bool? isActive,
    /// Name of the channel.
    String? name,
    /// List of shipping zones to unassign from the channel.
    List<String>? removeShippingZones,
    /// List of warehouses to unassign from the channel.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<String>? removeWarehouses,
    /// Slug of the channel.
    String? slug,
    /// The channel stock settings.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    StockSettingsInput? stockSettings,
  }) = _ChannelUpdateInput;

  factory ChannelUpdateInput.fromJson(Map<String, Object?> json) => _ChannelUpdateInputFromJson(json);
}

/// Event sent when channel is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ChannelUpdated with _$ChannelUpdated {
  const ChannelUpdated._();

  /// Event sent when channel is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ChannelUpdated({
    /// The channel the event relates to.
    Channel? channel,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ChannelUpdated;

  factory ChannelUpdated.fromJson(Map<String, Object?> json) => _ChannelUpdatedFromJson(json);
}

/// Checkout object. 
@freezed
class Checkout with _$Checkout {
  const Checkout._();

  /// Checkout object. 
  const factory Checkout({
    /// Collection points that can be used for this order.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<Warehouse> availableCollectionPoints,
    /// List of available payment gateways.
    required List<PaymentGateway> availablePaymentGateways,
    /// Shipping methods that can be used with this checkout.
    required List<ShippingMethod> availableShippingMethods,
    Address? billingAddress,
    required Channel channel,
    required DateTime created,
    /// The delivery method selected for this checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    DeliveryMethod? deliveryMethod,
    Money? discount,
    String? discountName,
    /// Email of a customer.
    String? email,
    /// List of gift cards associated with this checkout.
    required List<GiftCard> giftCards,
    required String id,
    /// Returns True, if checkout requires shipping.
    required bool isShippingRequired,
    /// Checkout language code.
    required LanguageCodeEnum languageCode,
    required DateTime lastChange,
    /// A list of checkout lines, each containing information about an item in the checkout.
    required List<CheckoutLine> lines,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String note,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// The number of items purchased.
    required int quantity,
    Address? shippingAddress,
    /// The shipping method related with checkout.
    ShippingMethod? shippingMethod,
    /// Shipping methods that can be used with this checkout.
    required List<ShippingMethod> shippingMethods,
    /// The price of the shipping, with all the taxes included.
    required TaxedMoney shippingPrice,
    /// Date when oldest stock reservation for this checkout expires or null if no stock is reserved.

Added in Saleor 3.1.
    DateTime? stockReservationExpires,
    /// The price of the checkout before shipping, with taxes included.
    required TaxedMoney subtotalPrice,
    /// The checkout's token.
    required UUID token,
    /// The sum of the the checkout line prices, with all the taxes,shipping costs, and discounts included.
    required TaxedMoney totalPrice,
    /// List of transactions for the checkout. Requires one of the following permissions: MANAGE_CHECKOUTS, HANDLE_PAYMENTS.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<TransactionItem>? transactions,
    String? translatedDiscountName,
    User? user,
    String? voucherCode,
  }) = _Checkout;

  factory Checkout.fromJson(Map<String, Object?> json) => _CheckoutFromJson(json);
}

/// Adds a gift card or a voucher to a checkout. 
@freezed
class CheckoutAddPromoCode with _$CheckoutAddPromoCode {
  const CheckoutAddPromoCode._();

  /// Adds a gift card or a voucher to a checkout. 
  const factory CheckoutAddPromoCode({
    /// The checkout with the added gift card or voucher.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutAddPromoCode;

  factory CheckoutAddPromoCode.fromJson(Map<String, Object?> json) => _CheckoutAddPromoCodeFromJson(json);
}

@unfreezed
class CheckoutAddressValidationRules with _$CheckoutAddressValidationRules {
  const CheckoutAddressValidationRules._();

  const factory CheckoutAddressValidationRules({
    /// Determines if an error should be raised when the provided address doesn't match the expected format. Example: using letters for postal code when the numbers are expected.
    bool? checkFieldsFormat,
    /// Determines if an error should be raised when the provided address doesn't have all the required fields. The list of required fields is dynamic and depends on the country code (use the `addressValidationRules` query to fetch them). Note: country code is mandatory for all addresses regardless of the rules provided in this input.
    bool? checkRequiredFields,
    /// Determines if Saleor should apply normalization on address fields. Example: converting city field to uppercase letters.
    bool? enableFieldsNormalization,
  }) = _CheckoutAddressValidationRules;

  factory CheckoutAddressValidationRules.fromJson(Map<String, Object?> json) => _CheckoutAddressValidationRulesFromJson(json);
}

/// Update billing address in the existing checkout. 
@freezed
class CheckoutBillingAddressUpdate with _$CheckoutBillingAddressUpdate {
  const CheckoutBillingAddressUpdate._();

  /// Update billing address in the existing checkout. 
  const factory CheckoutBillingAddressUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutBillingAddressUpdate;

  factory CheckoutBillingAddressUpdate.fromJson(Map<String, Object?> json) => _CheckoutBillingAddressUpdateFromJson(json);
}

/// Completes the checkout. As a result a new order is created and a payment charge is made. This action requires a successful payment before it can be performed. In case additional confirmation step as 3D secure is required confirmationNeeded flag will be set to True and no order created until payment is confirmed with second call of this mutation. 
@freezed
class CheckoutComplete with _$CheckoutComplete {
  const CheckoutComplete._();

  /// Completes the checkout. As a result a new order is created and a payment charge is made. This action requires a successful payment before it can be performed. In case additional confirmation step as 3D secure is required confirmationNeeded flag will be set to True and no order created until payment is confirmed with second call of this mutation. 
  const factory CheckoutComplete({
    required List<CheckoutError> checkoutErrors,
    /// Confirmation data used to process additional authorization steps.
    JSONString? confirmationData,
    /// Set to true if payment needs to be confirmed before checkout is complete.
    required bool confirmationNeeded,
    required List<CheckoutError> errors,
    /// Placed order.
    Order? order,
  }) = _CheckoutComplete;

  factory CheckoutComplete.fromJson(Map<String, Object?> json) => _CheckoutCompleteFromJson(json);
}

@freezed
class CheckoutCountableConnection with _$CheckoutCountableConnection {
  const CheckoutCountableConnection._();

  const factory CheckoutCountableConnection({
    required List<CheckoutCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _CheckoutCountableConnection;

  factory CheckoutCountableConnection.fromJson(Map<String, Object?> json) => _CheckoutCountableConnectionFromJson(json);
}

@freezed
class CheckoutCountableEdge with _$CheckoutCountableEdge {
  const CheckoutCountableEdge._();

  const factory CheckoutCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Checkout node,
  }) = _CheckoutCountableEdge;

  factory CheckoutCountableEdge.fromJson(Map<String, Object?> json) => _CheckoutCountableEdgeFromJson(json);
}

/// Create a new checkout. 
@freezed
class CheckoutCreate with _$CheckoutCreate {
  const CheckoutCreate._();

  /// Create a new checkout. 
  const factory CheckoutCreate({
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    /// Whether the checkout was created or the current active one was returned. Refer to checkoutLinesAdd and checkoutLinesUpdate to merge a cart with an active checkout.
    bool? created,
    required List<CheckoutError> errors,
  }) = _CheckoutCreate;

  factory CheckoutCreate.fromJson(Map<String, Object?> json) => _CheckoutCreateFromJson(json);
}

@unfreezed
class CheckoutCreateInput with _$CheckoutCreateInput {
  const CheckoutCreateInput._();

  const factory CheckoutCreateInput({
    /// Billing address of the customer.
    AddressInput? billingAddress,
    /// Slug of a channel in which to create a checkout.
    String? channel,
    /// The customer's email address.
    String? email,
    /// Checkout language code.
    LanguageCodeEnum? languageCode,
    /// A list of checkout lines, each containing information about an item in the checkout.
    required List<CheckoutLineInput> lines,
    /// The mailing address to where the checkout will be shipped. Note: the address will be ignored if the checkout doesn't contain shippable items.
    AddressInput? shippingAddress,
    /// The checkout validation rules that can be changed.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    CheckoutValidationRules? validationRules,
  }) = _CheckoutCreateInput;

  factory CheckoutCreateInput.fromJson(Map<String, Object?> json) => _CheckoutCreateInputFromJson(json);
}

/// Event sent when new checkout is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CheckoutCreated with _$CheckoutCreated {
  const CheckoutCreated._();

  /// Event sent when new checkout is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CheckoutCreated({
    /// The checkout the event relates to.
    Checkout? checkout,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CheckoutCreated;

  factory CheckoutCreated.fromJson(Map<String, Object?> json) => _CheckoutCreatedFromJson(json);
}

/// Sets the customer as the owner of the checkout. 

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_USER. 
@freezed
class CheckoutCustomerAttach with _$CheckoutCustomerAttach {
  const CheckoutCustomerAttach._();

  /// Sets the customer as the owner of the checkout. 

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_USER. 
  const factory CheckoutCustomerAttach({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutCustomerAttach;

  factory CheckoutCustomerAttach.fromJson(Map<String, Object?> json) => _CheckoutCustomerAttachFromJson(json);
}

/// Removes the user assigned as the owner of the checkout. 

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_USER. 
@freezed
class CheckoutCustomerDetach with _$CheckoutCustomerDetach {
  const CheckoutCustomerDetach._();

  /// Removes the user assigned as the owner of the checkout. 

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_USER. 
  const factory CheckoutCustomerDetach({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutCustomerDetach;

  factory CheckoutCustomerDetach.fromJson(Map<String, Object?> json) => _CheckoutCustomerDetachFromJson(json);
}

/// Updates the delivery method (shipping method or pick up point) of the checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CheckoutDeliveryMethodUpdate with _$CheckoutDeliveryMethodUpdate {
  const CheckoutDeliveryMethodUpdate._();

  /// Updates the delivery method (shipping method or pick up point) of the checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CheckoutDeliveryMethodUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> errors,
  }) = _CheckoutDeliveryMethodUpdate;

  factory CheckoutDeliveryMethodUpdate.fromJson(Map<String, Object?> json) => _CheckoutDeliveryMethodUpdateFromJson(json);
}

/// Updates email address in the existing checkout object. 
@freezed
class CheckoutEmailUpdate with _$CheckoutEmailUpdate {
  const CheckoutEmailUpdate._();

  /// Updates email address in the existing checkout object. 
  const factory CheckoutEmailUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutEmailUpdate;

  factory CheckoutEmailUpdate.fromJson(Map<String, Object?> json) => _CheckoutEmailUpdateFromJson(json);
}

@freezed
class CheckoutError with _$CheckoutError {
  const CheckoutError._();

  const factory CheckoutError({
    /// A type of address that causes the error.
    AddressTypeEnum? addressType,
    /// The error code.
    required CheckoutErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// List of line Ids which cause the error.
    List<String>? lines,
    /// The error message.
    String? message,
    /// List of varint IDs which causes the error.
    List<String>? variants,
  }) = _CheckoutError;

  factory CheckoutError.fromJson(Map<String, Object?> json) => _CheckoutErrorFromJson(json);
}

enum CheckoutErrorCode{
  @JsonKey(name: BILLING_ADDRESS_NOT_SET) billing_address_not_set
  @JsonKey(name: CHANNEL_INACTIVE) channel_inactive
  @JsonKey(name: CHECKOUT_NOT_FULLY_PAID) checkout_not_fully_paid
  @JsonKey(name: DELIVERY_METHOD_NOT_APPLICABLE) delivery_method_not_applicable
  @JsonKey(name: EMAIL_NOT_SET) email_not_set
  @JsonKey(name: GIFT_CARD_NOT_APPLICABLE) gift_card_not_applicable
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INSUFFICIENT_STOCK) insufficient_stock
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: INVALID_SHIPPING_METHOD) invalid_shipping_method
  @JsonKey(name: MISSING_CHANNEL_SLUG) missing_channel_slug
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: NO_LINES) no_lines
  @JsonKey(name: PAYMENT_ERROR) payment_error
  @JsonKey(name: PRODUCT_NOT_PUBLISHED) product_not_published
  @JsonKey(name: PRODUCT_UNAVAILABLE_FOR_PURCHASE) product_unavailable_for_purchase
  @JsonKey(name: QUANTITY_GREATER_THAN_LIMIT) quantity_greater_than_limit
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: SHIPPING_ADDRESS_NOT_SET) shipping_address_not_set
  @JsonKey(name: SHIPPING_METHOD_NOT_APPLICABLE) shipping_method_not_applicable
  @JsonKey(name: SHIPPING_METHOD_NOT_SET) shipping_method_not_set
  @JsonKey(name: SHIPPING_NOT_REQUIRED) shipping_not_required
  @JsonKey(name: TAX_ERROR) tax_error
  @JsonKey(name: UNAVAILABLE_VARIANT_IN_CHANNEL) unavailable_variant_in_channel
  @JsonKey(name: UNIQUE) unique
  @JsonKey(name: VOUCHER_NOT_APPLICABLE) voucher_not_applicable
  @JsonKey(name: ZERO_QUANTITY) zero_quantity
}

@unfreezed
class CheckoutFilterInput with _$CheckoutFilterInput {
  const CheckoutFilterInput._();

  const factory CheckoutFilterInput({
    List<String>? channels,
    DateRangeInput? created,
    String? customer,
    List<MetadataFilter>? metadata,
    String? search,
  }) = _CheckoutFilterInput;

  factory CheckoutFilterInput.fromJson(Map<String, Object?> json) => _CheckoutFilterInputFromJson(json);
}

/// Filter shipping methods for checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CheckoutFilterShippingMethods with _$CheckoutFilterShippingMethods {
  const CheckoutFilterShippingMethods._();

  /// Filter shipping methods for checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CheckoutFilterShippingMethods({
    /// The checkout the event relates to.
    Checkout? checkout,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Shipping methods that can be used with this checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<ShippingMethod>? shippingMethods,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CheckoutFilterShippingMethods;

  factory CheckoutFilterShippingMethods.fromJson(Map<String, Object?> json) => _CheckoutFilterShippingMethodsFromJson(json);
}

/// Update language code in the existing checkout. 
@freezed
class CheckoutLanguageCodeUpdate with _$CheckoutLanguageCodeUpdate {
  const CheckoutLanguageCodeUpdate._();

  /// Update language code in the existing checkout. 
  const factory CheckoutLanguageCodeUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutLanguageCodeUpdate;

  factory CheckoutLanguageCodeUpdate.fromJson(Map<String, Object?> json) => _CheckoutLanguageCodeUpdateFromJson(json);
}

/// Represents an item in the checkout. 
@freezed
class CheckoutLine with _$CheckoutLine {
  const CheckoutLine._();

  /// Represents an item in the checkout. 
  const factory CheckoutLine({
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required int quantity,
    /// Indicates whether the item need to be delivered.
    required bool requiresShipping,
    /// The sum of the checkout line price, taxes and discounts.
    required TaxedMoney totalPrice,
    /// The sum of the checkout line price, without discounts.
    required Money undiscountedTotalPrice,
    /// The unit price of the checkout line, without discounts.
    required Money undiscountedUnitPrice,
    /// The unit price of the checkout line, with taxes and discounts.
    required TaxedMoney unitPrice,
    required ProductVariant variant,
  }) = _CheckoutLine;

  factory CheckoutLine.fromJson(Map<String, Object?> json) => _CheckoutLineFromJson(json);
}

@freezed
class CheckoutLineCountableConnection with _$CheckoutLineCountableConnection {
  const CheckoutLineCountableConnection._();

  const factory CheckoutLineCountableConnection({
    required List<CheckoutLineCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _CheckoutLineCountableConnection;

  factory CheckoutLineCountableConnection.fromJson(Map<String, Object?> json) => _CheckoutLineCountableConnectionFromJson(json);
}

@freezed
class CheckoutLineCountableEdge with _$CheckoutLineCountableEdge {
  const CheckoutLineCountableEdge._();

  const factory CheckoutLineCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required CheckoutLine node,
  }) = _CheckoutLineCountableEdge;

  factory CheckoutLineCountableEdge.fromJson(Map<String, Object?> json) => _CheckoutLineCountableEdgeFromJson(json);
}

/// Deletes a CheckoutLine. 
@freezed
class CheckoutLineDelete with _$CheckoutLineDelete {
  const CheckoutLineDelete._();

  /// Deletes a CheckoutLine. 
  const factory CheckoutLineDelete({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutLineDelete;

  factory CheckoutLineDelete.fromJson(Map<String, Object?> json) => _CheckoutLineDeleteFromJson(json);
}

@unfreezed
class CheckoutLineInput with _$CheckoutLineInput {
  const CheckoutLineInput._();

  const factory CheckoutLineInput({
    /// Flag that allow force splitting the same variant into multiple lines by skipping the matching logic. 

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    bool? forceNewLine,
    /// Custom price of the item. Can be set only by apps with `HANDLE_CHECKOUTS` permission. When the line with the same variant will be provided multiple times, the last price will be used.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PositiveDecimal? price,
    /// The number of items purchased.
    required int quantity,
    /// ID of the product variant.
    required String variantId,
  }) = _CheckoutLineInput;

  factory CheckoutLineInput.fromJson(Map<String, Object?> json) => _CheckoutLineInputFromJson(json);
}

@unfreezed
class CheckoutLineUpdateInput with _$CheckoutLineUpdateInput {
  const CheckoutLineUpdateInput._();

  const factory CheckoutLineUpdateInput({
    /// ID of the line.

Added in Saleor 3.6.
    String? lineId,
    /// Custom price of the item. Can be set only by apps with `HANDLE_CHECKOUTS` permission. When the line with the same variant will be provided multiple times, the last price will be used.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PositiveDecimal? price,
    /// The number of items purchased. Optional for apps, required for any other users.
    int? quantity,
    /// ID of the product variant. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `lineId` instead.
    String? variantId,
  }) = _CheckoutLineUpdateInput;

  factory CheckoutLineUpdateInput.fromJson(Map<String, Object?> json) => _CheckoutLineUpdateInputFromJson(json);
}

/// Adds a checkout line to the existing checkout.If line was already in checkout, its quantity will be increased. 
@freezed
class CheckoutLinesAdd with _$CheckoutLinesAdd {
  const CheckoutLinesAdd._();

  /// Adds a checkout line to the existing checkout.If line was already in checkout, its quantity will be increased. 
  const factory CheckoutLinesAdd({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutLinesAdd;

  factory CheckoutLinesAdd.fromJson(Map<String, Object?> json) => _CheckoutLinesAddFromJson(json);
}

/// Deletes checkout lines. 
@freezed
class CheckoutLinesDelete with _$CheckoutLinesDelete {
  const CheckoutLinesDelete._();

  /// Deletes checkout lines. 
  const factory CheckoutLinesDelete({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> errors,
  }) = _CheckoutLinesDelete;

  factory CheckoutLinesDelete.fromJson(Map<String, Object?> json) => _CheckoutLinesDeleteFromJson(json);
}

/// Updates checkout line in the existing checkout. 
@freezed
class CheckoutLinesUpdate with _$CheckoutLinesUpdate {
  const CheckoutLinesUpdate._();

  /// Updates checkout line in the existing checkout. 
  const factory CheckoutLinesUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutLinesUpdate;

  factory CheckoutLinesUpdate.fromJson(Map<String, Object?> json) => _CheckoutLinesUpdateFromJson(json);
}

/// Create a new payment for given checkout. 
@freezed
class CheckoutPaymentCreate with _$CheckoutPaymentCreate {
  const CheckoutPaymentCreate._();

  /// Create a new payment for given checkout. 
  const factory CheckoutPaymentCreate({
    /// Related checkout object.
    Checkout? checkout,
    required List<PaymentError> errors,
    /// A newly created payment.
    Payment? payment,
    required List<PaymentError> paymentErrors,
  }) = _CheckoutPaymentCreate;

  factory CheckoutPaymentCreate.fromJson(Map<String, Object?> json) => _CheckoutPaymentCreateFromJson(json);
}

/// Remove a gift card or a voucher from a checkout. 
@freezed
class CheckoutRemovePromoCode with _$CheckoutRemovePromoCode {
  const CheckoutRemovePromoCode._();

  /// Remove a gift card or a voucher from a checkout. 
  const factory CheckoutRemovePromoCode({
    /// The checkout with the removed gift card or voucher.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutRemovePromoCode;

  factory CheckoutRemovePromoCode.fromJson(Map<String, Object?> json) => _CheckoutRemovePromoCodeFromJson(json);
}

/// Update shipping address in the existing checkout. 
@freezed
class CheckoutShippingAddressUpdate with _$CheckoutShippingAddressUpdate {
  const CheckoutShippingAddressUpdate._();

  /// Update shipping address in the existing checkout. 
  const factory CheckoutShippingAddressUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutShippingAddressUpdate;

  factory CheckoutShippingAddressUpdate.fromJson(Map<String, Object?> json) => _CheckoutShippingAddressUpdateFromJson(json);
}

/// Updates the shipping method of the checkout. 
@freezed
class CheckoutShippingMethodUpdate with _$CheckoutShippingMethodUpdate {
  const CheckoutShippingMethodUpdate._();

  /// Updates the shipping method of the checkout. 
  const factory CheckoutShippingMethodUpdate({
    /// An updated checkout.
    Checkout? checkout,
    required List<CheckoutError> checkoutErrors,
    required List<CheckoutError> errors,
  }) = _CheckoutShippingMethodUpdate;

  factory CheckoutShippingMethodUpdate.fromJson(Map<String, Object?> json) => _CheckoutShippingMethodUpdateFromJson(json);
}

enum CheckoutSortField{
  /// Sort checkouts by creation date. 
@JsonKey(name: CREATION_DATE) creation_date
  /// Sort checkouts by customer. 
@JsonKey(name: CUSTOMER) customer
  /// Sort checkouts by payment. 
@JsonKey(name: PAYMENT) payment
}

@unfreezed
class CheckoutSortingInput with _$CheckoutSortingInput {
  const CheckoutSortingInput._();

  const factory CheckoutSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort checkouts by the selected field.
    required CheckoutSortField field,
  }) = _CheckoutSortingInput;

  factory CheckoutSortingInput.fromJson(Map<String, Object?> json) => _CheckoutSortingInputFromJson(json);
}

/// Event sent when checkout is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CheckoutUpdated with _$CheckoutUpdated {
  const CheckoutUpdated._();

  /// Event sent when checkout is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CheckoutUpdated({
    /// The checkout the event relates to.
    Checkout? checkout,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CheckoutUpdated;

  factory CheckoutUpdated.fromJson(Map<String, Object?> json) => _CheckoutUpdatedFromJson(json);
}

@unfreezed
class CheckoutValidationRules with _$CheckoutValidationRules {
  const CheckoutValidationRules._();

  const factory CheckoutValidationRules({
    /// The validation rules that can be applied to provided billing address data.
    CheckoutAddressValidationRules? billingAddress,
    /// The validation rules that can be applied to provided shipping address data.
    CheckoutAddressValidationRules? shippingAddress,
  }) = _CheckoutValidationRules;

  factory CheckoutValidationRules.fromJson(Map<String, Object?> json) => _CheckoutValidationRulesFromJson(json);
}

@freezed
class ChoiceValue with _$ChoiceValue {
  const ChoiceValue._();

  const factory ChoiceValue({
    String? raw,
    String? verbose,
  }) = _ChoiceValue;

  factory ChoiceValue.fromJson(Map<String, Object?> json) => _ChoiceValueFromJson(json);
}

/// Represents a collection of products. 
@freezed
class Collection with _$Collection {
  const Collection._();

  /// Represents a collection of products. 
  const factory Collection({
    Image? backgroundImage,
    /// Channel given to retrieve this collection. Also used by federation gateway to resolve this object in a federated query.
    String? channel,
    /// List of channels in which the collection is available.

Requires one of the following permissions: MANAGE_PRODUCTS.
    List<CollectionChannelListing>? channelListings,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of products in this collection.
    ProductCountableConnection? products,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    /// Returns translated collection fields for the given language code.
    CollectionTranslation? translation,
  }) = _Collection;

  factory Collection.fromJson(Map<String, Object?> json) => _CollectionFromJson(json);
}

/// Adds products to a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionAddProducts with _$CollectionAddProducts {
  const CollectionAddProducts._();

  /// Adds products to a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionAddProducts({
    /// Collection to which products will be added.
    Collection? collection,
    required List<CollectionError> collectionErrors,
    required List<CollectionError> errors,
  }) = _CollectionAddProducts;

  factory CollectionAddProducts.fromJson(Map<String, Object?> json) => _CollectionAddProductsFromJson(json);
}

/// Deletes collections. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionBulkDelete with _$CollectionBulkDelete {
  const CollectionBulkDelete._();

  /// Deletes collections. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionBulkDelete({
    required List<CollectionError> collectionErrors,
    /// Returns how many objects were affected.
    required int count,
    required List<CollectionError> errors,
  }) = _CollectionBulkDelete;

  factory CollectionBulkDelete.fromJson(Map<String, Object?> json) => _CollectionBulkDeleteFromJson(json);
}

/// Represents collection channel listing. 
@freezed
class CollectionChannelListing with _$CollectionChannelListing {
  const CollectionChannelListing._();

  /// Represents collection channel listing. 
  const factory CollectionChannelListing({
    required Channel channel,
    required String id,
    required bool isPublished,
    Date? publicationDate,
    /// The collection publication date.

Added in Saleor 3.3.
    DateTime? publishedAt,
  }) = _CollectionChannelListing;

  factory CollectionChannelListing.fromJson(Map<String, Object?> json) => _CollectionChannelListingFromJson(json);
}

@freezed
class CollectionChannelListingError with _$CollectionChannelListingError {
  const CollectionChannelListingError._();

  const factory CollectionChannelListingError({
    /// List of attributes IDs which causes the error.
    List<String>? attributes,
    /// List of channels IDs which causes the error.
    List<String>? channels,
    /// The error code.
    required ProductErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of attribute values IDs which causes the error.
    List<String>? values,
  }) = _CollectionChannelListingError;

  factory CollectionChannelListingError.fromJson(Map<String, Object?> json) => _CollectionChannelListingErrorFromJson(json);
}

/// Manage collection's availability in channels. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionChannelListingUpdate with _$CollectionChannelListingUpdate {
  const CollectionChannelListingUpdate._();

  /// Manage collection's availability in channels. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionChannelListingUpdate({
    /// An updated collection instance.
    Collection? collection,
    required List<CollectionChannelListingError> collectionChannelListingErrors,
    required List<CollectionChannelListingError> errors,
  }) = _CollectionChannelListingUpdate;

  factory CollectionChannelListingUpdate.fromJson(Map<String, Object?> json) => _CollectionChannelListingUpdateFromJson(json);
}

@unfreezed
class CollectionChannelListingUpdateInput with _$CollectionChannelListingUpdateInput {
  const CollectionChannelListingUpdateInput._();

  const factory CollectionChannelListingUpdateInput({
    /// List of channels to which the collection should be assigned.
    List<PublishableChannelListingInput>? addChannels,
    /// List of channels from which the collection should be unassigned.
    List<String>? removeChannels,
  }) = _CollectionChannelListingUpdateInput;

  factory CollectionChannelListingUpdateInput.fromJson(Map<String, Object?> json) => _CollectionChannelListingUpdateInputFromJson(json);
}

@freezed
class CollectionCountableConnection with _$CollectionCountableConnection {
  const CollectionCountableConnection._();

  const factory CollectionCountableConnection({
    required List<CollectionCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _CollectionCountableConnection;

  factory CollectionCountableConnection.fromJson(Map<String, Object?> json) => _CollectionCountableConnectionFromJson(json);
}

@freezed
class CollectionCountableEdge with _$CollectionCountableEdge {
  const CollectionCountableEdge._();

  const factory CollectionCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Collection node,
  }) = _CollectionCountableEdge;

  factory CollectionCountableEdge.fromJson(Map<String, Object?> json) => _CollectionCountableEdgeFromJson(json);
}

/// Creates a new collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionCreate with _$CollectionCreate {
  const CollectionCreate._();

  /// Creates a new collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionCreate({
    Collection? collection,
    required List<CollectionError> collectionErrors,
    required List<CollectionError> errors,
  }) = _CollectionCreate;

  factory CollectionCreate.fromJson(Map<String, Object?> json) => _CollectionCreateFromJson(json);
}

@unfreezed
class CollectionCreateInput with _$CollectionCreateInput {
  const CollectionCreateInput._();

  const factory CollectionCreateInput({
    /// Background image file.
    Upload? backgroundImage,
    /// Alt text for an image.
    String? backgroundImageAlt,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Informs whether a collection is published.
    bool? isPublished,
    /// Name of the collection.
    String? name,
    /// List of products to be added to the collection.
    List<String>? products,
    /// Publication date. ISO 8601 standard. 

DEPRECATED: this field will be removed in Saleor 4.0.
    Date? publicationDate,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Slug of the collection.
    String? slug,
  }) = _CollectionCreateInput;

  factory CollectionCreateInput.fromJson(Map<String, Object?> json) => _CollectionCreateInputFromJson(json);
}

/// Event sent when new collection is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CollectionCreated with _$CollectionCreated {
  const CollectionCreated._();

  /// Event sent when new collection is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CollectionCreated({
    /// The collection the event relates to.
    Collection? collection,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CollectionCreated;

  factory CollectionCreated.fromJson(Map<String, Object?> json) => _CollectionCreatedFromJson(json);
}

/// Deletes a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionDelete with _$CollectionDelete {
  const CollectionDelete._();

  /// Deletes a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionDelete({
    Collection? collection,
    required List<CollectionError> collectionErrors,
    required List<CollectionError> errors,
  }) = _CollectionDelete;

  factory CollectionDelete.fromJson(Map<String, Object?> json) => _CollectionDeleteFromJson(json);
}

/// Event sent when collection is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CollectionDeleted with _$CollectionDeleted {
  const CollectionDeleted._();

  /// Event sent when collection is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CollectionDeleted({
    /// The collection the event relates to.
    Collection? collection,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CollectionDeleted;

  factory CollectionDeleted.fromJson(Map<String, Object?> json) => _CollectionDeletedFromJson(json);
}

@freezed
class CollectionError with _$CollectionError {
  const CollectionError._();

  const factory CollectionError({
    /// The error code.
    required CollectionErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of products IDs which causes the error.
    List<String>? products,
  }) = _CollectionError;

  factory CollectionError.fromJson(Map<String, Object?> json) => _CollectionErrorFromJson(json);
}

enum CollectionErrorCode{
  @JsonKey(name: CANNOT_MANAGE_PRODUCT_WITHOUT_VARIANT) cannot_manage_product_without_variant
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class CollectionFilterInput with _$CollectionFilterInput {
  const CollectionFilterInput._();

  const factory CollectionFilterInput({
    /// Specifies the channel by which the data should be filtered. 

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    List<String>? ids,
    List<MetadataFilter>? metadata,
    CollectionPublished? published,
    String? search,
  }) = _CollectionFilterInput;

  factory CollectionFilterInput.fromJson(Map<String, Object?> json) => _CollectionFilterInputFromJson(json);
}

@unfreezed
class CollectionInput with _$CollectionInput {
  const CollectionInput._();

  const factory CollectionInput({
    /// Background image file.
    Upload? backgroundImage,
    /// Alt text for an image.
    String? backgroundImageAlt,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Informs whether a collection is published.
    bool? isPublished,
    /// Name of the collection.
    String? name,
    /// Publication date. ISO 8601 standard. 

DEPRECATED: this field will be removed in Saleor 4.0.
    Date? publicationDate,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Slug of the collection.
    String? slug,
  }) = _CollectionInput;

  factory CollectionInput.fromJson(Map<String, Object?> json) => _CollectionInputFromJson(json);
}

enum CollectionPublished{
  @JsonKey(name: HIDDEN) hidden
  @JsonKey(name: PUBLISHED) published
}

/// Remove products from a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionRemoveProducts with _$CollectionRemoveProducts {
  const CollectionRemoveProducts._();

  /// Remove products from a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionRemoveProducts({
    /// Collection from which products will be removed.
    Collection? collection,
    required List<CollectionError> collectionErrors,
    required List<CollectionError> errors,
  }) = _CollectionRemoveProducts;

  factory CollectionRemoveProducts.fromJson(Map<String, Object?> json) => _CollectionRemoveProductsFromJson(json);
}

/// Reorder the products of a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionReorderProducts with _$CollectionReorderProducts {
  const CollectionReorderProducts._();

  /// Reorder the products of a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionReorderProducts({
    /// Collection from which products are reordered.
    Collection? collection,
    required List<CollectionError> collectionErrors,
    required List<CollectionError> errors,
  }) = _CollectionReorderProducts;

  factory CollectionReorderProducts.fromJson(Map<String, Object?> json) => _CollectionReorderProductsFromJson(json);
}

enum CollectionSortField{
  /// Sort collections by availability.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: AVAILABILITY) availability
  /// Sort collections by name. 
@JsonKey(name: NAME) name
  /// Sort collections by product count. 
@JsonKey(name: PRODUCT_COUNT) product_count
  /// Sort collections by publication date.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: PUBLICATION_DATE) publication_date
  /// Sort collections by publication date.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: PUBLISHED_AT) published_at
}

@unfreezed
class CollectionSortingInput with _$CollectionSortingInput {
  const CollectionSortingInput._();

  const factory CollectionSortingInput({
    /// Specifies the channel in which to sort the data.

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort collections by the selected field.
    required CollectionSortField field,
  }) = _CollectionSortingInput;

  factory CollectionSortingInput.fromJson(Map<String, Object?> json) => _CollectionSortingInputFromJson(json);
}

@freezed
class CollectionTranslatableContent with _$CollectionTranslatableContent {
  const CollectionTranslatableContent._();

  const factory CollectionTranslatableContent({
    /// Represents a collection of products.
    Collection? collection,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required String name,
    String? seoDescription,
    String? seoTitle,
    /// Returns translated collection fields for the given language code.
    CollectionTranslation? translation,
  }) = _CollectionTranslatableContent;

  factory CollectionTranslatableContent.fromJson(Map<String, Object?> json) => _CollectionTranslatableContentFromJson(json);
}

/// Creates/updates translations for a collection. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class CollectionTranslate with _$CollectionTranslate {
  const CollectionTranslate._();

  /// Creates/updates translations for a collection. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory CollectionTranslate({
    Collection? collection,
    required List<TranslationError> errors,
    required List<TranslationError> translationErrors,
  }) = _CollectionTranslate;

  factory CollectionTranslate.fromJson(Map<String, Object?> json) => _CollectionTranslateFromJson(json);
}

@freezed
class CollectionTranslation with _$CollectionTranslation {
  const CollectionTranslation._();

  const factory CollectionTranslation({
    /// Translated description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Translated description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = _CollectionTranslation;

  factory CollectionTranslation.fromJson(Map<String, Object?> json) => _CollectionTranslationFromJson(json);
}

/// Updates a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class CollectionUpdate with _$CollectionUpdate {
  const CollectionUpdate._();

  /// Updates a collection. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory CollectionUpdate({
    Collection? collection,
    required List<CollectionError> collectionErrors,
    required List<CollectionError> errors,
  }) = _CollectionUpdate;

  factory CollectionUpdate.fromJson(Map<String, Object?> json) => _CollectionUpdateFromJson(json);
}

/// Event sent when collection is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CollectionUpdated with _$CollectionUpdated {
  const CollectionUpdated._();

  /// Event sent when collection is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CollectionUpdated({
    /// The collection the event relates to.
    Collection? collection,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CollectionUpdated;

  factory CollectionUpdated.fromJson(Map<String, Object?> json) => _CollectionUpdatedFromJson(json);
}

/// Stores information about a single configuration field. 
@freezed
class ConfigurationItem with _$ConfigurationItem {
  const ConfigurationItem._();

  /// Stores information about a single configuration field. 
  const factory ConfigurationItem({
    /// Help text for the field.
    String? helpText,
    /// Label for the field.
    String? label,
    /// Name of the field.
    required String name,
    /// Type of the field.
    ConfigurationTypeFieldEnum? type,
    /// Current value of the field.
    String? value,
  }) = _ConfigurationItem;

  factory ConfigurationItem.fromJson(Map<String, Object?> json) => _ConfigurationItemFromJson(json);
}

@unfreezed
class ConfigurationItemInput with _$ConfigurationItemInput {
  const ConfigurationItemInput._();

  const factory ConfigurationItemInput({
    /// Name of the field to update.
    required String name,
    /// Value of the given field to update.
    String? value,
  }) = _ConfigurationItemInput;

  factory ConfigurationItemInput.fromJson(Map<String, Object?> json) => _ConfigurationItemInputFromJson(json);
}

enum ConfigurationTypeFieldEnum{
  @JsonKey(name: BOOLEAN) boolean
  @JsonKey(name: MULTILINE) multiline
  @JsonKey(name: OUTPUT) output
  @JsonKey(name: PASSWORD) password
  @JsonKey(name: SECRET) secret
  @JsonKey(name: SECRETMULTILINE) secretmultiline
  @JsonKey(name: STRING) string
}

/// Confirm user account with token sent by email during registration. 
@freezed
class ConfirmAccount with _$ConfirmAccount {
  const ConfirmAccount._();

  /// Confirm user account with token sent by email during registration. 
  const factory ConfirmAccount({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// An activated user account.
    User? user,
  }) = _ConfirmAccount;

  factory ConfirmAccount.fromJson(Map<String, Object?> json) => _ConfirmAccountFromJson(json);
}

/// Confirm the email change of the logged-in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class ConfirmEmailChange with _$ConfirmEmailChange {
  const ConfirmEmailChange._();

  /// Confirm the email change of the logged-in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory ConfirmEmailChange({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// A user instance with a new email.
    User? user,
  }) = _ConfirmEmailChange;

  factory ConfirmEmailChange.fromJson(Map<String, Object?> json) => _ConfirmEmailChangeFromJson(json);
}

enum CountryCode{
  @JsonKey(name: AD) ad
  @JsonKey(name: AE) ae
  @JsonKey(name: AF) af
  @JsonKey(name: AG) ag
  @JsonKey(name: AI) ai
  @JsonKey(name: AL) al
  @JsonKey(name: AM) am
  @JsonKey(name: AO) ao
  @JsonKey(name: AQ) aq
  @JsonKey(name: AR) ar
  @JsonKey(name: AS) as
  @JsonKey(name: AT) at
  @JsonKey(name: AU) au
  @JsonKey(name: AW) aw
  @JsonKey(name: AX) ax
  @JsonKey(name: AZ) az
  @JsonKey(name: BA) ba
  @JsonKey(name: BB) bb
  @JsonKey(name: BD) bd
  @JsonKey(name: BE) be
  @JsonKey(name: BF) bf
  @JsonKey(name: BG) bg
  @JsonKey(name: BH) bh
  @JsonKey(name: BI) bi
  @JsonKey(name: BJ) bj
  @JsonKey(name: BL) bl
  @JsonKey(name: BM) bm
  @JsonKey(name: BN) bn
  @JsonKey(name: BO) bo
  @JsonKey(name: BQ) bq
  @JsonKey(name: BR) br
  @JsonKey(name: BS) bs
  @JsonKey(name: BT) bt
  @JsonKey(name: BV) bv
  @JsonKey(name: BW) bw
  @JsonKey(name: BY) by
  @JsonKey(name: BZ) bz
  @JsonKey(name: CA) ca
  @JsonKey(name: CC) cc
  @JsonKey(name: CD) cd
  @JsonKey(name: CF) cf
  @JsonKey(name: CG) cg
  @JsonKey(name: CH) ch
  @JsonKey(name: CI) ci
  @JsonKey(name: CK) ck
  @JsonKey(name: CL) cl
  @JsonKey(name: CM) cm
  @JsonKey(name: CN) cn
  @JsonKey(name: CO) co
  @JsonKey(name: CR) cr
  @JsonKey(name: CU) cu
  @JsonKey(name: CV) cv
  @JsonKey(name: CW) cw
  @JsonKey(name: CX) cx
  @JsonKey(name: CY) cy
  @JsonKey(name: CZ) cz
  @JsonKey(name: DE) de
  @JsonKey(name: DJ) dj
  @JsonKey(name: DK) dk
  @JsonKey(name: DM) dm
  @JsonKey(name: DO) do
  @JsonKey(name: DZ) dz
  @JsonKey(name: EC) ec
  @JsonKey(name: EE) ee
  @JsonKey(name: EG) eg
  @JsonKey(name: EH) eh
  @JsonKey(name: ER) er
  @JsonKey(name: ES) es
  @JsonKey(name: ET) et
  @JsonKey(name: EU) eu
  @JsonKey(name: FI) fi
  @JsonKey(name: FJ) fj
  @JsonKey(name: FK) fk
  @JsonKey(name: FM) fm
  @JsonKey(name: FO) fo
  @JsonKey(name: FR) fr
  @JsonKey(name: GA) ga
  @JsonKey(name: GB) gb
  @JsonKey(name: GD) gd
  @JsonKey(name: GE) ge
  @JsonKey(name: GF) gf
  @JsonKey(name: GG) gg
  @JsonKey(name: GH) gh
  @JsonKey(name: GI) gi
  @JsonKey(name: GL) gl
  @JsonKey(name: GM) gm
  @JsonKey(name: GN) gn
  @JsonKey(name: GP) gp
  @JsonKey(name: GQ) gq
  @JsonKey(name: GR) gr
  @JsonKey(name: GS) gs
  @JsonKey(name: GT) gt
  @JsonKey(name: GU) gu
  @JsonKey(name: GW) gw
  @JsonKey(name: GY) gy
  @JsonKey(name: HK) hk
  @JsonKey(name: HM) hm
  @JsonKey(name: HN) hn
  @JsonKey(name: HR) hr
  @JsonKey(name: HT) ht
  @JsonKey(name: HU) hu
  @JsonKey(name: ID) id
  @JsonKey(name: IE) ie
  @JsonKey(name: IL) il
  @JsonKey(name: IM) im
  @JsonKey(name: IN) in
  @JsonKey(name: IO) io
  @JsonKey(name: IQ) iq
  @JsonKey(name: IR) ir
  @JsonKey(name: IS) is
  @JsonKey(name: IT) it
  @JsonKey(name: JE) je
  @JsonKey(name: JM) jm
  @JsonKey(name: JO) jo
  @JsonKey(name: JP) jp
  @JsonKey(name: KE) ke
  @JsonKey(name: KG) kg
  @JsonKey(name: KH) kh
  @JsonKey(name: KI) ki
  @JsonKey(name: KM) km
  @JsonKey(name: KN) kn
  @JsonKey(name: KP) kp
  @JsonKey(name: KR) kr
  @JsonKey(name: KW) kw
  @JsonKey(name: KY) ky
  @JsonKey(name: KZ) kz
  @JsonKey(name: LA) la
  @JsonKey(name: LB) lb
  @JsonKey(name: LC) lc
  @JsonKey(name: LI) li
  @JsonKey(name: LK) lk
  @JsonKey(name: LR) lr
  @JsonKey(name: LS) ls
  @JsonKey(name: LT) lt
  @JsonKey(name: LU) lu
  @JsonKey(name: LV) lv
  @JsonKey(name: LY) ly
  @JsonKey(name: MA) ma
  @JsonKey(name: MC) mc
  @JsonKey(name: MD) md
  @JsonKey(name: ME) me
  @JsonKey(name: MF) mf
  @JsonKey(name: MG) mg
  @JsonKey(name: MH) mh
  @JsonKey(name: MK) mk
  @JsonKey(name: ML) ml
  @JsonKey(name: MM) mm
  @JsonKey(name: MN) mn
  @JsonKey(name: MO) mo
  @JsonKey(name: MP) mp
  @JsonKey(name: MQ) mq
  @JsonKey(name: MR) mr
  @JsonKey(name: MS) ms
  @JsonKey(name: MT) mt
  @JsonKey(name: MU) mu
  @JsonKey(name: MV) mv
  @JsonKey(name: MW) mw
  @JsonKey(name: MX) mx
  @JsonKey(name: MY) my
  @JsonKey(name: MZ) mz
  @JsonKey(name: NA) na
  @JsonKey(name: NC) nc
  @JsonKey(name: NE) ne
  @JsonKey(name: NF) nf
  @JsonKey(name: NG) ng
  @JsonKey(name: NI) ni
  @JsonKey(name: NL) nl
  @JsonKey(name: NO) no
  @JsonKey(name: NP) np
  @JsonKey(name: NR) nr
  @JsonKey(name: NU) nu
  @JsonKey(name: NZ) nz
  @JsonKey(name: OM) om
  @JsonKey(name: PA) pa
  @JsonKey(name: PE) pe
  @JsonKey(name: PF) pf
  @JsonKey(name: PG) pg
  @JsonKey(name: PH) ph
  @JsonKey(name: PK) pk
  @JsonKey(name: PL) pl
  @JsonKey(name: PM) pm
  @JsonKey(name: PN) pn
  @JsonKey(name: PR) pr
  @JsonKey(name: PS) ps
  @JsonKey(name: PT) pt
  @JsonKey(name: PW) pw
  @JsonKey(name: PY) py
  @JsonKey(name: QA) qa
  @JsonKey(name: RE) re
  @JsonKey(name: RO) ro
  @JsonKey(name: RS) rs
  @JsonKey(name: RU) ru
  @JsonKey(name: RW) rw
  @JsonKey(name: SA) sa
  @JsonKey(name: SB) sb
  @JsonKey(name: SC) sc
  @JsonKey(name: SD) sd
  @JsonKey(name: SE) se
  @JsonKey(name: SG) sg
  @JsonKey(name: SH) sh
  @JsonKey(name: SI) si
  @JsonKey(name: SJ) sj
  @JsonKey(name: SK) sk
  @JsonKey(name: SL) sl
  @JsonKey(name: SM) sm
  @JsonKey(name: SN) sn
  @JsonKey(name: SO) so
  @JsonKey(name: SR) sr
  @JsonKey(name: SS) ss
  @JsonKey(name: ST) st
  @JsonKey(name: SV) sv
  @JsonKey(name: SX) sx
  @JsonKey(name: SY) sy
  @JsonKey(name: SZ) sz
  @JsonKey(name: TC) tc
  @JsonKey(name: TD) td
  @JsonKey(name: TF) tf
  @JsonKey(name: TG) tg
  @JsonKey(name: TH) th
  @JsonKey(name: TJ) tj
  @JsonKey(name: TK) tk
  @JsonKey(name: TL) tl
  @JsonKey(name: TM) tm
  @JsonKey(name: TN) tn
  @JsonKey(name: TO) to
  @JsonKey(name: TR) tr
  @JsonKey(name: TT) tt
  @JsonKey(name: TV) tv
  @JsonKey(name: TW) tw
  @JsonKey(name: TZ) tz
  @JsonKey(name: UA) ua
  @JsonKey(name: UG) ug
  @JsonKey(name: UM) um
  @JsonKey(name: US) us
  @JsonKey(name: UY) uy
  @JsonKey(name: UZ) uz
  @JsonKey(name: VA) va
  @JsonKey(name: VC) vc
  @JsonKey(name: VE) ve
  @JsonKey(name: VG) vg
  @JsonKey(name: VI) vi
  @JsonKey(name: VN) vn
  @JsonKey(name: VU) vu
  @JsonKey(name: WF) wf
  @JsonKey(name: WS) ws
  @JsonKey(name: YE) ye
  @JsonKey(name: YT) yt
  @JsonKey(name: ZA) za
  @JsonKey(name: ZM) zm
  @JsonKey(name: ZW) zw
}

@freezed
class CountryDisplay with _$CountryDisplay {
  const CountryDisplay._();

  const factory CountryDisplay({
    /// Country code.
    required String code,
    /// Country name.
    required String country,
    /// Country tax.
    VAT? vat,
  }) = _CountryDisplay;

  factory CountryDisplay.fromJson(Map<String, Object?> json) => _CountryDisplayFromJson(json);
}

@unfreezed
class CountryFilterInput with _$CountryFilterInput {
  const CountryFilterInput._();

  const factory CountryFilterInput({
    /// Boolean for filtering countries by having shipping zone assigned.If 'true', return countries with shipping zone assigned.If 'false', return countries without any shipping zone assigned.If the argument is not provided (null), return all countries.
    bool? attachedToShippingZones,
  }) = _CountryFilterInput;

  factory CountryFilterInput.fromJson(Map<String, Object?> json) => _CountryFilterInputFromJson(json);
}

/// Create JWT token. 
@freezed
class CreateToken with _$CreateToken {
  const CreateToken._();

  /// Create JWT token. 
  const factory CreateToken({
    required List<AccountError> accountErrors,
    /// CSRF token required to re-generate access token.
    String? csrfToken,
    required List<AccountError> errors,
    /// JWT refresh token, required to re-generate access token.
    String? refreshToken,
    /// JWT token, required to authenticate.
    String? token,
    /// A user instance.
    User? user,
  }) = _CreateToken;

  factory CreateToken.fromJson(Map<String, Object?> json) => _CreateTokenFromJson(json);
}

@freezed
class CreditCard with _$CreditCard {
  const CreditCard._();

  const factory CreditCard({
    /// Card brand.
    required String brand,
    /// Two-digit number representing the card’s expiration month.
    int? expMonth,
    /// Four-digit number representing the card’s expiration year.
    int? expYear,
    /// First 4 digits of the card number.
    String? firstDigits,
    /// Last 4 digits of the card number.
    required String lastDigits,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, Object?> json) => _CreditCardFromJson(json);
}

/// Deletes customers. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class CustomerBulkDelete with _$CustomerBulkDelete {
  const CustomerBulkDelete._();

  /// Deletes customers. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory CustomerBulkDelete({
    required List<AccountError> accountErrors,
    /// Returns how many objects were affected.
    required int count,
    required List<AccountError> errors,
  }) = _CustomerBulkDelete;

  factory CustomerBulkDelete.fromJson(Map<String, Object?> json) => _CustomerBulkDeleteFromJson(json);
}

/// Creates a new customer. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class CustomerCreate with _$CustomerCreate {
  const CustomerCreate._();

  /// Creates a new customer. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory CustomerCreate({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    User? user,
  }) = _CustomerCreate;

  factory CustomerCreate.fromJson(Map<String, Object?> json) => _CustomerCreateFromJson(json);
}

/// Event sent when new customer user is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CustomerCreated with _$CustomerCreated {
  const CustomerCreated._();

  /// Event sent when new customer user is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CustomerCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The user the event relates to.
    User? user,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CustomerCreated;

  factory CustomerCreated.fromJson(Map<String, Object?> json) => _CustomerCreatedFromJson(json);
}

/// Deletes a customer. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class CustomerDelete with _$CustomerDelete {
  const CustomerDelete._();

  /// Deletes a customer. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory CustomerDelete({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    User? user,
  }) = _CustomerDelete;

  factory CustomerDelete.fromJson(Map<String, Object?> json) => _CustomerDeleteFromJson(json);
}

/// History log of the customer. 
@freezed
class CustomerEvent with _$CustomerEvent {
  const CustomerEvent._();

  /// History log of the customer. 
  const factory CustomerEvent({
    /// App that performed the action.
    App? app,
    /// Number of objects concerned by the event.
    int? count,
    /// Date when event happened at in ISO 8601 format.
    DateTime? date,
    required String id,
    /// Content of the event.
    String? message,
    /// The concerned order.
    Order? order,
    /// The concerned order line.
    OrderLine? orderLine,
    /// Customer event type.
    CustomerEventsEnum? type,
    /// User who performed the action.
    User? user,
  }) = _CustomerEvent;

  factory CustomerEvent.fromJson(Map<String, Object?> json) => _CustomerEventFromJson(json);
}

enum CustomerEventsEnum{
  @JsonKey(name: ACCOUNT_ACTIVATED) account_activated
  @JsonKey(name: ACCOUNT_CREATED) account_created
  @JsonKey(name: ACCOUNT_DEACTIVATED) account_deactivated
  @JsonKey(name: CUSTOMER_DELETED) customer_deleted
  @JsonKey(name: DIGITAL_LINK_DOWNLOADED) digital_link_downloaded
  @JsonKey(name: EMAIL_ASSIGNED) email_assigned
  @JsonKey(name: EMAIL_CHANGED) email_changed
  @JsonKey(name: EMAIL_CHANGED_REQUEST) email_changed_request
  @JsonKey(name: NAME_ASSIGNED) name_assigned
  @JsonKey(name: NOTE_ADDED) note_added
  @JsonKey(name: NOTE_ADDED_TO_ORDER) note_added_to_order
  @JsonKey(name: PASSWORD_CHANGED) password_changed
  @JsonKey(name: PASSWORD_RESET) password_reset
  @JsonKey(name: PASSWORD_RESET_LINK_SENT) password_reset_link_sent
  @JsonKey(name: PLACED_ORDER) placed_order
}

@unfreezed
class CustomerFilterInput with _$CustomerFilterInput {
  const CustomerFilterInput._();

  const factory CustomerFilterInput({
    DateRangeInput? dateJoined,
    List<MetadataFilter>? metadata,
    IntRangeInput? numberOfOrders,
    DateRangeInput? placedOrders,
    String? search,
    DateTimeRangeInput? updatedAt,
  }) = _CustomerFilterInput;

  factory CustomerFilterInput.fromJson(Map<String, Object?> json) => _CustomerFilterInputFromJson(json);
}

@unfreezed
class CustomerInput with _$CustomerInput {
  const CustomerInput._();

  const factory CustomerInput({
    /// Billing address of the customer.
    AddressInput? defaultBillingAddress,
    /// Shipping address of the customer.
    AddressInput? defaultShippingAddress,
    /// The unique email address of the user.
    String? email,
    /// Given name.
    String? firstName,
    /// User account is active.
    bool? isActive,
    /// User language code.
    LanguageCodeEnum? languageCode,
    /// Family name.
    String? lastName,
    /// A note about the user.
    String? note,
  }) = _CustomerInput;

  factory CustomerInput.fromJson(Map<String, Object?> json) => _CustomerInputFromJson(json);
}

/// Updates an existing customer. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class CustomerUpdate with _$CustomerUpdate {
  const CustomerUpdate._();

  /// Updates an existing customer. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory CustomerUpdate({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    User? user,
  }) = _CustomerUpdate;

  factory CustomerUpdate.fromJson(Map<String, Object?> json) => _CustomerUpdateFromJson(json);
}

/// Event sent when customer user is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class CustomerUpdated with _$CustomerUpdated {
  const CustomerUpdated._();

  /// Event sent when customer user is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory CustomerUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The user the event relates to.
    User? user,
    /// Saleor version that triggered the event.
    String? version,
  }) = _CustomerUpdated;

  factory CustomerUpdated.fromJson(Map<String, Object?> json) => _CustomerUpdatedFromJson(json);
}

@unfreezed
class DateRangeInput with _$DateRangeInput {
  const DateRangeInput._();

  const factory DateRangeInput({
    /// Start date.
    Date? gte,
    /// End date.
    Date? lte,
  }) = _DateRangeInput;

  factory DateRangeInput.fromJson(Map<String, Object?> json) => _DateRangeInputFromJson(json);
}

@unfreezed
class DateTimeRangeInput with _$DateTimeRangeInput {
  const DateTimeRangeInput._();

  const factory DateTimeRangeInput({
    /// Start date.
    DateTime? gte,
    /// End date.
    DateTime? lte,
  }) = _DateTimeRangeInput;

  factory DateTimeRangeInput.fromJson(Map<String, Object?> json) => _DateTimeRangeInputFromJson(json);
}

/// Deactivate all JWT tokens of the currently authenticated user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class DeactivateAllUserTokens with _$DeactivateAllUserTokens {
  const DeactivateAllUserTokens._();

  /// Deactivate all JWT tokens of the currently authenticated user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory DeactivateAllUserTokens({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
  }) = _DeactivateAllUserTokens;

  factory DeactivateAllUserTokens.fromJson(Map<String, Object?> json) => _DeactivateAllUserTokensFromJson(json);
}

/// Delete metadata of an object. To use it, you need to have access to the modified object. 
@freezed
class DeleteMetadata with _$DeleteMetadata {
  const DeleteMetadata._();

  /// Delete metadata of an object. To use it, you need to have access to the modified object. 
  const factory DeleteMetadata({
    required List<MetadataError> errors,
    ObjectWithMetadata? item,
    required List<MetadataError> metadataErrors,
  }) = _DeleteMetadata;

  factory DeleteMetadata.fromJson(Map<String, Object?> json) => _DeleteMetadataFromJson(json);
}

/// Delete object's private metadata. To use it, you need to be an authenticated staff user or an app and have access to the modified object. 
@freezed
class DeletePrivateMetadata with _$DeletePrivateMetadata {
  const DeletePrivateMetadata._();

  /// Delete object's private metadata. To use it, you need to be an authenticated staff user or an app and have access to the modified object. 
  const factory DeletePrivateMetadata({
    required List<MetadataError> errors,
    ObjectWithMetadata? item,
    required List<MetadataError> metadataErrors,
  }) = _DeletePrivateMetadata;

  factory DeletePrivateMetadata.fromJson(Map<String, Object?> json) => _DeletePrivateMetadataFromJson(json);
}

/// Represents a delivery method chosen for the checkout. `Warehouse` type is used when checkout is marked as "click and collect" and `ShippingMethod` otherwise.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class DeliveryMethod with _$DeliveryMethod {
  const DeliveryMethod._();

  const factory DeliveryMethod() = _DeliveryMethod;

  /// Shipping methods that can be used as means of shipping for orders and checkouts. 
  const factory DeliveryMethod.shippingMethod({
    /// Describes if this shipping method is active and can be selected.
    required bool active,
    /// Shipping method description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Unique ID of ShippingMethod available for Order.
    required String id,
    /// Maximum delivery days for this shipping method.
    int? maximumDeliveryDays,
    /// Maximum order price for this shipping method.
    Money? maximumOrderPrice,
    /// Maximum order weight for this shipping method.
    Weight? maximumOrderWeight,
    /// Message connected to this shipping method.
    String? message,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Minimum delivery days for this shipping method.
    int? minimumDeliveryDays,
    /// Minimal order price for this shipping method.
    Money? minimumOrderPrice,
    /// Minimum order weight for this shipping method.
    Weight? minimumOrderWeight,
    /// Shipping method name.
    required String name,
    /// The price of selected shipping method.
    required Money price,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Returns translated shipping method fields for the given language code.
    ShippingMethodTranslation? translation,
    /// Type of the shipping method.
    ShippingMethodTypeEnum? type,
  }) = ShippingMethod;

  /// Represents warehouse. 
  const factory DeliveryMethod.warehouse({
    required Address address,
    /// Click and collect options: local, all or disabled.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required WarehouseClickAndCollectOptionEnum clickAndCollectOption,
    /// Warehouse company name.
    required String companyName,
    required String email,
    required String id,
    required bool isPrivate,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required ShippingZoneCountableConnection shippingZones,
    required String slug,
  }) = Warehouse;

  factory DeliveryMethod.fromJson(Map<String, Object?> json) => _DeliveryMethodFromJson(json);
}

@freezed
class DigitalContent with _$DigitalContent {
  const DigitalContent._();

  const factory DigitalContent({
    required bool automaticFulfillment,
    required String contentFile,
    required String id,
    int? maxDownloads,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Product variant assigned to digital content.
    required ProductVariant productVariant,
    int? urlValidDays,
    /// List of URLs for the digital variant.
    List<DigitalContentUrl>? urls,
    required bool useDefaultSettings,
  }) = _DigitalContent;

  factory DigitalContent.fromJson(Map<String, Object?> json) => _DigitalContentFromJson(json);
}

@freezed
class DigitalContentCountableConnection with _$DigitalContentCountableConnection {
  const DigitalContentCountableConnection._();

  const factory DigitalContentCountableConnection({
    required List<DigitalContentCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _DigitalContentCountableConnection;

  factory DigitalContentCountableConnection.fromJson(Map<String, Object?> json) => _DigitalContentCountableConnectionFromJson(json);
}

@freezed
class DigitalContentCountableEdge with _$DigitalContentCountableEdge {
  const DigitalContentCountableEdge._();

  const factory DigitalContentCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required DigitalContent node,
  }) = _DigitalContentCountableEdge;

  factory DigitalContentCountableEdge.fromJson(Map<String, Object?> json) => _DigitalContentCountableEdgeFromJson(json);
}

/// Create new digital content. This mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class DigitalContentCreate with _$DigitalContentCreate {
  const DigitalContentCreate._();

  /// Create new digital content. This mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory DigitalContentCreate({
    DigitalContent? content,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductVariant? variant,
  }) = _DigitalContentCreate;

  factory DigitalContentCreate.fromJson(Map<String, Object?> json) => _DigitalContentCreateFromJson(json);
}

/// Remove digital content assigned to given variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class DigitalContentDelete with _$DigitalContentDelete {
  const DigitalContentDelete._();

  /// Remove digital content assigned to given variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory DigitalContentDelete({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductVariant? variant,
  }) = _DigitalContentDelete;

  factory DigitalContentDelete.fromJson(Map<String, Object?> json) => _DigitalContentDeleteFromJson(json);
}

@unfreezed
class DigitalContentInput with _$DigitalContentInput {
  const DigitalContentInput._();

  const factory DigitalContentInput({
    /// Overwrite default automatic_fulfillment setting for variant.
    bool? automaticFulfillment,
    /// Determines how many times a download link can be accessed by a customer.
    int? maxDownloads,
    /// Determines for how many days a download link is active since it was generated.
    int? urlValidDays,
    /// Use default digital content settings for this product.
    required bool useDefaultSettings,
  }) = _DigitalContentInput;

  factory DigitalContentInput.fromJson(Map<String, Object?> json) => _DigitalContentInputFromJson(json);
}

/// Update digital content. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class DigitalContentUpdate with _$DigitalContentUpdate {
  const DigitalContentUpdate._();

  /// Update digital content. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory DigitalContentUpdate({
    DigitalContent? content,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductVariant? variant,
  }) = _DigitalContentUpdate;

  factory DigitalContentUpdate.fromJson(Map<String, Object?> json) => _DigitalContentUpdateFromJson(json);
}

@unfreezed
class DigitalContentUploadInput with _$DigitalContentUploadInput {
  const DigitalContentUploadInput._();

  const factory DigitalContentUploadInput({
    /// Overwrite default automatic_fulfillment setting for variant.
    bool? automaticFulfillment,
    /// Represents an file in a multipart request.
    required Upload contentFile,
    /// Determines how many times a download link can be accessed by a customer.
    int? maxDownloads,
    /// Determines for how many days a download link is active since it was generated.
    int? urlValidDays,
    /// Use default digital content settings for this product.
    required bool useDefaultSettings,
  }) = _DigitalContentUploadInput;

  factory DigitalContentUploadInput.fromJson(Map<String, Object?> json) => _DigitalContentUploadInputFromJson(json);
}

@freezed
class DigitalContentUrl with _$DigitalContentUrl {
  const DigitalContentUrl._();

  const factory DigitalContentUrl({
    required DigitalContent content,
    required DateTime created,
    required int downloadNum,
    required String id,
    /// UUID of digital content.
    required UUID token,
    /// URL for digital content.
    String? url,
  }) = _DigitalContentUrl;

  factory DigitalContentUrl.fromJson(Map<String, Object?> json) => _DigitalContentUrlFromJson(json);
}

/// Generate new URL to digital content. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class DigitalContentUrlCreate with _$DigitalContentUrlCreate {
  const DigitalContentUrlCreate._();

  /// Generate new URL to digital content. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory DigitalContentUrlCreate({
    DigitalContentUrl? digitalContentUrl,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _DigitalContentUrlCreate;

  factory DigitalContentUrlCreate.fromJson(Map<String, Object?> json) => _DigitalContentUrlCreateFromJson(json);
}

@unfreezed
class DigitalContentUrlCreateInput with _$DigitalContentUrlCreateInput {
  const DigitalContentUrlCreateInput._();

  const factory DigitalContentUrlCreateInput({
    /// Digital content ID which URL will belong to.
    required String content,
  }) = _DigitalContentUrlCreateInput;

  factory DigitalContentUrlCreateInput.fromJson(Map<String, Object?> json) => _DigitalContentUrlCreateInputFromJson(json);
}

@freezed
class DiscountError with _$DiscountError {
  const DiscountError._();

  const factory DiscountError({
    /// List of channels IDs which causes the error.
    List<String>? channels,
    /// The error code.
    required DiscountErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of products IDs which causes the error.
    List<String>? products,
  }) = _DiscountError;

  factory DiscountError.fromJson(Map<String, Object?> json) => _DiscountErrorFromJson(json);
}

enum DiscountErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: CANNOT_MANAGE_PRODUCT_WITHOUT_VARIANT) cannot_manage_product_without_variant
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

enum DiscountStatusEnum{
  @JsonKey(name: ACTIVE) active
  @JsonKey(name: EXPIRED) expired
  @JsonKey(name: SCHEDULED) scheduled
}

enum DiscountValueTypeEnum{
  @JsonKey(name: FIXED) fixed
  @JsonKey(name: PERCENTAGE) percentage
}

enum DistanceUnitsEnum{
  @JsonKey(name: CM) cm
  @JsonKey(name: FT) ft
  @JsonKey(name: INCH) inch
  @JsonKey(name: KM) km
  @JsonKey(name: M) m
  @JsonKey(name: YD) yd
}

/// Represents shop's domain. 
@freezed
class Domain with _$Domain {
  const Domain._();

  /// Represents shop's domain. 
  const factory Domain({
    /// The host name of the domain.
    required String host,
    /// Inform if SSL is enabled.
    required bool sslEnabled,
    /// Shop's absolute URL.
    required String url,
  }) = _Domain;

  factory Domain.fromJson(Map<String, Object?> json) => _DomainFromJson(json);
}

/// Deletes draft orders. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class DraftOrderBulkDelete with _$DraftOrderBulkDelete {
  const DraftOrderBulkDelete._();

  /// Deletes draft orders. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory DraftOrderBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<OrderError> errors,
    required List<OrderError> orderErrors,
  }) = _DraftOrderBulkDelete;

  factory DraftOrderBulkDelete.fromJson(Map<String, Object?> json) => _DraftOrderBulkDeleteFromJson(json);
}

/// Completes creating an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class DraftOrderComplete with _$DraftOrderComplete {
  const DraftOrderComplete._();

  /// Completes creating an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory DraftOrderComplete({
    required List<OrderError> errors,
    /// Completed order.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _DraftOrderComplete;

  factory DraftOrderComplete.fromJson(Map<String, Object?> json) => _DraftOrderCompleteFromJson(json);
}

/// Creates a new draft order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class DraftOrderCreate with _$DraftOrderCreate {
  const DraftOrderCreate._();

  /// Creates a new draft order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory DraftOrderCreate({
    required List<OrderError> errors,
    Order? order,
    required List<OrderError> orderErrors,
  }) = _DraftOrderCreate;

  factory DraftOrderCreate.fromJson(Map<String, Object?> json) => _DraftOrderCreateFromJson(json);
}

@unfreezed
class DraftOrderCreateInput with _$DraftOrderCreateInput {
  const DraftOrderCreateInput._();

  const factory DraftOrderCreateInput({
    /// Billing address of the customer.
    AddressInput? billingAddress,
    /// ID of the channel associated with the order.
    String? channelId,
    /// A note from a customer. Visible by customers in the order summary.
    String? customerNote,
    /// Discount amount for the order.
    PositiveDecimal? discount,
    /// Variant line input consisting of variant ID and quantity of products.
    List<OrderLineCreateInput>? lines,
    /// URL of a view where users should be redirected to see the order details. URL in RFC 1808 format.
    String? redirectUrl,
    /// Shipping address of the customer.
    AddressInput? shippingAddress,
    /// ID of a selected shipping method.
    String? shippingMethod,
    /// Customer associated with the draft order.
    String? user,
    /// Email address of the customer.
    String? userEmail,
    /// ID of the voucher associated with the order.
    String? voucher,
  }) = _DraftOrderCreateInput;

  factory DraftOrderCreateInput.fromJson(Map<String, Object?> json) => _DraftOrderCreateInputFromJson(json);
}

/// Event sent when new draft order is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class DraftOrderCreated with _$DraftOrderCreated {
  const DraftOrderCreated._();

  /// Event sent when new draft order is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory DraftOrderCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _DraftOrderCreated;

  factory DraftOrderCreated.fromJson(Map<String, Object?> json) => _DraftOrderCreatedFromJson(json);
}

/// Deletes a draft order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class DraftOrderDelete with _$DraftOrderDelete {
  const DraftOrderDelete._();

  /// Deletes a draft order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory DraftOrderDelete({
    required List<OrderError> errors,
    Order? order,
    required List<OrderError> orderErrors,
  }) = _DraftOrderDelete;

  factory DraftOrderDelete.fromJson(Map<String, Object?> json) => _DraftOrderDeleteFromJson(json);
}

/// Event sent when draft order is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class DraftOrderDeleted with _$DraftOrderDeleted {
  const DraftOrderDeleted._();

  /// Event sent when draft order is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory DraftOrderDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _DraftOrderDeleted;

  factory DraftOrderDeleted.fromJson(Map<String, Object?> json) => _DraftOrderDeletedFromJson(json);
}

@unfreezed
class DraftOrderInput with _$DraftOrderInput {
  const DraftOrderInput._();

  const factory DraftOrderInput({
    /// Billing address of the customer.
    AddressInput? billingAddress,
    /// ID of the channel associated with the order.
    String? channelId,
    /// A note from a customer. Visible by customers in the order summary.
    String? customerNote,
    /// Discount amount for the order.
    PositiveDecimal? discount,
    /// URL of a view where users should be redirected to see the order details. URL in RFC 1808 format.
    String? redirectUrl,
    /// Shipping address of the customer.
    AddressInput? shippingAddress,
    /// ID of a selected shipping method.
    String? shippingMethod,
    /// Customer associated with the draft order.
    String? user,
    /// Email address of the customer.
    String? userEmail,
    /// ID of the voucher associated with the order.
    String? voucher,
  }) = _DraftOrderInput;

  factory DraftOrderInput.fromJson(Map<String, Object?> json) => _DraftOrderInputFromJson(json);
}

/// Deletes order lines. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class DraftOrderLinesBulkDelete with _$DraftOrderLinesBulkDelete {
  const DraftOrderLinesBulkDelete._();

  /// Deletes order lines. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory DraftOrderLinesBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<OrderError> errors,
    required List<OrderError> orderErrors,
  }) = _DraftOrderLinesBulkDelete;

  factory DraftOrderLinesBulkDelete.fromJson(Map<String, Object?> json) => _DraftOrderLinesBulkDeleteFromJson(json);
}

/// Updates a draft order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class DraftOrderUpdate with _$DraftOrderUpdate {
  const DraftOrderUpdate._();

  /// Updates a draft order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory DraftOrderUpdate({
    required List<OrderError> errors,
    Order? order,
    required List<OrderError> orderErrors,
  }) = _DraftOrderUpdate;

  factory DraftOrderUpdate.fromJson(Map<String, Object?> json) => _DraftOrderUpdateFromJson(json);
}

/// Event sent when draft order is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class DraftOrderUpdated with _$DraftOrderUpdated {
  const DraftOrderUpdated._();

  /// Event sent when draft order is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory DraftOrderUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _DraftOrderUpdated;

  factory DraftOrderUpdated.fromJson(Map<String, Object?> json) => _DraftOrderUpdatedFromJson(json);
}

/// Event delivery. 
@freezed
class EventDelivery with _$EventDelivery {
  const EventDelivery._();

  /// Event delivery. 
  const factory EventDelivery({
    /// Event delivery attempts.
    EventDeliveryAttemptCountableConnection? attempts,
    required DateTime createdAt,
    /// Webhook event type.
    required WebhookEventTypeEnum eventType,
    required String id,
    /// Event payload.
    String? payload,
    /// Event delivery status.
    required EventDeliveryStatusEnum status,
  }) = _EventDelivery;

  factory EventDelivery.fromJson(Map<String, Object?> json) => _EventDeliveryFromJson(json);
}

/// Event delivery attempts. 
@freezed
class EventDeliveryAttempt with _$EventDeliveryAttempt {
  const EventDeliveryAttempt._();

  /// Event delivery attempts. 
  const factory EventDeliveryAttempt({
    /// Event delivery creation date and time.
    required DateTime createdAt,
    /// Delivery attempt duration.
    double? duration,
    required String id,
    /// Request headers for delivery attempt.
    String? requestHeaders,
    /// Delivery attempt response content.
    String? response,
    /// Response headers for delivery attempt.
    String? responseHeaders,
    /// Delivery attempt response status code.
    int? responseStatusCode,
    /// Event delivery status.
    required EventDeliveryStatusEnum status,
    /// Task id for delivery attempt.
    String? taskId,
  }) = _EventDeliveryAttempt;

  factory EventDeliveryAttempt.fromJson(Map<String, Object?> json) => _EventDeliveryAttemptFromJson(json);
}

@freezed
class EventDeliveryAttemptCountableConnection with _$EventDeliveryAttemptCountableConnection {
  const EventDeliveryAttemptCountableConnection._();

  const factory EventDeliveryAttemptCountableConnection({
    required List<EventDeliveryAttemptCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _EventDeliveryAttemptCountableConnection;

  factory EventDeliveryAttemptCountableConnection.fromJson(Map<String, Object?> json) => _EventDeliveryAttemptCountableConnectionFromJson(json);
}

@freezed
class EventDeliveryAttemptCountableEdge with _$EventDeliveryAttemptCountableEdge {
  const EventDeliveryAttemptCountableEdge._();

  const factory EventDeliveryAttemptCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required EventDeliveryAttempt node,
  }) = _EventDeliveryAttemptCountableEdge;

  factory EventDeliveryAttemptCountableEdge.fromJson(Map<String, Object?> json) => _EventDeliveryAttemptCountableEdgeFromJson(json);
}

enum EventDeliveryAttemptSortField{
  /// Sort event delivery attempts by created at. 
@JsonKey(name: CREATED_AT) created_at
}

@unfreezed
class EventDeliveryAttemptSortingInput with _$EventDeliveryAttemptSortingInput {
  const EventDeliveryAttemptSortingInput._();

  const factory EventDeliveryAttemptSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort attempts by the selected field.
    required EventDeliveryAttemptSortField field,
  }) = _EventDeliveryAttemptSortingInput;

  factory EventDeliveryAttemptSortingInput.fromJson(Map<String, Object?> json) => _EventDeliveryAttemptSortingInputFromJson(json);
}

@freezed
class EventDeliveryCountableConnection with _$EventDeliveryCountableConnection {
  const EventDeliveryCountableConnection._();

  const factory EventDeliveryCountableConnection({
    required List<EventDeliveryCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _EventDeliveryCountableConnection;

  factory EventDeliveryCountableConnection.fromJson(Map<String, Object?> json) => _EventDeliveryCountableConnectionFromJson(json);
}

@freezed
class EventDeliveryCountableEdge with _$EventDeliveryCountableEdge {
  const EventDeliveryCountableEdge._();

  const factory EventDeliveryCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required EventDelivery node,
  }) = _EventDeliveryCountableEdge;

  factory EventDeliveryCountableEdge.fromJson(Map<String, Object?> json) => _EventDeliveryCountableEdgeFromJson(json);
}

@unfreezed
class EventDeliveryFilterInput with _$EventDeliveryFilterInput {
  const EventDeliveryFilterInput._();

  const factory EventDeliveryFilterInput({
    WebhookEventTypeEnum? eventType,
    EventDeliveryStatusEnum? status,
  }) = _EventDeliveryFilterInput;

  factory EventDeliveryFilterInput.fromJson(Map<String, Object?> json) => _EventDeliveryFilterInputFromJson(json);
}

/// Retries event delivery. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class EventDeliveryRetry with _$EventDeliveryRetry {
  const EventDeliveryRetry._();

  /// Retries event delivery. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory EventDeliveryRetry({
    /// Event delivery.
    EventDelivery? delivery,
    required List<WebhookError> errors,
  }) = _EventDeliveryRetry;

  factory EventDeliveryRetry.fromJson(Map<String, Object?> json) => _EventDeliveryRetryFromJson(json);
}

enum EventDeliverySortField{
  /// Sort event deliveries by created at. 
@JsonKey(name: CREATED_AT) created_at
}

@unfreezed
class EventDeliverySortingInput with _$EventDeliverySortingInput {
  const EventDeliverySortingInput._();

  const factory EventDeliverySortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort deliveries by the selected field.
    required EventDeliverySortField field,
  }) = _EventDeliverySortingInput;

  factory EventDeliverySortingInput.fromJson(Map<String, Object?> json) => _EventDeliverySortingInputFromJson(json);
}

enum EventDeliveryStatusEnum{
  @JsonKey(name: FAILED) failed
  @JsonKey(name: PENDING) pending
  @JsonKey(name: SUCCESS) success
}

@freezed
class ExportError with _$ExportError {
  const ExportError._();

  const factory ExportError({
    /// The error code.
    required ExportErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _ExportError;

  factory ExportError.fromJson(Map<String, Object?> json) => _ExportErrorFromJson(json);
}

enum ExportErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
}

/// History log of export file. 
@freezed
class ExportEvent with _$ExportEvent {
  const ExportEvent._();

  /// History log of export file. 
  const factory ExportEvent({
    /// App which performed the action. Requires one of the following permissions: OWNER, MANAGE_APPS.
    App? app,
    /// Date when event happened at in ISO 8601 format.
    required DateTime date,
    /// The ID of the object.
    required String id,
    /// Content of the event.
    required String message,
    /// Export event type.
    required ExportEventsEnum type,
    /// User who performed the action. Requires one of the following permissions: OWNER, MANAGE_STAFF.
    User? user,
  }) = _ExportEvent;

  factory ExportEvent.fromJson(Map<String, Object?> json) => _ExportEventFromJson(json);
}

enum ExportEventsEnum{
  @JsonKey(name: EXPORTED_FILE_SENT) exported_file_sent
  @JsonKey(name: EXPORT_DELETED) export_deleted
  @JsonKey(name: EXPORT_FAILED) export_failed
  @JsonKey(name: EXPORT_FAILED_INFO_SENT) export_failed_info_sent
  @JsonKey(name: EXPORT_PENDING) export_pending
  @JsonKey(name: EXPORT_SUCCESS) export_success
}

/// Represents a job data of exported file. 
@freezed
class ExportFile with _$ExportFile {
  const ExportFile._();

  /// Represents a job data of exported file. 
  const factory ExportFile({
    App? app,
    /// Created date time of job in ISO 8601 format.
    required DateTime createdAt,
    /// List of events associated with the export.
    List<ExportEvent>? events,
    required String id,
    /// Job message.
    String? message,
    /// Job status.
    required JobStatusEnum status,
    /// Date time of job last update in ISO 8601 format.
    required DateTime updatedAt,
    /// The URL of field to download.
    String? url,
    User? user,
  }) = _ExportFile;

  factory ExportFile.fromJson(Map<String, Object?> json) => _ExportFileFromJson(json);
}

@freezed
class ExportFileCountableConnection with _$ExportFileCountableConnection {
  const ExportFileCountableConnection._();

  const factory ExportFileCountableConnection({
    required List<ExportFileCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _ExportFileCountableConnection;

  factory ExportFileCountableConnection.fromJson(Map<String, Object?> json) => _ExportFileCountableConnectionFromJson(json);
}

@freezed
class ExportFileCountableEdge with _$ExportFileCountableEdge {
  const ExportFileCountableEdge._();

  const factory ExportFileCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required ExportFile node,
  }) = _ExportFileCountableEdge;

  factory ExportFileCountableEdge.fromJson(Map<String, Object?> json) => _ExportFileCountableEdgeFromJson(json);
}

@unfreezed
class ExportFileFilterInput with _$ExportFileFilterInput {
  const ExportFileFilterInput._();

  const factory ExportFileFilterInput({
    String? app,
    DateTimeRangeInput? createdAt,
    JobStatusEnum? status,
    DateTimeRangeInput? updatedAt,
    String? user,
  }) = _ExportFileFilterInput;

  factory ExportFileFilterInput.fromJson(Map<String, Object?> json) => _ExportFileFilterInputFromJson(json);
}

enum ExportFileSortField{
  @JsonKey(name: CREATED_AT) created_at
  @JsonKey(name: LAST_MODIFIED_AT) last_modified_at
  @JsonKey(name: STATUS) status
  @JsonKey(name: UPDATED_AT) updated_at
}

@unfreezed
class ExportFileSortingInput with _$ExportFileSortingInput {
  const ExportFileSortingInput._();

  const factory ExportFileSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort export file by the selected field.
    required ExportFileSortField field,
  }) = _ExportFileSortingInput;

  factory ExportFileSortingInput.fromJson(Map<String, Object?> json) => _ExportFileSortingInputFromJson(json);
}

/// Export gift cards to csv file.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class ExportGiftCards with _$ExportGiftCards {
  const ExportGiftCards._();

  /// Export gift cards to csv file.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory ExportGiftCards({
    required List<ExportError> errors,
    /// The newly created export file job which is responsible for export data.
    ExportFile? exportFile,
  }) = _ExportGiftCards;

  factory ExportGiftCards.fromJson(Map<String, Object?> json) => _ExportGiftCardsFromJson(json);
}

@unfreezed
class ExportGiftCardsInput with _$ExportGiftCardsInput {
  const ExportGiftCardsInput._();

  const factory ExportGiftCardsInput({
    /// Type of exported file.
    required FileTypesEnum fileType,
    /// Filtering options for gift cards.
    GiftCardFilterInput? filter,
    /// List of gift cards IDs to export.
    List<String>? ids,
    /// Determine which gift cards should be exported.
    required ExportScope scope,
  }) = _ExportGiftCardsInput;

  factory ExportGiftCardsInput.fromJson(Map<String, Object?> json) => _ExportGiftCardsInputFromJson(json);
}

@unfreezed
class ExportInfoInput with _$ExportInfoInput {
  const ExportInfoInput._();

  const factory ExportInfoInput({
    /// List of attribute ids witch should be exported.
    List<String>? attributes,
    /// List of channels ids which should be exported.
    List<String>? channels,
    /// List of product fields witch should be exported.
    List<ProductFieldEnum>? fields,
    /// List of warehouse ids witch should be exported.
    List<String>? warehouses,
  }) = _ExportInfoInput;

  factory ExportInfoInput.fromJson(Map<String, Object?> json) => _ExportInfoInputFromJson(json);
}

/// Export products to csv file. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ExportProducts with _$ExportProducts {
  const ExportProducts._();

  /// Export products to csv file. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ExportProducts({
    required List<ExportError> errors,
    required List<ExportError> exportErrors,
    /// The newly created export file job which is responsible for export data.
    ExportFile? exportFile,
  }) = _ExportProducts;

  factory ExportProducts.fromJson(Map<String, Object?> json) => _ExportProductsFromJson(json);
}

@unfreezed
class ExportProductsInput with _$ExportProductsInput {
  const ExportProductsInput._();

  const factory ExportProductsInput({
    /// Input with info about fields which should be exported.
    ExportInfoInput? exportInfo,
    /// Type of exported file.
    required FileTypesEnum fileType,
    /// Filtering options for products.
    ProductFilterInput? filter,
    /// List of products IDs to export.
    List<String>? ids,
    /// Determine which products should be exported.
    required ExportScope scope,
  }) = _ExportProductsInput;

  factory ExportProductsInput.fromJson(Map<String, Object?> json) => _ExportProductsInputFromJson(json);
}

enum ExportScope{
  /// Export all products. 
@JsonKey(name: ALL) all
  /// Export the filtered products. 
@JsonKey(name: FILTER) filter
  /// Export products with given ids. 
@JsonKey(name: IDS) ids
}

@freezed
class ExternalAuthentication with _$ExternalAuthentication {
  const ExternalAuthentication._();

  const factory ExternalAuthentication({
    /// ID of external authentication plugin.
    required String id,
    /// Name of external authentication plugin.
    String? name,
  }) = _ExternalAuthentication;

  factory ExternalAuthentication.fromJson(Map<String, Object?> json) => _ExternalAuthenticationFromJson(json);
}

/// Prepare external authentication url for user by custom plugin. 
@freezed
class ExternalAuthenticationUrl with _$ExternalAuthenticationUrl {
  const ExternalAuthenticationUrl._();

  /// Prepare external authentication url for user by custom plugin. 
  const factory ExternalAuthenticationUrl({
    required List<AccountError> accountErrors,
    /// The data returned by authentication plugin.
    JSONString? authenticationData,
    required List<AccountError> errors,
  }) = _ExternalAuthenticationUrl;

  factory ExternalAuthenticationUrl.fromJson(Map<String, Object?> json) => _ExternalAuthenticationUrlFromJson(json);
}

/// Logout user by custom plugin. 
@freezed
class ExternalLogout with _$ExternalLogout {
  const ExternalLogout._();

  /// Logout user by custom plugin. 
  const factory ExternalLogout({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// The data returned by authentication plugin.
    JSONString? logoutData,
  }) = _ExternalLogout;

  factory ExternalLogout.fromJson(Map<String, Object?> json) => _ExternalLogoutFromJson(json);
}

@freezed
class ExternalNotificationError with _$ExternalNotificationError {
  const ExternalNotificationError._();

  const factory ExternalNotificationError({
    /// The error code.
    required ExternalNotificationErrorCodes code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _ExternalNotificationError;

  factory ExternalNotificationError.fromJson(Map<String, Object?> json) => _ExternalNotificationErrorFromJson(json);
}

enum ExternalNotificationErrorCodes{
  @JsonKey(name: CHANNEL_INACTIVE) channel_inactive
  @JsonKey(name: INVALID_MODEL_TYPE) invalid_model_type
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
}

/// Trigger sending a notification with the notify plugin method. Serializes nodes provided as ids parameter and includes this data in the notification payload.

Added in Saleor 3.1. 
@freezed
class ExternalNotificationTrigger with _$ExternalNotificationTrigger {
  const ExternalNotificationTrigger._();

  /// Trigger sending a notification with the notify plugin method. Serializes nodes provided as ids parameter and includes this data in the notification payload.

Added in Saleor 3.1. 
  const factory ExternalNotificationTrigger({
    required List<ExternalNotificationError> errors,
  }) = _ExternalNotificationTrigger;

  factory ExternalNotificationTrigger.fromJson(Map<String, Object?> json) => _ExternalNotificationTriggerFromJson(json);
}

@unfreezed
class ExternalNotificationTriggerInput with _$ExternalNotificationTriggerInput {
  const ExternalNotificationTriggerInput._();

  const factory ExternalNotificationTriggerInput({
    /// External event type. This field is passed to a plugin as an event type.
    required String externalEventType,
    /// Additional payload that will be merged with the one based on the bussines object ID.
    JSONString? extraPayload,
    /// The list of customers or orders node IDs that will be serialized and included in the notification payload.
    required List<String> ids,
  }) = _ExternalNotificationTriggerInput;

  factory ExternalNotificationTriggerInput.fromJson(Map<String, Object?> json) => _ExternalNotificationTriggerInputFromJson(json);
}

/// Obtain external access tokens for user by custom plugin. 
@freezed
class ExternalObtainAccessTokens with _$ExternalObtainAccessTokens {
  const ExternalObtainAccessTokens._();

  /// Obtain external access tokens for user by custom plugin. 
  const factory ExternalObtainAccessTokens({
    required List<AccountError> accountErrors,
    /// CSRF token required to re-generate external access token.
    String? csrfToken,
    required List<AccountError> errors,
    /// The refresh token, required to re-generate external access token.
    String? refreshToken,
    /// The token, required to authenticate.
    String? token,
    /// A user instance.
    User? user,
  }) = _ExternalObtainAccessTokens;

  factory ExternalObtainAccessTokens.fromJson(Map<String, Object?> json) => _ExternalObtainAccessTokensFromJson(json);
}

/// Refresh user's access by custom plugin. 
@freezed
class ExternalRefresh with _$ExternalRefresh {
  const ExternalRefresh._();

  /// Refresh user's access by custom plugin. 
  const factory ExternalRefresh({
    required List<AccountError> accountErrors,
    /// CSRF token required to re-generate external access token.
    String? csrfToken,
    required List<AccountError> errors,
    /// The refresh token, required to re-generate external access token.
    String? refreshToken,
    /// The token, required to authenticate.
    String? token,
    /// A user instance.
    User? user,
  }) = _ExternalRefresh;

  factory ExternalRefresh.fromJson(Map<String, Object?> json) => _ExternalRefreshFromJson(json);
}

/// Verify external authentication data by plugin. 
@freezed
class ExternalVerify with _$ExternalVerify {
  const ExternalVerify._();

  /// Verify external authentication data by plugin. 
  const factory ExternalVerify({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// Determine if authentication data is valid or not.
    required bool isValid,
    /// User assigned to data.
    User? user,
    /// External data.
    JSONString? verifyData,
  }) = _ExternalVerify;

  factory ExternalVerify.fromJson(Map<String, Object?> json) => _ExternalVerifyFromJson(json);
}

@freezed
class File with _$File {
  const File._();

  const factory File({
    /// Content type of the file.
    String? contentType,
    /// The URL of the file.
    required String url,
  }) = _File;

  factory File.fromJson(Map<String, Object?> json) => _FileFromJson(json);
}

enum FileTypesEnum{
  @JsonKey(name: CSV) csv
  @JsonKey(name: XLSX) xlsx
}

/// Upload a file. This mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER. 
@freezed
class FileUpload with _$FileUpload {
  const FileUpload._();

  /// Upload a file. This mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER. 
  const factory FileUpload({
    required List<UploadError> errors,
    required List<UploadError> uploadErrors,
    File? uploadedFile,
  }) = _FileUpload;

  factory FileUpload.fromJson(Map<String, Object?> json) => _FileUploadFromJson(json);
}

/// Represents order fulfillment. 
@freezed
class Fulfillment with _$Fulfillment {
  const Fulfillment._();

  /// Represents order fulfillment. 
  const factory Fulfillment({
    required DateTime created,
    required int fulfillmentOrder,
    required String id,
    /// List of lines for the fulfillment.
    List<FulfillmentLine>? lines,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required FulfillmentStatus status,
    /// User-friendly fulfillment status.
    String? statusDisplay,
    required String trackingNumber,
    /// Warehouse from fulfillment was fulfilled.
    Warehouse? warehouse,
  }) = _Fulfillment;

  factory Fulfillment.fromJson(Map<String, Object?> json) => _FulfillmentFromJson(json);
}

/// Approve existing fulfillment.

Added in Saleor 3.1. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class FulfillmentApprove with _$FulfillmentApprove {
  const FulfillmentApprove._();

  /// Approve existing fulfillment.

Added in Saleor 3.1. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory FulfillmentApprove({
    required List<OrderError> errors,
    /// An approved fulfillment.
    Fulfillment? fulfillment,
    /// Order which fulfillment was approved.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _FulfillmentApprove;

  factory FulfillmentApprove.fromJson(Map<String, Object?> json) => _FulfillmentApproveFromJson(json);
}

/// Event sent when fulfillment is approved.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class FulfillmentApproved with _$FulfillmentApproved {
  const FulfillmentApproved._();

  /// Event sent when fulfillment is approved.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory FulfillmentApproved({
    /// The fulfillment the event relates to.
    Fulfillment? fulfillment,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the fulfillment belongs to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _FulfillmentApproved;

  factory FulfillmentApproved.fromJson(Map<String, Object?> json) => _FulfillmentApprovedFromJson(json);
}

/// Cancels existing fulfillment and optionally restocks items. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class FulfillmentCancel with _$FulfillmentCancel {
  const FulfillmentCancel._();

  /// Cancels existing fulfillment and optionally restocks items. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory FulfillmentCancel({
    required List<OrderError> errors,
    /// A canceled fulfillment.
    Fulfillment? fulfillment,
    /// Order which fulfillment was cancelled.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _FulfillmentCancel;

  factory FulfillmentCancel.fromJson(Map<String, Object?> json) => _FulfillmentCancelFromJson(json);
}

@unfreezed
class FulfillmentCancelInput with _$FulfillmentCancelInput {
  const FulfillmentCancelInput._();

  const factory FulfillmentCancelInput({
    /// ID of a warehouse where items will be restocked. Optional when fulfillment is in WAITING_FOR_APPROVAL state.
    String? warehouseId,
  }) = _FulfillmentCancelInput;

  factory FulfillmentCancelInput.fromJson(Map<String, Object?> json) => _FulfillmentCancelInputFromJson(json);
}

/// Event sent when fulfillment is canceled.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class FulfillmentCanceled with _$FulfillmentCanceled {
  const FulfillmentCanceled._();

  /// Event sent when fulfillment is canceled.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory FulfillmentCanceled({
    /// The fulfillment the event relates to.
    Fulfillment? fulfillment,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the fulfillment belongs to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _FulfillmentCanceled;

  factory FulfillmentCanceled.fromJson(Map<String, Object?> json) => _FulfillmentCanceledFromJson(json);
}

/// Event sent when new fulfillment is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class FulfillmentCreated with _$FulfillmentCreated {
  const FulfillmentCreated._();

  /// Event sent when new fulfillment is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory FulfillmentCreated({
    /// The fulfillment the event relates to.
    Fulfillment? fulfillment,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the fulfillment belongs to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _FulfillmentCreated;

  factory FulfillmentCreated.fromJson(Map<String, Object?> json) => _FulfillmentCreatedFromJson(json);
}

/// Represents line of the fulfillment. 
@freezed
class FulfillmentLine with _$FulfillmentLine {
  const FulfillmentLine._();

  /// Represents line of the fulfillment. 
  const factory FulfillmentLine({
    required String id,
    OrderLine? orderLine,
    required int quantity,
  }) = _FulfillmentLine;

  factory FulfillmentLine.fromJson(Map<String, Object?> json) => _FulfillmentLineFromJson(json);
}

/// Refund products. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class FulfillmentRefundProducts with _$FulfillmentRefundProducts {
  const FulfillmentRefundProducts._();

  /// Refund products. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory FulfillmentRefundProducts({
    required List<OrderError> errors,
    /// A refunded fulfillment.
    Fulfillment? fulfillment,
    /// Order which fulfillment was refunded.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _FulfillmentRefundProducts;

  factory FulfillmentRefundProducts.fromJson(Map<String, Object?> json) => _FulfillmentRefundProductsFromJson(json);
}

/// Return products. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class FulfillmentReturnProducts with _$FulfillmentReturnProducts {
  const FulfillmentReturnProducts._();

  /// Return products. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory FulfillmentReturnProducts({
    required List<OrderError> errors,
    /// Order which fulfillment was returned.
    Order? order,
    required List<OrderError> orderErrors,
    /// A replace fulfillment.
    Fulfillment? replaceFulfillment,
    /// A draft order which was created for products with replace flag.
    Order? replaceOrder,
    /// A return fulfillment.
    Fulfillment? returnFulfillment,
  }) = _FulfillmentReturnProducts;

  factory FulfillmentReturnProducts.fromJson(Map<String, Object?> json) => _FulfillmentReturnProductsFromJson(json);
}

enum FulfillmentStatus{
  @JsonKey(name: CANCELED) canceled
  @JsonKey(name: FULFILLED) fulfilled
  @JsonKey(name: REFUNDED) refunded
  @JsonKey(name: REFUNDED_AND_RETURNED) refunded_and_returned
  @JsonKey(name: REPLACED) replaced
  @JsonKey(name: RETURNED) returned
  @JsonKey(name: WAITING_FOR_APPROVAL) waiting_for_approval
}

/// Updates a fulfillment for an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class FulfillmentUpdateTracking with _$FulfillmentUpdateTracking {
  const FulfillmentUpdateTracking._();

  /// Updates a fulfillment for an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory FulfillmentUpdateTracking({
    required List<OrderError> errors,
    /// A fulfillment with updated tracking.
    Fulfillment? fulfillment,
    /// Order for which fulfillment was updated.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _FulfillmentUpdateTracking;

  factory FulfillmentUpdateTracking.fromJson(Map<String, Object?> json) => _FulfillmentUpdateTrackingFromJson(json);
}

@unfreezed
class FulfillmentUpdateTrackingInput with _$FulfillmentUpdateTrackingInput {
  const FulfillmentUpdateTrackingInput._();

  const factory FulfillmentUpdateTrackingInput({
    /// If true, send an email notification to the customer.
    bool? notifyCustomer,
    /// Fulfillment tracking number.
    String? trackingNumber,
  }) = _FulfillmentUpdateTrackingInput;

  factory FulfillmentUpdateTrackingInput.fromJson(Map<String, Object?> json) => _FulfillmentUpdateTrackingInputFromJson(json);
}

/// Payment gateway client configuration key and value pair. 
@freezed
class GatewayConfigLine with _$GatewayConfigLine {
  const GatewayConfigLine._();

  /// Payment gateway client configuration key and value pair. 
  const factory GatewayConfigLine({
    /// Gateway config key.
    required String field,
    /// Gateway config value for key.
    String? value,
  }) = _GatewayConfigLine;

  factory GatewayConfigLine.fromJson(Map<String, Object?> json) => _GatewayConfigLineFromJson(json);
}

/// A gift card is a prepaid electronic payment card accepted in stores. They can be used during checkout by providing a valid gift card codes. 
@freezed
class GiftCard with _$GiftCard {
  const GiftCard._();

  /// A gift card is a prepaid electronic payment card accepted in stores. They can be used during checkout by providing a valid gift card codes. 
  const factory GiftCard({
    /// App which created the gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    App? app,
    /// Slug of the channel where the gift card was bought.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? boughtInChannel,
    /// Gift card code. Can be fetched by a staff member with MANAGE_GIFT_CARD when gift card wasn't yet used and by the gift card owner.
    required String code,
    required DateTime created,
    /// The user who bought or issued a gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    User? createdBy,
    /// Email address of the user who bought or issued gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: MANAGE_USERS, OWNER.
    String? createdByEmail,
    required Money currentBalance,
    /// Code in format which allows displaying in a user interface.
    required String displayCode,
    /// End date of gift card.
    DateTime? endDate,
    /// List of events associated with the gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: MANAGE_GIFT_CARD.
    required List<GiftCardEvent> events,
    Date? expiryDate,
    required String id,
    required Money initialBalance,
    required bool isActive,
    /// Last 4 characters of gift card code.
    required String last4CodeChars,
    DateTime? lastUsedOn,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Related gift card product.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Product? product,
    /// Start date of gift card.
    DateTime? startDate,
    /// The gift card tag.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: MANAGE_GIFT_CARD.
    required List<GiftCardTag> tags,
    /// The customer who used a gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    User? usedBy,
    /// Email address of the customer who used a gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? usedByEmail,
    /// The customer who bought a gift card.
    User? user,
  }) = _GiftCard;

  factory GiftCard.fromJson(Map<String, Object?> json) => _GiftCardFromJson(json);
}

/// Activate a gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardActivate with _$GiftCardActivate {
  const GiftCardActivate._();

  /// Activate a gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardActivate({
    required List<GiftCardError> errors,
    /// Activated gift card.
    GiftCard? giftCard,
    required List<GiftCardError> giftCardErrors,
  }) = _GiftCardActivate;

  factory GiftCardActivate.fromJson(Map<String, Object?> json) => _GiftCardActivateFromJson(json);
}

/// Adds note to the gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardAddNote with _$GiftCardAddNote {
  const GiftCardAddNote._();

  /// Adds note to the gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardAddNote({
    required List<GiftCardError> errors,
    /// Gift card note created.
    GiftCardEvent? event,
    /// Gift card with the note added.
    GiftCard? giftCard,
  }) = _GiftCardAddNote;

  factory GiftCardAddNote.fromJson(Map<String, Object?> json) => _GiftCardAddNoteFromJson(json);
}

@unfreezed
class GiftCardAddNoteInput with _$GiftCardAddNoteInput {
  const GiftCardAddNoteInput._();

  const factory GiftCardAddNoteInput({
    /// Note message.
    required String message,
  }) = _GiftCardAddNoteInput;

  factory GiftCardAddNoteInput.fromJson(Map<String, Object?> json) => _GiftCardAddNoteInputFromJson(json);
}

/// Activate gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardBulkActivate with _$GiftCardBulkActivate {
  const GiftCardBulkActivate._();

  /// Activate gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardBulkActivate({
    /// Returns how many objects were affected.
    required int count,
    required List<GiftCardError> errors,
  }) = _GiftCardBulkActivate;

  factory GiftCardBulkActivate.fromJson(Map<String, Object?> json) => _GiftCardBulkActivateFromJson(json);
}

/// Create gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardBulkCreate with _$GiftCardBulkCreate {
  const GiftCardBulkCreate._();

  /// Create gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardBulkCreate({
    /// Returns how many objects were created.
    required int count,
    required List<GiftCardError> errors,
    /// List of created gift cards.
    required List<GiftCard> giftCards,
  }) = _GiftCardBulkCreate;

  factory GiftCardBulkCreate.fromJson(Map<String, Object?> json) => _GiftCardBulkCreateFromJson(json);
}

@unfreezed
class GiftCardBulkCreateInput with _$GiftCardBulkCreateInput {
  const GiftCardBulkCreateInput._();

  const factory GiftCardBulkCreateInput({
    /// Balance of the gift card.
    required PriceInput balance,
    /// The number of cards to issue.
    required int count,
    /// The gift card expiry date.
    Date? expiryDate,
    /// Determine if gift card is active.
    required bool isActive,
    /// The gift card tags.
    List<String>? tags,
  }) = _GiftCardBulkCreateInput;

  factory GiftCardBulkCreateInput.fromJson(Map<String, Object?> json) => _GiftCardBulkCreateInputFromJson(json);
}

/// Deactivate gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardBulkDeactivate with _$GiftCardBulkDeactivate {
  const GiftCardBulkDeactivate._();

  /// Deactivate gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardBulkDeactivate({
    /// Returns how many objects were affected.
    required int count,
    required List<GiftCardError> errors,
  }) = _GiftCardBulkDeactivate;

  factory GiftCardBulkDeactivate.fromJson(Map<String, Object?> json) => _GiftCardBulkDeactivateFromJson(json);
}

/// Delete gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardBulkDelete with _$GiftCardBulkDelete {
  const GiftCardBulkDelete._();

  /// Delete gift cards.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<GiftCardError> errors,
  }) = _GiftCardBulkDelete;

  factory GiftCardBulkDelete.fromJson(Map<String, Object?> json) => _GiftCardBulkDeleteFromJson(json);
}

@freezed
class GiftCardCountableConnection with _$GiftCardCountableConnection {
  const GiftCardCountableConnection._();

  const factory GiftCardCountableConnection({
    required List<GiftCardCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _GiftCardCountableConnection;

  factory GiftCardCountableConnection.fromJson(Map<String, Object?> json) => _GiftCardCountableConnectionFromJson(json);
}

@freezed
class GiftCardCountableEdge with _$GiftCardCountableEdge {
  const GiftCardCountableEdge._();

  const factory GiftCardCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required GiftCard node,
  }) = _GiftCardCountableEdge;

  factory GiftCardCountableEdge.fromJson(Map<String, Object?> json) => _GiftCardCountableEdgeFromJson(json);
}

/// Creates a new gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardCreate with _$GiftCardCreate {
  const GiftCardCreate._();

  /// Creates a new gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardCreate({
    required List<GiftCardError> errors,
    GiftCard? giftCard,
    required List<GiftCardError> giftCardErrors,
  }) = _GiftCardCreate;

  factory GiftCardCreate.fromJson(Map<String, Object?> json) => _GiftCardCreateFromJson(json);
}

@unfreezed
class GiftCardCreateInput with _$GiftCardCreateInput {
  const GiftCardCreateInput._();

  const factory GiftCardCreateInput({
    /// The gift card tags to add.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<String>? addTags,
    /// Balance of the gift card.
    required PriceInput balance,
    /// Slug of a channel from which the email should be sent.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? channel,
    /// Code to use the gift card. 

DEPRECATED: this field will be removed in Saleor 4.0. The code is now auto generated.
    String? code,
    /// End date of the gift card in ISO 8601 format. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `expiryDate` from `expirySettings` instead.
    Date? endDate,
    /// The gift card expiry date.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Date? expiryDate,
    /// Determine if gift card is active.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required bool isActive,
    /// The gift card note from the staff member.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? note,
    /// Start date of the gift card in ISO 8601 format. 

DEPRECATED: this field will be removed in Saleor 4.0.
    Date? startDate,
    /// Email of the customer to whom gift card will be sent.
    String? userEmail,
  }) = _GiftCardCreateInput;

  factory GiftCardCreateInput.fromJson(Map<String, Object?> json) => _GiftCardCreateInputFromJson(json);
}

/// Event sent when new gift card is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class GiftCardCreated with _$GiftCardCreated {
  const GiftCardCreated._();

  /// Event sent when new gift card is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory GiftCardCreated({
    /// The gift card the event relates to.
    GiftCard? giftCard,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _GiftCardCreated;

  factory GiftCardCreated.fromJson(Map<String, Object?> json) => _GiftCardCreatedFromJson(json);
}

/// Deactivate a gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardDeactivate with _$GiftCardDeactivate {
  const GiftCardDeactivate._();

  /// Deactivate a gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardDeactivate({
    required List<GiftCardError> errors,
    /// Deactivated gift card.
    GiftCard? giftCard,
    required List<GiftCardError> giftCardErrors,
  }) = _GiftCardDeactivate;

  factory GiftCardDeactivate.fromJson(Map<String, Object?> json) => _GiftCardDeactivateFromJson(json);
}

/// Delete gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardDelete with _$GiftCardDelete {
  const GiftCardDelete._();

  /// Delete gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardDelete({
    required List<GiftCardError> errors,
    GiftCard? giftCard,
    required List<GiftCardError> giftCardErrors,
  }) = _GiftCardDelete;

  factory GiftCardDelete.fromJson(Map<String, Object?> json) => _GiftCardDeleteFromJson(json);
}

/// Event sent when gift card is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class GiftCardDeleted with _$GiftCardDeleted {
  const GiftCardDeleted._();

  /// Event sent when gift card is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory GiftCardDeleted({
    /// The gift card the event relates to.
    GiftCard? giftCard,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _GiftCardDeleted;

  factory GiftCardDeleted.fromJson(Map<String, Object?> json) => _GiftCardDeletedFromJson(json);
}

@freezed
class GiftCardError with _$GiftCardError {
  const GiftCardError._();

  const factory GiftCardError({
    /// The error code.
    required GiftCardErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of tag values that cause the error.
    List<String>? tags,
  }) = _GiftCardError;

  factory GiftCardError.fromJson(Map<String, Object?> json) => _GiftCardErrorFromJson(json);
}

enum GiftCardErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: EXPIRED_GIFT_CARD) expired_gift_card
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

/// History log of the gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class GiftCardEvent with _$GiftCardEvent {
  const GiftCardEvent._();

  /// History log of the gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory GiftCardEvent({
    /// App that performed the action. Requires one of the following permissions: MANAGE_APPS, OWNER.
    App? app,
    /// The gift card balance.
    GiftCardEventBalance? balance,
    /// Date when event happened at in ISO 8601 format.
    DateTime? date,
    /// Email of the customer.
    String? email,
    /// The gift card expiry date.
    Date? expiryDate,
    required String id,
    /// Content of the event.
    String? message,
    /// Previous gift card expiry date.
    Date? oldExpiryDate,
    /// The list of old gift card tags.
    List<String>? oldTags,
    /// The order ID where gift card was used or bought.
    String? orderId,
    /// User-friendly number of an order where gift card was used or bought.
    String? orderNumber,
    /// The list of gift card tags.
    List<String>? tags,
    /// Gift card event type.
    GiftCardEventsEnum? type,
    /// User who performed the action. Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF, OWNER.
    User? user,
  }) = _GiftCardEvent;

  factory GiftCardEvent.fromJson(Map<String, Object?> json) => _GiftCardEventFromJson(json);
}

@freezed
class GiftCardEventBalance with _$GiftCardEventBalance {
  const GiftCardEventBalance._();

  const factory GiftCardEventBalance({
    /// Current balance of the gift card.
    required Money currentBalance,
    /// Initial balance of the gift card.
    Money? initialBalance,
    /// Previous current balance of the gift card.
    Money? oldCurrentBalance,
    /// Previous initial balance of the gift card.
    Money? oldInitialBalance,
  }) = _GiftCardEventBalance;

  factory GiftCardEventBalance.fromJson(Map<String, Object?> json) => _GiftCardEventBalanceFromJson(json);
}

@unfreezed
class GiftCardEventFilterInput with _$GiftCardEventFilterInput {
  const GiftCardEventFilterInput._();

  const factory GiftCardEventFilterInput({
    List<String>? orders,
    GiftCardEventsEnum? type,
  }) = _GiftCardEventFilterInput;

  factory GiftCardEventFilterInput.fromJson(Map<String, Object?> json) => _GiftCardEventFilterInputFromJson(json);
}

enum GiftCardEventsEnum{
  @JsonKey(name: ACTIVATED) activated
  @JsonKey(name: BALANCE_RESET) balance_reset
  @JsonKey(name: BOUGHT) bought
  @JsonKey(name: DEACTIVATED) deactivated
  @JsonKey(name: EXPIRY_DATE_UPDATED) expiry_date_updated
  @JsonKey(name: ISSUED) issued
  @JsonKey(name: NOTE_ADDED) note_added
  @JsonKey(name: RESENT) resent
  @JsonKey(name: SENT_TO_CUSTOMER) sent_to_customer
  @JsonKey(name: TAGS_UPDATED) tags_updated
  @JsonKey(name: UPDATED) updated
  @JsonKey(name: USED_IN_ORDER) used_in_order
}

@unfreezed
class GiftCardFilterInput with _$GiftCardFilterInput {
  const GiftCardFilterInput._();

  const factory GiftCardFilterInput({
    String? code,
    String? currency,
    PriceRangeInput? currentBalance,
    PriceRangeInput? initialBalance,
    bool? isActive,
    List<MetadataFilter>? metadata,
    List<String>? products,
    List<String>? tags,
    bool? used,
    List<String>? usedBy,
  }) = _GiftCardFilterInput;

  factory GiftCardFilterInput.fromJson(Map<String, Object?> json) => _GiftCardFilterInputFromJson(json);
}

/// Resend a gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardResend with _$GiftCardResend {
  const GiftCardResend._();

  /// Resend a gift card.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardResend({
    required List<GiftCardError> errors,
    /// Gift card which has been sent.
    GiftCard? giftCard,
  }) = _GiftCardResend;

  factory GiftCardResend.fromJson(Map<String, Object?> json) => _GiftCardResendFromJson(json);
}

@unfreezed
class GiftCardResendInput with _$GiftCardResendInput {
  const GiftCardResendInput._();

  const factory GiftCardResendInput({
    /// Slug of a channel from which the email should be sent.
    required String channel,
    /// Email to which gift card should be send.
    String? email,
    /// ID of a gift card to resend.
    required String id,
  }) = _GiftCardResendInput;

  factory GiftCardResendInput.fromJson(Map<String, Object?> json) => _GiftCardResendInputFromJson(json);
}

/// Gift card related settings from site settings. 
@freezed
class GiftCardSettings with _$GiftCardSettings {
  const GiftCardSettings._();

  /// Gift card related settings from site settings. 
  const factory GiftCardSettings({
    /// The gift card expiry period settings.
    TimePeriod? expiryPeriod,
    /// The gift card expiry type settings.
    required GiftCardSettingsExpiryTypeEnum expiryType,
  }) = _GiftCardSettings;

  factory GiftCardSettings.fromJson(Map<String, Object?> json) => _GiftCardSettingsFromJson(json);
}

@freezed
class GiftCardSettingsError with _$GiftCardSettingsError {
  const GiftCardSettingsError._();

  const factory GiftCardSettingsError({
    /// The error code.
    required GiftCardSettingsErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _GiftCardSettingsError;

  factory GiftCardSettingsError.fromJson(Map<String, Object?> json) => _GiftCardSettingsErrorFromJson(json);
}

enum GiftCardSettingsErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: REQUIRED) required
}

enum GiftCardSettingsExpiryTypeEnum{
  @JsonKey(name: EXPIRY_PERIOD) expiry_period
  @JsonKey(name: NEVER_EXPIRE) never_expire
}

/// Update gift card settings. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardSettingsUpdate with _$GiftCardSettingsUpdate {
  const GiftCardSettingsUpdate._();

  /// Update gift card settings. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardSettingsUpdate({
    required List<GiftCardSettingsError> errors,
    /// Gift card settings.
    GiftCardSettings? giftCardSettings,
  }) = _GiftCardSettingsUpdate;

  factory GiftCardSettingsUpdate.fromJson(Map<String, Object?> json) => _GiftCardSettingsUpdateFromJson(json);
}

@unfreezed
class GiftCardSettingsUpdateInput with _$GiftCardSettingsUpdateInput {
  const GiftCardSettingsUpdateInput._();

  const factory GiftCardSettingsUpdateInput({
    /// Defines gift card expiry period.
    TimePeriodInputType? expiryPeriod,
    /// Defines gift card default expiry settings.
    GiftCardSettingsExpiryTypeEnum? expiryType,
  }) = _GiftCardSettingsUpdateInput;

  factory GiftCardSettingsUpdateInput.fromJson(Map<String, Object?> json) => _GiftCardSettingsUpdateInputFromJson(json);
}

enum GiftCardSortField{
  /// Sort orders by current balance. 
@JsonKey(name: CURRENT_BALANCE) current_balance
  /// Sort orders by product. 
@JsonKey(name: PRODUCT) product
  /// Sort orders by used by. 
@JsonKey(name: USED_BY) used_by
}

@unfreezed
class GiftCardSortingInput with _$GiftCardSortingInput {
  const GiftCardSortingInput._();

  const factory GiftCardSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort gift cards by the selected field.
    required GiftCardSortField field,
  }) = _GiftCardSortingInput;

  factory GiftCardSortingInput.fromJson(Map<String, Object?> json) => _GiftCardSortingInputFromJson(json);
}

/// Event sent when gift card status has changed.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class GiftCardStatusChanged with _$GiftCardStatusChanged {
  const GiftCardStatusChanged._();

  /// Event sent when gift card status has changed.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory GiftCardStatusChanged({
    /// The gift card the event relates to.
    GiftCard? giftCard,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _GiftCardStatusChanged;

  factory GiftCardStatusChanged.fromJson(Map<String, Object?> json) => _GiftCardStatusChangedFromJson(json);
}

/// The gift card tag.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class GiftCardTag with _$GiftCardTag {
  const GiftCardTag._();

  /// The gift card tag.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory GiftCardTag({
    required String id,
    required String name,
  }) = _GiftCardTag;

  factory GiftCardTag.fromJson(Map<String, Object?> json) => _GiftCardTagFromJson(json);
}

@freezed
class GiftCardTagCountableConnection with _$GiftCardTagCountableConnection {
  const GiftCardTagCountableConnection._();

  const factory GiftCardTagCountableConnection({
    required List<GiftCardTagCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _GiftCardTagCountableConnection;

  factory GiftCardTagCountableConnection.fromJson(Map<String, Object?> json) => _GiftCardTagCountableConnectionFromJson(json);
}

@freezed
class GiftCardTagCountableEdge with _$GiftCardTagCountableEdge {
  const GiftCardTagCountableEdge._();

  const factory GiftCardTagCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required GiftCardTag node,
  }) = _GiftCardTagCountableEdge;

  factory GiftCardTagCountableEdge.fromJson(Map<String, Object?> json) => _GiftCardTagCountableEdgeFromJson(json);
}

@unfreezed
class GiftCardTagFilterInput with _$GiftCardTagFilterInput {
  const GiftCardTagFilterInput._();

  const factory GiftCardTagFilterInput({
    String? search,
  }) = _GiftCardTagFilterInput;

  factory GiftCardTagFilterInput.fromJson(Map<String, Object?> json) => _GiftCardTagFilterInputFromJson(json);
}

/// Update a gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
@freezed
class GiftCardUpdate with _$GiftCardUpdate {
  const GiftCardUpdate._();

  /// Update a gift card. 

Requires one of the following permissions: MANAGE_GIFT_CARD. 
  const factory GiftCardUpdate({
    required List<GiftCardError> errors,
    GiftCard? giftCard,
    required List<GiftCardError> giftCardErrors,
  }) = _GiftCardUpdate;

  factory GiftCardUpdate.fromJson(Map<String, Object?> json) => _GiftCardUpdateFromJson(json);
}

@unfreezed
class GiftCardUpdateInput with _$GiftCardUpdateInput {
  const GiftCardUpdateInput._();

  const factory GiftCardUpdateInput({
    /// The gift card tags to add.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<String>? addTags,
    /// The gift card balance amount.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PositiveDecimal? balanceAmount,
    /// End date of the gift card in ISO 8601 format. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `expiryDate` from `expirySettings` instead.
    Date? endDate,
    /// The gift card expiry date.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Date? expiryDate,
    /// The gift card tags to remove.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<String>? removeTags,
    /// Start date of the gift card in ISO 8601 format. 

DEPRECATED: this field will be removed in Saleor 4.0.
    Date? startDate,
  }) = _GiftCardUpdateInput;

  factory GiftCardUpdateInput.fromJson(Map<String, Object?> json) => _GiftCardUpdateInputFromJson(json);
}

/// Event sent when gift card is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class GiftCardUpdated with _$GiftCardUpdated {
  const GiftCardUpdated._();

  /// Event sent when gift card is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory GiftCardUpdated({
    /// The gift card the event relates to.
    GiftCard? giftCard,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _GiftCardUpdated;

  factory GiftCardUpdated.fromJson(Map<String, Object?> json) => _GiftCardUpdatedFromJson(json);
}

/// Represents permission group data. 
@freezed
class Group with _$Group {
  const Group._();

  /// Represents permission group data. 
  const factory Group({
    required String id,
    required String name,
    /// List of group permissions
    List<Permission>? permissions,
    /// True, if the currently authenticated user has rights to manage a group.
    required bool userCanManage,
    /// List of group users

Requires one of the following permissions: MANAGE_STAFF.
    List<User>? users,
  }) = _Group;

  factory Group.fromJson(Map<String, Object?> json) => _GroupFromJson(json);
}

@freezed
class GroupCountableConnection with _$GroupCountableConnection {
  const GroupCountableConnection._();

  const factory GroupCountableConnection({
    required List<GroupCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _GroupCountableConnection;

  factory GroupCountableConnection.fromJson(Map<String, Object?> json) => _GroupCountableConnectionFromJson(json);
}

@freezed
class GroupCountableEdge with _$GroupCountableEdge {
  const GroupCountableEdge._();

  const factory GroupCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Group node,
  }) = _GroupCountableEdge;

  factory GroupCountableEdge.fromJson(Map<String, Object?> json) => _GroupCountableEdgeFromJson(json);
}

/// Represents an image. 
@freezed
class Image with _$Image {
  const Image._();

  /// Represents an image. 
  const factory Image({
    /// Alt text for an image.
    String? alt,
    /// The URL of the image.
    required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, Object?> json) => _ImageFromJson(json);
}

@unfreezed
class IntRangeInput with _$IntRangeInput {
  const IntRangeInput._();

  const factory IntRangeInput({
    /// Value greater than or equal to.
    int? gte,
    /// Value less than or equal to.
    int? lte,
  }) = _IntRangeInput;

  factory IntRangeInput.fromJson(Map<String, Object?> json) => _IntRangeInputFromJson(json);
}

/// Represents an Invoice. 
@freezed
class Invoice with _$Invoice {
  const Invoice._();

  /// Represents an Invoice. 
  const factory Invoice({
    required DateTime createdAt,
    String? externalUrl,
    /// The ID of the object.
    required String id,
    String? message,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    String? number,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Job status.
    required JobStatusEnum status,
    required DateTime updatedAt,
    /// URL to download an invoice.
    String? url,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) => _InvoiceFromJson(json);
}

/// Creates a ready to send invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class InvoiceCreate with _$InvoiceCreate {
  const InvoiceCreate._();

  /// Creates a ready to send invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory InvoiceCreate({
    required List<InvoiceError> errors,
    Invoice? invoice,
    required List<InvoiceError> invoiceErrors,
  }) = _InvoiceCreate;

  factory InvoiceCreate.fromJson(Map<String, Object?> json) => _InvoiceCreateFromJson(json);
}

@unfreezed
class InvoiceCreateInput with _$InvoiceCreateInput {
  const InvoiceCreateInput._();

  const factory InvoiceCreateInput({
    /// Invoice number.
    required String number,
    /// URL of an invoice to download.
    required String url,
  }) = _InvoiceCreateInput;

  factory InvoiceCreateInput.fromJson(Map<String, Object?> json) => _InvoiceCreateInputFromJson(json);
}

/// Deletes an invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class InvoiceDelete with _$InvoiceDelete {
  const InvoiceDelete._();

  /// Deletes an invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory InvoiceDelete({
    required List<InvoiceError> errors,
    Invoice? invoice,
    required List<InvoiceError> invoiceErrors,
  }) = _InvoiceDelete;

  factory InvoiceDelete.fromJson(Map<String, Object?> json) => _InvoiceDeleteFromJson(json);
}

/// Event sent when invoice is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class InvoiceDeleted with _$InvoiceDeleted {
  const InvoiceDeleted._();

  /// Event sent when invoice is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory InvoiceDeleted({
    /// The invoice the event relates to.
    Invoice? invoice,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _InvoiceDeleted;

  factory InvoiceDeleted.fromJson(Map<String, Object?> json) => _InvoiceDeletedFromJson(json);
}

@freezed
class InvoiceError with _$InvoiceError {
  const InvoiceError._();

  const factory InvoiceError({
    /// The error code.
    required InvoiceErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _InvoiceError;

  factory InvoiceError.fromJson(Map<String, Object?> json) => _InvoiceErrorFromJson(json);
}

enum InvoiceErrorCode{
  @JsonKey(name: EMAIL_NOT_SET) email_not_set
  @JsonKey(name: INVALID_STATUS) invalid_status
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: NOT_READY) not_ready
  @JsonKey(name: NO_INVOICE_PLUGIN) no_invoice_plugin
  @JsonKey(name: NUMBER_NOT_SET) number_not_set
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: URL_NOT_SET) url_not_set
}

/// Request an invoice for the order using plugin. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class InvoiceRequest with _$InvoiceRequest {
  const InvoiceRequest._();

  /// Request an invoice for the order using plugin. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory InvoiceRequest({
    required List<InvoiceError> errors,
    Invoice? invoice,
    required List<InvoiceError> invoiceErrors,
    /// Order related to an invoice.
    Order? order,
  }) = _InvoiceRequest;

  factory InvoiceRequest.fromJson(Map<String, Object?> json) => _InvoiceRequestFromJson(json);
}

/// Requests deletion of an invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class InvoiceRequestDelete with _$InvoiceRequestDelete {
  const InvoiceRequestDelete._();

  /// Requests deletion of an invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory InvoiceRequestDelete({
    required List<InvoiceError> errors,
    Invoice? invoice,
    required List<InvoiceError> invoiceErrors,
  }) = _InvoiceRequestDelete;

  factory InvoiceRequestDelete.fromJson(Map<String, Object?> json) => _InvoiceRequestDeleteFromJson(json);
}

/// Event sent when invoice is requested.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class InvoiceRequested with _$InvoiceRequested {
  const InvoiceRequested._();

  /// Event sent when invoice is requested.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory InvoiceRequested({
    /// The invoice the event relates to.
    Invoice? invoice,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _InvoiceRequested;

  factory InvoiceRequested.fromJson(Map<String, Object?> json) => _InvoiceRequestedFromJson(json);
}

/// Send an invoice notification to the customer. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class InvoiceSendNotification with _$InvoiceSendNotification {
  const InvoiceSendNotification._();

  /// Send an invoice notification to the customer. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory InvoiceSendNotification({
    required List<InvoiceError> errors,
    Invoice? invoice,
    required List<InvoiceError> invoiceErrors,
  }) = _InvoiceSendNotification;

  factory InvoiceSendNotification.fromJson(Map<String, Object?> json) => _InvoiceSendNotificationFromJson(json);
}

/// Event sent when invoice is sent.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class InvoiceSent with _$InvoiceSent {
  const InvoiceSent._();

  /// Event sent when invoice is sent.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory InvoiceSent({
    /// The invoice the event relates to.
    Invoice? invoice,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _InvoiceSent;

  factory InvoiceSent.fromJson(Map<String, Object?> json) => _InvoiceSentFromJson(json);
}

/// Updates an invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class InvoiceUpdate with _$InvoiceUpdate {
  const InvoiceUpdate._();

  /// Updates an invoice. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory InvoiceUpdate({
    required List<InvoiceError> errors,
    Invoice? invoice,
    required List<InvoiceError> invoiceErrors,
  }) = _InvoiceUpdate;

  factory InvoiceUpdate.fromJson(Map<String, Object?> json) => _InvoiceUpdateFromJson(json);
}

@freezed
class IssuingPrincipal with _$IssuingPrincipal {
  const IssuingPrincipal._();

  const factory IssuingPrincipal() = _IssuingPrincipal;

  /// Represents app data. 
  const factory IssuingPrincipal.app({
    /// Description of this app.
    String? aboutApp,
    /// JWT token used to authenticate by thridparty app.
    String? accessToken,
    /// URL to iframe with the app.
    String? appUrl,
    /// URL to iframe with the configuration for the app.
    String? configurationUrl,
    /// The date and time when the app was created.
    DateTime? created,
    /// Description of the data privacy defined for this app.
    String? dataPrivacy,
    /// URL to details about the privacy policy on the app owner page.
    String? dataPrivacyUrl,
    /// App's dashboard extensions.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<AppExtension> extensions,
    /// Homepage of the app.
    String? homepageUrl,
    required String id,
    /// Determine if app will be set active or not.
    bool? isActive,
    /// URL to manifest used during app's installation.

Added in Saleor 3.5.
    String? manifestUrl,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Name of the app.
    String? name,
    /// List of the app's permissions.
    List<Permission>? permissions,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Support page for the app.
    String? supportUrl,
    /// Last 4 characters of the tokens.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    List<AppToken>? tokens,
    /// Type of the app.
    AppTypeEnum? type,
    /// Version number of the app.
    String? version,
    /// List of webhooks assigned to this app.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    List<Webhook>? webhooks,
  }) = App;

  /// Represents user data. 
  const factory IssuingPrincipal.user({
    /// List of all user's addresses.
    required List<Address> addresses,
    Image? avatar,
    /// Returns the last open checkout of this user.
    Checkout? checkout,
    /// Returns the checkout ID's assigned to this user.
    List<String>? checkoutIds,
    /// Returns the checkout UUID's assigned to this user.
    List<UUID>? checkoutTokens,
    required DateTime dateJoined,
    Address? defaultBillingAddress,
    Address? defaultShippingAddress,
    /// List of user's permission groups which user can manage.
    List<Group>? editableGroups,
    required String email,
    /// List of events associated with the user.

Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF.
    List<CustomerEvent>? events,
    required String firstName,
    /// List of the user gift cards.
    GiftCardCountableConnection? giftCards,
    required String id,
    required bool isActive,
    required bool isStaff,
    /// User language code.
    required LanguageCodeEnum languageCode,
    DateTime? lastLogin,
    required String lastName,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// A note about the customer.

Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF.
    String? note,
    /// List of user's orders. Requires one of the following permissions: MANAGE_STAFF, OWNER.
    OrderCountableConnection? orders,
    /// List of user's permission groups.
    List<Group>? permissionGroups,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of stored payment sources.
    List<PaymentSource>? storedPaymentSources,
    required DateTime updatedAt,
    /// List of user's permissions.
    List<UserPermission>? userPermissions,
  }) = User;

  factory IssuingPrincipal.fromJson(Map<String, Object?> json) => _IssuingPrincipalFromJson(json);
}

enum JobStatusEnum{
  @JsonKey(name: DELETED) deleted
  @JsonKey(name: FAILED) failed
  @JsonKey(name: PENDING) pending
  @JsonKey(name: SUCCESS) success
}

enum LanguageCodeEnum{
  @JsonKey(name: AF) af
  @JsonKey(name: AF_NA) af_na
  @JsonKey(name: AF_ZA) af_za
  @JsonKey(name: AGQ) agq
  @JsonKey(name: AGQ_CM) agq_cm
  @JsonKey(name: AK) ak
  @JsonKey(name: AK_GH) ak_gh
  @JsonKey(name: AM) am
  @JsonKey(name: AM_ET) am_et
  @JsonKey(name: AR) ar
  @JsonKey(name: AR_AE) ar_ae
  @JsonKey(name: AR_BH) ar_bh
  @JsonKey(name: AR_DJ) ar_dj
  @JsonKey(name: AR_DZ) ar_dz
  @JsonKey(name: AR_EG) ar_eg
  @JsonKey(name: AR_EH) ar_eh
  @JsonKey(name: AR_ER) ar_er
  @JsonKey(name: AR_IL) ar_il
  @JsonKey(name: AR_IQ) ar_iq
  @JsonKey(name: AR_JO) ar_jo
  @JsonKey(name: AR_KM) ar_km
  @JsonKey(name: AR_KW) ar_kw
  @JsonKey(name: AR_LB) ar_lb
  @JsonKey(name: AR_LY) ar_ly
  @JsonKey(name: AR_MA) ar_ma
  @JsonKey(name: AR_MR) ar_mr
  @JsonKey(name: AR_OM) ar_om
  @JsonKey(name: AR_PS) ar_ps
  @JsonKey(name: AR_QA) ar_qa
  @JsonKey(name: AR_SA) ar_sa
  @JsonKey(name: AR_SD) ar_sd
  @JsonKey(name: AR_SO) ar_so
  @JsonKey(name: AR_SS) ar_ss
  @JsonKey(name: AR_SY) ar_sy
  @JsonKey(name: AR_TD) ar_td
  @JsonKey(name: AR_TN) ar_tn
  @JsonKey(name: AR_YE) ar_ye
  @JsonKey(name: AS) as
  @JsonKey(name: ASA) asa
  @JsonKey(name: ASA_TZ) asa_tz
  @JsonKey(name: AST) ast
  @JsonKey(name: AST_ES) ast_es
  @JsonKey(name: AS_IN) as_in
  @JsonKey(name: AZ) az
  @JsonKey(name: AZ_CYRL) az_cyrl
  @JsonKey(name: AZ_CYRL_AZ) az_cyrl_az
  @JsonKey(name: AZ_LATN) az_latn
  @JsonKey(name: AZ_LATN_AZ) az_latn_az
  @JsonKey(name: BAS) bas
  @JsonKey(name: BAS_CM) bas_cm
  @JsonKey(name: BE) be
  @JsonKey(name: BEM) bem
  @JsonKey(name: BEM_ZM) bem_zm
  @JsonKey(name: BEZ) bez
  @JsonKey(name: BEZ_TZ) bez_tz
  @JsonKey(name: BE_BY) be_by
  @JsonKey(name: BG) bg
  @JsonKey(name: BG_BG) bg_bg
  @JsonKey(name: BM) bm
  @JsonKey(name: BM_ML) bm_ml
  @JsonKey(name: BN) bn
  @JsonKey(name: BN_BD) bn_bd
  @JsonKey(name: BN_IN) bn_in
  @JsonKey(name: BO) bo
  @JsonKey(name: BO_CN) bo_cn
  @JsonKey(name: BO_IN) bo_in
  @JsonKey(name: BR) br
  @JsonKey(name: BRX) brx
  @JsonKey(name: BRX_IN) brx_in
  @JsonKey(name: BR_FR) br_fr
  @JsonKey(name: BS) bs
  @JsonKey(name: BS_CYRL) bs_cyrl
  @JsonKey(name: BS_CYRL_BA) bs_cyrl_ba
  @JsonKey(name: BS_LATN) bs_latn
  @JsonKey(name: BS_LATN_BA) bs_latn_ba
  @JsonKey(name: CA) ca
  @JsonKey(name: CA_AD) ca_ad
  @JsonKey(name: CA_ES) ca_es
  @JsonKey(name: CA_ES_VALENCIA) ca_es_valencia
  @JsonKey(name: CA_FR) ca_fr
  @JsonKey(name: CA_IT) ca_it
  @JsonKey(name: CCP) ccp
  @JsonKey(name: CCP_BD) ccp_bd
  @JsonKey(name: CCP_IN) ccp_in
  @JsonKey(name: CE) ce
  @JsonKey(name: CEB) ceb
  @JsonKey(name: CEB_PH) ceb_ph
  @JsonKey(name: CE_RU) ce_ru
  @JsonKey(name: CGG) cgg
  @JsonKey(name: CGG_UG) cgg_ug
  @JsonKey(name: CHR) chr
  @JsonKey(name: CHR_US) chr_us
  @JsonKey(name: CKB) ckb
  @JsonKey(name: CKB_IQ) ckb_iq
  @JsonKey(name: CKB_IR) ckb_ir
  @JsonKey(name: CS) cs
  @JsonKey(name: CS_CZ) cs_cz
  @JsonKey(name: CU) cu
  @JsonKey(name: CU_RU) cu_ru
  @JsonKey(name: CY) cy
  @JsonKey(name: CY_GB) cy_gb
  @JsonKey(name: DA) da
  @JsonKey(name: DAV) dav
  @JsonKey(name: DAV_KE) dav_ke
  @JsonKey(name: DA_DK) da_dk
  @JsonKey(name: DA_GL) da_gl
  @JsonKey(name: DE) de
  @JsonKey(name: DE_AT) de_at
  @JsonKey(name: DE_BE) de_be
  @JsonKey(name: DE_CH) de_ch
  @JsonKey(name: DE_DE) de_de
  @JsonKey(name: DE_IT) de_it
  @JsonKey(name: DE_LI) de_li
  @JsonKey(name: DE_LU) de_lu
  @JsonKey(name: DJE) dje
  @JsonKey(name: DJE_NE) dje_ne
  @JsonKey(name: DSB) dsb
  @JsonKey(name: DSB_DE) dsb_de
  @JsonKey(name: DUA) dua
  @JsonKey(name: DUA_CM) dua_cm
  @JsonKey(name: DYO) dyo
  @JsonKey(name: DYO_SN) dyo_sn
  @JsonKey(name: DZ) dz
  @JsonKey(name: DZ_BT) dz_bt
  @JsonKey(name: EBU) ebu
  @JsonKey(name: EBU_KE) ebu_ke
  @JsonKey(name: EE) ee
  @JsonKey(name: EE_GH) ee_gh
  @JsonKey(name: EE_TG) ee_tg
  @JsonKey(name: EL) el
  @JsonKey(name: EL_CY) el_cy
  @JsonKey(name: EL_GR) el_gr
  @JsonKey(name: EN) en
  @JsonKey(name: EN_AE) en_ae
  @JsonKey(name: EN_AG) en_ag
  @JsonKey(name: EN_AI) en_ai
  @JsonKey(name: EN_AS) en_as
  @JsonKey(name: EN_AT) en_at
  @JsonKey(name: EN_AU) en_au
  @JsonKey(name: EN_BB) en_bb
  @JsonKey(name: EN_BE) en_be
  @JsonKey(name: EN_BI) en_bi
  @JsonKey(name: EN_BM) en_bm
  @JsonKey(name: EN_BS) en_bs
  @JsonKey(name: EN_BW) en_bw
  @JsonKey(name: EN_BZ) en_bz
  @JsonKey(name: EN_CA) en_ca
  @JsonKey(name: EN_CC) en_cc
  @JsonKey(name: EN_CH) en_ch
  @JsonKey(name: EN_CK) en_ck
  @JsonKey(name: EN_CM) en_cm
  @JsonKey(name: EN_CX) en_cx
  @JsonKey(name: EN_CY) en_cy
  @JsonKey(name: EN_DE) en_de
  @JsonKey(name: EN_DG) en_dg
  @JsonKey(name: EN_DK) en_dk
  @JsonKey(name: EN_DM) en_dm
  @JsonKey(name: EN_ER) en_er
  @JsonKey(name: EN_FI) en_fi
  @JsonKey(name: EN_FJ) en_fj
  @JsonKey(name: EN_FK) en_fk
  @JsonKey(name: EN_FM) en_fm
  @JsonKey(name: EN_GB) en_gb
  @JsonKey(name: EN_GD) en_gd
  @JsonKey(name: EN_GG) en_gg
  @JsonKey(name: EN_GH) en_gh
  @JsonKey(name: EN_GI) en_gi
  @JsonKey(name: EN_GM) en_gm
  @JsonKey(name: EN_GU) en_gu
  @JsonKey(name: EN_GY) en_gy
  @JsonKey(name: EN_HK) en_hk
  @JsonKey(name: EN_IE) en_ie
  @JsonKey(name: EN_IL) en_il
  @JsonKey(name: EN_IM) en_im
  @JsonKey(name: EN_IN) en_in
  @JsonKey(name: EN_IO) en_io
  @JsonKey(name: EN_JE) en_je
  @JsonKey(name: EN_JM) en_jm
  @JsonKey(name: EN_KE) en_ke
  @JsonKey(name: EN_KI) en_ki
  @JsonKey(name: EN_KN) en_kn
  @JsonKey(name: EN_KY) en_ky
  @JsonKey(name: EN_LC) en_lc
  @JsonKey(name: EN_LR) en_lr
  @JsonKey(name: EN_LS) en_ls
  @JsonKey(name: EN_MG) en_mg
  @JsonKey(name: EN_MH) en_mh
  @JsonKey(name: EN_MO) en_mo
  @JsonKey(name: EN_MP) en_mp
  @JsonKey(name: EN_MS) en_ms
  @JsonKey(name: EN_MT) en_mt
  @JsonKey(name: EN_MU) en_mu
  @JsonKey(name: EN_MW) en_mw
  @JsonKey(name: EN_MY) en_my
  @JsonKey(name: EN_NA) en_na
  @JsonKey(name: EN_NF) en_nf
  @JsonKey(name: EN_NG) en_ng
  @JsonKey(name: EN_NL) en_nl
  @JsonKey(name: EN_NR) en_nr
  @JsonKey(name: EN_NU) en_nu
  @JsonKey(name: EN_NZ) en_nz
  @JsonKey(name: EN_PG) en_pg
  @JsonKey(name: EN_PH) en_ph
  @JsonKey(name: EN_PK) en_pk
  @JsonKey(name: EN_PN) en_pn
  @JsonKey(name: EN_PR) en_pr
  @JsonKey(name: EN_PW) en_pw
  @JsonKey(name: EN_RW) en_rw
  @JsonKey(name: EN_SB) en_sb
  @JsonKey(name: EN_SC) en_sc
  @JsonKey(name: EN_SD) en_sd
  @JsonKey(name: EN_SE) en_se
  @JsonKey(name: EN_SG) en_sg
  @JsonKey(name: EN_SH) en_sh
  @JsonKey(name: EN_SI) en_si
  @JsonKey(name: EN_SL) en_sl
  @JsonKey(name: EN_SS) en_ss
  @JsonKey(name: EN_SX) en_sx
  @JsonKey(name: EN_SZ) en_sz
  @JsonKey(name: EN_TC) en_tc
  @JsonKey(name: EN_TK) en_tk
  @JsonKey(name: EN_TO) en_to
  @JsonKey(name: EN_TT) en_tt
  @JsonKey(name: EN_TV) en_tv
  @JsonKey(name: EN_TZ) en_tz
  @JsonKey(name: EN_UG) en_ug
  @JsonKey(name: EN_UM) en_um
  @JsonKey(name: EN_US) en_us
  @JsonKey(name: EN_VC) en_vc
  @JsonKey(name: EN_VG) en_vg
  @JsonKey(name: EN_VI) en_vi
  @JsonKey(name: EN_VU) en_vu
  @JsonKey(name: EN_WS) en_ws
  @JsonKey(name: EN_ZA) en_za
  @JsonKey(name: EN_ZM) en_zm
  @JsonKey(name: EN_ZW) en_zw
  @JsonKey(name: EO) eo
  @JsonKey(name: ES) es
  @JsonKey(name: ES_AR) es_ar
  @JsonKey(name: ES_BO) es_bo
  @JsonKey(name: ES_BR) es_br
  @JsonKey(name: ES_BZ) es_bz
  @JsonKey(name: ES_CL) es_cl
  @JsonKey(name: ES_CO) es_co
  @JsonKey(name: ES_CR) es_cr
  @JsonKey(name: ES_CU) es_cu
  @JsonKey(name: ES_DO) es_do
  @JsonKey(name: ES_EA) es_ea
  @JsonKey(name: ES_EC) es_ec
  @JsonKey(name: ES_ES) es_es
  @JsonKey(name: ES_GQ) es_gq
  @JsonKey(name: ES_GT) es_gt
  @JsonKey(name: ES_HN) es_hn
  @JsonKey(name: ES_IC) es_ic
  @JsonKey(name: ES_MX) es_mx
  @JsonKey(name: ES_NI) es_ni
  @JsonKey(name: ES_PA) es_pa
  @JsonKey(name: ES_PE) es_pe
  @JsonKey(name: ES_PH) es_ph
  @JsonKey(name: ES_PR) es_pr
  @JsonKey(name: ES_PY) es_py
  @JsonKey(name: ES_SV) es_sv
  @JsonKey(name: ES_US) es_us
  @JsonKey(name: ES_UY) es_uy
  @JsonKey(name: ES_VE) es_ve
  @JsonKey(name: ET) et
  @JsonKey(name: ET_EE) et_ee
  @JsonKey(name: EU) eu
  @JsonKey(name: EU_ES) eu_es
  @JsonKey(name: EWO) ewo
  @JsonKey(name: EWO_CM) ewo_cm
  @JsonKey(name: FA) fa
  @JsonKey(name: FA_AF) fa_af
  @JsonKey(name: FA_IR) fa_ir
  @JsonKey(name: FF) ff
  @JsonKey(name: FF_ADLM) ff_adlm
  @JsonKey(name: FF_ADLM_BF) ff_adlm_bf
  @JsonKey(name: FF_ADLM_CM) ff_adlm_cm
  @JsonKey(name: FF_ADLM_GH) ff_adlm_gh
  @JsonKey(name: FF_ADLM_GM) ff_adlm_gm
  @JsonKey(name: FF_ADLM_GN) ff_adlm_gn
  @JsonKey(name: FF_ADLM_GW) ff_adlm_gw
  @JsonKey(name: FF_ADLM_LR) ff_adlm_lr
  @JsonKey(name: FF_ADLM_MR) ff_adlm_mr
  @JsonKey(name: FF_ADLM_NE) ff_adlm_ne
  @JsonKey(name: FF_ADLM_NG) ff_adlm_ng
  @JsonKey(name: FF_ADLM_SL) ff_adlm_sl
  @JsonKey(name: FF_ADLM_SN) ff_adlm_sn
  @JsonKey(name: FF_LATN) ff_latn
  @JsonKey(name: FF_LATN_BF) ff_latn_bf
  @JsonKey(name: FF_LATN_CM) ff_latn_cm
  @JsonKey(name: FF_LATN_GH) ff_latn_gh
  @JsonKey(name: FF_LATN_GM) ff_latn_gm
  @JsonKey(name: FF_LATN_GN) ff_latn_gn
  @JsonKey(name: FF_LATN_GW) ff_latn_gw
  @JsonKey(name: FF_LATN_LR) ff_latn_lr
  @JsonKey(name: FF_LATN_MR) ff_latn_mr
  @JsonKey(name: FF_LATN_NE) ff_latn_ne
  @JsonKey(name: FF_LATN_NG) ff_latn_ng
  @JsonKey(name: FF_LATN_SL) ff_latn_sl
  @JsonKey(name: FF_LATN_SN) ff_latn_sn
  @JsonKey(name: FI) fi
  @JsonKey(name: FIL) fil
  @JsonKey(name: FIL_PH) fil_ph
  @JsonKey(name: FI_FI) fi_fi
  @JsonKey(name: FO) fo
  @JsonKey(name: FO_DK) fo_dk
  @JsonKey(name: FO_FO) fo_fo
  @JsonKey(name: FR) fr
  @JsonKey(name: FR_BE) fr_be
  @JsonKey(name: FR_BF) fr_bf
  @JsonKey(name: FR_BI) fr_bi
  @JsonKey(name: FR_BJ) fr_bj
  @JsonKey(name: FR_BL) fr_bl
  @JsonKey(name: FR_CA) fr_ca
  @JsonKey(name: FR_CD) fr_cd
  @JsonKey(name: FR_CF) fr_cf
  @JsonKey(name: FR_CG) fr_cg
  @JsonKey(name: FR_CH) fr_ch
  @JsonKey(name: FR_CI) fr_ci
  @JsonKey(name: FR_CM) fr_cm
  @JsonKey(name: FR_DJ) fr_dj
  @JsonKey(name: FR_DZ) fr_dz
  @JsonKey(name: FR_FR) fr_fr
  @JsonKey(name: FR_GA) fr_ga
  @JsonKey(name: FR_GF) fr_gf
  @JsonKey(name: FR_GN) fr_gn
  @JsonKey(name: FR_GP) fr_gp
  @JsonKey(name: FR_GQ) fr_gq
  @JsonKey(name: FR_HT) fr_ht
  @JsonKey(name: FR_KM) fr_km
  @JsonKey(name: FR_LU) fr_lu
  @JsonKey(name: FR_MA) fr_ma
  @JsonKey(name: FR_MC) fr_mc
  @JsonKey(name: FR_MF) fr_mf
  @JsonKey(name: FR_MG) fr_mg
  @JsonKey(name: FR_ML) fr_ml
  @JsonKey(name: FR_MQ) fr_mq
  @JsonKey(name: FR_MR) fr_mr
  @JsonKey(name: FR_MU) fr_mu
  @JsonKey(name: FR_NC) fr_nc
  @JsonKey(name: FR_NE) fr_ne
  @JsonKey(name: FR_PF) fr_pf
  @JsonKey(name: FR_PM) fr_pm
  @JsonKey(name: FR_RE) fr_re
  @JsonKey(name: FR_RW) fr_rw
  @JsonKey(name: FR_SC) fr_sc
  @JsonKey(name: FR_SN) fr_sn
  @JsonKey(name: FR_SY) fr_sy
  @JsonKey(name: FR_TD) fr_td
  @JsonKey(name: FR_TG) fr_tg
  @JsonKey(name: FR_TN) fr_tn
  @JsonKey(name: FR_VU) fr_vu
  @JsonKey(name: FR_WF) fr_wf
  @JsonKey(name: FR_YT) fr_yt
  @JsonKey(name: FUR) fur
  @JsonKey(name: FUR_IT) fur_it
  @JsonKey(name: FY) fy
  @JsonKey(name: FY_NL) fy_nl
  @JsonKey(name: GA) ga
  @JsonKey(name: GA_GB) ga_gb
  @JsonKey(name: GA_IE) ga_ie
  @JsonKey(name: GD) gd
  @JsonKey(name: GD_GB) gd_gb
  @JsonKey(name: GL) gl
  @JsonKey(name: GL_ES) gl_es
  @JsonKey(name: GSW) gsw
  @JsonKey(name: GSW_CH) gsw_ch
  @JsonKey(name: GSW_FR) gsw_fr
  @JsonKey(name: GSW_LI) gsw_li
  @JsonKey(name: GU) gu
  @JsonKey(name: GUZ) guz
  @JsonKey(name: GUZ_KE) guz_ke
  @JsonKey(name: GU_IN) gu_in
  @JsonKey(name: GV) gv
  @JsonKey(name: GV_IM) gv_im
  @JsonKey(name: HA) ha
  @JsonKey(name: HAW) haw
  @JsonKey(name: HAW_US) haw_us
  @JsonKey(name: HA_GH) ha_gh
  @JsonKey(name: HA_NE) ha_ne
  @JsonKey(name: HA_NG) ha_ng
  @JsonKey(name: HE) he
  @JsonKey(name: HE_IL) he_il
  @JsonKey(name: HI) hi
  @JsonKey(name: HI_IN) hi_in
  @JsonKey(name: HR) hr
  @JsonKey(name: HR_BA) hr_ba
  @JsonKey(name: HR_HR) hr_hr
  @JsonKey(name: HSB) hsb
  @JsonKey(name: HSB_DE) hsb_de
  @JsonKey(name: HU) hu
  @JsonKey(name: HU_HU) hu_hu
  @JsonKey(name: HY) hy
  @JsonKey(name: HY_AM) hy_am
  @JsonKey(name: IA) ia
  @JsonKey(name: ID) id
  @JsonKey(name: ID_ID) id_id
  @JsonKey(name: IG) ig
  @JsonKey(name: IG_NG) ig_ng
  @JsonKey(name: II) ii
  @JsonKey(name: II_CN) ii_cn
  @JsonKey(name: IS) is
  @JsonKey(name: IS_IS) is_is
  @JsonKey(name: IT) it
  @JsonKey(name: IT_CH) it_ch
  @JsonKey(name: IT_IT) it_it
  @JsonKey(name: IT_SM) it_sm
  @JsonKey(name: IT_VA) it_va
  @JsonKey(name: JA) ja
  @JsonKey(name: JA_JP) ja_jp
  @JsonKey(name: JGO) jgo
  @JsonKey(name: JGO_CM) jgo_cm
  @JsonKey(name: JMC) jmc
  @JsonKey(name: JMC_TZ) jmc_tz
  @JsonKey(name: JV) jv
  @JsonKey(name: JV_ID) jv_id
  @JsonKey(name: KA) ka
  @JsonKey(name: KAB) kab
  @JsonKey(name: KAB_DZ) kab_dz
  @JsonKey(name: KAM) kam
  @JsonKey(name: KAM_KE) kam_ke
  @JsonKey(name: KA_GE) ka_ge
  @JsonKey(name: KDE) kde
  @JsonKey(name: KDE_TZ) kde_tz
  @JsonKey(name: KEA) kea
  @JsonKey(name: KEA_CV) kea_cv
  @JsonKey(name: KHQ) khq
  @JsonKey(name: KHQ_ML) khq_ml
  @JsonKey(name: KI) ki
  @JsonKey(name: KI_KE) ki_ke
  @JsonKey(name: KK) kk
  @JsonKey(name: KKJ) kkj
  @JsonKey(name: KKJ_CM) kkj_cm
  @JsonKey(name: KK_KZ) kk_kz
  @JsonKey(name: KL) kl
  @JsonKey(name: KLN) kln
  @JsonKey(name: KLN_KE) kln_ke
  @JsonKey(name: KL_GL) kl_gl
  @JsonKey(name: KM) km
  @JsonKey(name: KM_KH) km_kh
  @JsonKey(name: KN) kn
  @JsonKey(name: KN_IN) kn_in
  @JsonKey(name: KO) ko
  @JsonKey(name: KOK) kok
  @JsonKey(name: KOK_IN) kok_in
  @JsonKey(name: KO_KP) ko_kp
  @JsonKey(name: KO_KR) ko_kr
  @JsonKey(name: KS) ks
  @JsonKey(name: KSB) ksb
  @JsonKey(name: KSB_TZ) ksb_tz
  @JsonKey(name: KSF) ksf
  @JsonKey(name: KSF_CM) ksf_cm
  @JsonKey(name: KSH) ksh
  @JsonKey(name: KSH_DE) ksh_de
  @JsonKey(name: KS_ARAB) ks_arab
  @JsonKey(name: KS_ARAB_IN) ks_arab_in
  @JsonKey(name: KU) ku
  @JsonKey(name: KU_TR) ku_tr
  @JsonKey(name: KW) kw
  @JsonKey(name: KW_GB) kw_gb
  @JsonKey(name: KY) ky
  @JsonKey(name: KY_KG) ky_kg
  @JsonKey(name: LAG) lag
  @JsonKey(name: LAG_TZ) lag_tz
  @JsonKey(name: LB) lb
  @JsonKey(name: LB_LU) lb_lu
  @JsonKey(name: LG) lg
  @JsonKey(name: LG_UG) lg_ug
  @JsonKey(name: LKT) lkt
  @JsonKey(name: LKT_US) lkt_us
  @JsonKey(name: LN) ln
  @JsonKey(name: LN_AO) ln_ao
  @JsonKey(name: LN_CD) ln_cd
  @JsonKey(name: LN_CF) ln_cf
  @JsonKey(name: LN_CG) ln_cg
  @JsonKey(name: LO) lo
  @JsonKey(name: LO_LA) lo_la
  @JsonKey(name: LRC) lrc
  @JsonKey(name: LRC_IQ) lrc_iq
  @JsonKey(name: LRC_IR) lrc_ir
  @JsonKey(name: LT) lt
  @JsonKey(name: LT_LT) lt_lt
  @JsonKey(name: LU) lu
  @JsonKey(name: LUO) luo
  @JsonKey(name: LUO_KE) luo_ke
  @JsonKey(name: LUY) luy
  @JsonKey(name: LUY_KE) luy_ke
  @JsonKey(name: LU_CD) lu_cd
  @JsonKey(name: LV) lv
  @JsonKey(name: LV_LV) lv_lv
  @JsonKey(name: MAI) mai
  @JsonKey(name: MAI_IN) mai_in
  @JsonKey(name: MAS) mas
  @JsonKey(name: MAS_KE) mas_ke
  @JsonKey(name: MAS_TZ) mas_tz
  @JsonKey(name: MER) mer
  @JsonKey(name: MER_KE) mer_ke
  @JsonKey(name: MFE) mfe
  @JsonKey(name: MFE_MU) mfe_mu
  @JsonKey(name: MG) mg
  @JsonKey(name: MGH) mgh
  @JsonKey(name: MGH_MZ) mgh_mz
  @JsonKey(name: MGO) mgo
  @JsonKey(name: MGO_CM) mgo_cm
  @JsonKey(name: MG_MG) mg_mg
  @JsonKey(name: MI) mi
  @JsonKey(name: MI_NZ) mi_nz
  @JsonKey(name: MK) mk
  @JsonKey(name: MK_MK) mk_mk
  @JsonKey(name: ML) ml
  @JsonKey(name: ML_IN) ml_in
  @JsonKey(name: MN) mn
  @JsonKey(name: MNI) mni
  @JsonKey(name: MNI_BENG) mni_beng
  @JsonKey(name: MNI_BENG_IN) mni_beng_in
  @JsonKey(name: MN_MN) mn_mn
  @JsonKey(name: MR) mr
  @JsonKey(name: MR_IN) mr_in
  @JsonKey(name: MS) ms
  @JsonKey(name: MS_BN) ms_bn
  @JsonKey(name: MS_ID) ms_id
  @JsonKey(name: MS_MY) ms_my
  @JsonKey(name: MS_SG) ms_sg
  @JsonKey(name: MT) mt
  @JsonKey(name: MT_MT) mt_mt
  @JsonKey(name: MUA) mua
  @JsonKey(name: MUA_CM) mua_cm
  @JsonKey(name: MY) my
  @JsonKey(name: MY_MM) my_mm
  @JsonKey(name: MZN) mzn
  @JsonKey(name: MZN_IR) mzn_ir
  @JsonKey(name: NAQ) naq
  @JsonKey(name: NAQ_NA) naq_na
  @JsonKey(name: NB) nb
  @JsonKey(name: NB_NO) nb_no
  @JsonKey(name: NB_SJ) nb_sj
  @JsonKey(name: ND) nd
  @JsonKey(name: NDS) nds
  @JsonKey(name: NDS_DE) nds_de
  @JsonKey(name: NDS_NL) nds_nl
  @JsonKey(name: ND_ZW) nd_zw
  @JsonKey(name: NE) ne
  @JsonKey(name: NE_IN) ne_in
  @JsonKey(name: NE_NP) ne_np
  @JsonKey(name: NL) nl
  @JsonKey(name: NL_AW) nl_aw
  @JsonKey(name: NL_BE) nl_be
  @JsonKey(name: NL_BQ) nl_bq
  @JsonKey(name: NL_CW) nl_cw
  @JsonKey(name: NL_NL) nl_nl
  @JsonKey(name: NL_SR) nl_sr
  @JsonKey(name: NL_SX) nl_sx
  @JsonKey(name: NMG) nmg
  @JsonKey(name: NMG_CM) nmg_cm
  @JsonKey(name: NN) nn
  @JsonKey(name: NNH) nnh
  @JsonKey(name: NNH_CM) nnh_cm
  @JsonKey(name: NN_NO) nn_no
  @JsonKey(name: NUS) nus
  @JsonKey(name: NUS_SS) nus_ss
  @JsonKey(name: NYN) nyn
  @JsonKey(name: NYN_UG) nyn_ug
  @JsonKey(name: OM) om
  @JsonKey(name: OM_ET) om_et
  @JsonKey(name: OM_KE) om_ke
  @JsonKey(name: OR) or
  @JsonKey(name: OR_IN) or_in
  @JsonKey(name: OS) os
  @JsonKey(name: OS_GE) os_ge
  @JsonKey(name: OS_RU) os_ru
  @JsonKey(name: PA) pa
  @JsonKey(name: PA_ARAB) pa_arab
  @JsonKey(name: PA_ARAB_PK) pa_arab_pk
  @JsonKey(name: PA_GURU) pa_guru
  @JsonKey(name: PA_GURU_IN) pa_guru_in
  @JsonKey(name: PCM) pcm
  @JsonKey(name: PCM_NG) pcm_ng
  @JsonKey(name: PL) pl
  @JsonKey(name: PL_PL) pl_pl
  @JsonKey(name: PRG) prg
  @JsonKey(name: PS) ps
  @JsonKey(name: PS_AF) ps_af
  @JsonKey(name: PS_PK) ps_pk
  @JsonKey(name: PT) pt
  @JsonKey(name: PT_AO) pt_ao
  @JsonKey(name: PT_BR) pt_br
  @JsonKey(name: PT_CH) pt_ch
  @JsonKey(name: PT_CV) pt_cv
  @JsonKey(name: PT_GQ) pt_gq
  @JsonKey(name: PT_GW) pt_gw
  @JsonKey(name: PT_LU) pt_lu
  @JsonKey(name: PT_MO) pt_mo
  @JsonKey(name: PT_MZ) pt_mz
  @JsonKey(name: PT_PT) pt_pt
  @JsonKey(name: PT_ST) pt_st
  @JsonKey(name: PT_TL) pt_tl
  @JsonKey(name: QU) qu
  @JsonKey(name: QU_BO) qu_bo
  @JsonKey(name: QU_EC) qu_ec
  @JsonKey(name: QU_PE) qu_pe
  @JsonKey(name: RM) rm
  @JsonKey(name: RM_CH) rm_ch
  @JsonKey(name: RN) rn
  @JsonKey(name: RN_BI) rn_bi
  @JsonKey(name: RO) ro
  @JsonKey(name: ROF) rof
  @JsonKey(name: ROF_TZ) rof_tz
  @JsonKey(name: RO_MD) ro_md
  @JsonKey(name: RO_RO) ro_ro
  @JsonKey(name: RU) ru
  @JsonKey(name: RU_BY) ru_by
  @JsonKey(name: RU_KG) ru_kg
  @JsonKey(name: RU_KZ) ru_kz
  @JsonKey(name: RU_MD) ru_md
  @JsonKey(name: RU_RU) ru_ru
  @JsonKey(name: RU_UA) ru_ua
  @JsonKey(name: RW) rw
  @JsonKey(name: RWK) rwk
  @JsonKey(name: RWK_TZ) rwk_tz
  @JsonKey(name: RW_RW) rw_rw
  @JsonKey(name: SAH) sah
  @JsonKey(name: SAH_RU) sah_ru
  @JsonKey(name: SAQ) saq
  @JsonKey(name: SAQ_KE) saq_ke
  @JsonKey(name: SAT) sat
  @JsonKey(name: SAT_OLCK) sat_olck
  @JsonKey(name: SAT_OLCK_IN) sat_olck_in
  @JsonKey(name: SBP) sbp
  @JsonKey(name: SBP_TZ) sbp_tz
  @JsonKey(name: SD) sd
  @JsonKey(name: SD_ARAB) sd_arab
  @JsonKey(name: SD_ARAB_PK) sd_arab_pk
  @JsonKey(name: SD_DEVA) sd_deva
  @JsonKey(name: SD_DEVA_IN) sd_deva_in
  @JsonKey(name: SE) se
  @JsonKey(name: SEH) seh
  @JsonKey(name: SEH_MZ) seh_mz
  @JsonKey(name: SES) ses
  @JsonKey(name: SES_ML) ses_ml
  @JsonKey(name: SE_FI) se_fi
  @JsonKey(name: SE_NO) se_no
  @JsonKey(name: SE_SE) se_se
  @JsonKey(name: SG) sg
  @JsonKey(name: SG_CF) sg_cf
  @JsonKey(name: SHI) shi
  @JsonKey(name: SHI_LATN) shi_latn
  @JsonKey(name: SHI_LATN_MA) shi_latn_ma
  @JsonKey(name: SHI_TFNG) shi_tfng
  @JsonKey(name: SHI_TFNG_MA) shi_tfng_ma
  @JsonKey(name: SI) si
  @JsonKey(name: SI_LK) si_lk
  @JsonKey(name: SK) sk
  @JsonKey(name: SK_SK) sk_sk
  @JsonKey(name: SL) sl
  @JsonKey(name: SL_SI) sl_si
  @JsonKey(name: SMN) smn
  @JsonKey(name: SMN_FI) smn_fi
  @JsonKey(name: SN) sn
  @JsonKey(name: SN_ZW) sn_zw
  @JsonKey(name: SO) so
  @JsonKey(name: SO_DJ) so_dj
  @JsonKey(name: SO_ET) so_et
  @JsonKey(name: SO_KE) so_ke
  @JsonKey(name: SO_SO) so_so
  @JsonKey(name: SQ) sq
  @JsonKey(name: SQ_AL) sq_al
  @JsonKey(name: SQ_MK) sq_mk
  @JsonKey(name: SQ_XK) sq_xk
  @JsonKey(name: SR) sr
  @JsonKey(name: SR_CYRL) sr_cyrl
  @JsonKey(name: SR_CYRL_BA) sr_cyrl_ba
  @JsonKey(name: SR_CYRL_ME) sr_cyrl_me
  @JsonKey(name: SR_CYRL_RS) sr_cyrl_rs
  @JsonKey(name: SR_CYRL_XK) sr_cyrl_xk
  @JsonKey(name: SR_LATN) sr_latn
  @JsonKey(name: SR_LATN_BA) sr_latn_ba
  @JsonKey(name: SR_LATN_ME) sr_latn_me
  @JsonKey(name: SR_LATN_RS) sr_latn_rs
  @JsonKey(name: SR_LATN_XK) sr_latn_xk
  @JsonKey(name: SU) su
  @JsonKey(name: SU_LATN) su_latn
  @JsonKey(name: SU_LATN_ID) su_latn_id
  @JsonKey(name: SV) sv
  @JsonKey(name: SV_AX) sv_ax
  @JsonKey(name: SV_FI) sv_fi
  @JsonKey(name: SV_SE) sv_se
  @JsonKey(name: SW) sw
  @JsonKey(name: SW_CD) sw_cd
  @JsonKey(name: SW_KE) sw_ke
  @JsonKey(name: SW_TZ) sw_tz
  @JsonKey(name: SW_UG) sw_ug
  @JsonKey(name: TA) ta
  @JsonKey(name: TA_IN) ta_in
  @JsonKey(name: TA_LK) ta_lk
  @JsonKey(name: TA_MY) ta_my
  @JsonKey(name: TA_SG) ta_sg
  @JsonKey(name: TE) te
  @JsonKey(name: TEO) teo
  @JsonKey(name: TEO_KE) teo_ke
  @JsonKey(name: TEO_UG) teo_ug
  @JsonKey(name: TE_IN) te_in
  @JsonKey(name: TG) tg
  @JsonKey(name: TG_TJ) tg_tj
  @JsonKey(name: TH) th
  @JsonKey(name: TH_TH) th_th
  @JsonKey(name: TI) ti
  @JsonKey(name: TI_ER) ti_er
  @JsonKey(name: TI_ET) ti_et
  @JsonKey(name: TK) tk
  @JsonKey(name: TK_TM) tk_tm
  @JsonKey(name: TO) to
  @JsonKey(name: TO_TO) to_to
  @JsonKey(name: TR) tr
  @JsonKey(name: TR_CY) tr_cy
  @JsonKey(name: TR_TR) tr_tr
  @JsonKey(name: TT) tt
  @JsonKey(name: TT_RU) tt_ru
  @JsonKey(name: TWQ) twq
  @JsonKey(name: TWQ_NE) twq_ne
  @JsonKey(name: TZM) tzm
  @JsonKey(name: TZM_MA) tzm_ma
  @JsonKey(name: UG) ug
  @JsonKey(name: UG_CN) ug_cn
  @JsonKey(name: UK) uk
  @JsonKey(name: UK_UA) uk_ua
  @JsonKey(name: UR) ur
  @JsonKey(name: UR_IN) ur_in
  @JsonKey(name: UR_PK) ur_pk
  @JsonKey(name: UZ) uz
  @JsonKey(name: UZ_ARAB) uz_arab
  @JsonKey(name: UZ_ARAB_AF) uz_arab_af
  @JsonKey(name: UZ_CYRL) uz_cyrl
  @JsonKey(name: UZ_CYRL_UZ) uz_cyrl_uz
  @JsonKey(name: UZ_LATN) uz_latn
  @JsonKey(name: UZ_LATN_UZ) uz_latn_uz
  @JsonKey(name: VAI) vai
  @JsonKey(name: VAI_LATN) vai_latn
  @JsonKey(name: VAI_LATN_LR) vai_latn_lr
  @JsonKey(name: VAI_VAII) vai_vaii
  @JsonKey(name: VAI_VAII_LR) vai_vaii_lr
  @JsonKey(name: VI) vi
  @JsonKey(name: VI_VN) vi_vn
  @JsonKey(name: VO) vo
  @JsonKey(name: VUN) vun
  @JsonKey(name: VUN_TZ) vun_tz
  @JsonKey(name: WAE) wae
  @JsonKey(name: WAE_CH) wae_ch
  @JsonKey(name: WO) wo
  @JsonKey(name: WO_SN) wo_sn
  @JsonKey(name: XH) xh
  @JsonKey(name: XH_ZA) xh_za
  @JsonKey(name: XOG) xog
  @JsonKey(name: XOG_UG) xog_ug
  @JsonKey(name: YAV) yav
  @JsonKey(name: YAV_CM) yav_cm
  @JsonKey(name: YI) yi
  @JsonKey(name: YO) yo
  @JsonKey(name: YO_BJ) yo_bj
  @JsonKey(name: YO_NG) yo_ng
  @JsonKey(name: YUE) yue
  @JsonKey(name: YUE_HANS) yue_hans
  @JsonKey(name: YUE_HANS_CN) yue_hans_cn
  @JsonKey(name: YUE_HANT) yue_hant
  @JsonKey(name: YUE_HANT_HK) yue_hant_hk
  @JsonKey(name: ZGH) zgh
  @JsonKey(name: ZGH_MA) zgh_ma
  @JsonKey(name: ZH) zh
  @JsonKey(name: ZH_HANS) zh_hans
  @JsonKey(name: ZH_HANS_CN) zh_hans_cn
  @JsonKey(name: ZH_HANS_HK) zh_hans_hk
  @JsonKey(name: ZH_HANS_MO) zh_hans_mo
  @JsonKey(name: ZH_HANS_SG) zh_hans_sg
  @JsonKey(name: ZH_HANT) zh_hant
  @JsonKey(name: ZH_HANT_HK) zh_hant_hk
  @JsonKey(name: ZH_HANT_MO) zh_hant_mo
  @JsonKey(name: ZH_HANT_TW) zh_hant_tw
  @JsonKey(name: ZU) zu
  @JsonKey(name: ZU_ZA) zu_za
}

@freezed
class LanguageDisplay with _$LanguageDisplay {
  const LanguageDisplay._();

  const factory LanguageDisplay({
    /// ISO 639 representation of the language name.
    required LanguageCodeEnum code,
    /// Full name of the language.
    required String language,
  }) = _LanguageDisplay;

  factory LanguageDisplay.fromJson(Map<String, Object?> json) => _LanguageDisplayFromJson(json);
}

@freezed
class LimitInfo with _$LimitInfo {
  const LimitInfo._();

  const factory LimitInfo({
    /// Defines the allowed maximum resource usage, null means unlimited.
    required Limits allowedUsage,
    /// Defines the current resource usage.
    required Limits currentUsage,
  }) = _LimitInfo;

  factory LimitInfo.fromJson(Map<String, Object?> json) => _LimitInfoFromJson(json);
}

@freezed
class Limits with _$Limits {
  const Limits._();

  const factory Limits({
    int? channels,
    int? orders,
    int? productVariants,
    int? staffUsers,
    int? warehouses,
  }) = _Limits;

  factory Limits.fromJson(Map<String, Object?> json) => _LimitsFromJson(json);
}

/// The manifest definition. 
@freezed
class Manifest with _$Manifest {
  const Manifest._();

  /// The manifest definition. 
  const factory Manifest({
    String? about,
    String? appUrl,
    /// URL to iframe with the configuration for the app.
    String? configurationUrl,
    /// Description of the data privacy defined for this app.
    String? dataPrivacy,
    String? dataPrivacyUrl,
    required List<AppManifestExtension> extensions,
    String? homepageUrl,
    required String identifier,
    required String name,
    List<Permission>? permissions,
    String? supportUrl,
    String? tokenTargetUrl,
    required String version,
    /// List of the app's webhooks.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<AppManifestWebhook> webhooks,
  }) = _Manifest;

  factory Manifest.fromJson(Map<String, Object?> json) => _ManifestFromJson(json);
}

@freezed
class Margin with _$Margin {
  const Margin._();

  const factory Margin({
    int? start,
    int? stop,
  }) = _Margin;

  factory Margin.fromJson(Map<String, Object?> json) => _MarginFromJson(json);
}

enum MeasurementUnitsEnum{
  @JsonKey(name: ACRE_FT) acre_ft
  @JsonKey(name: ACRE_IN) acre_in
  @JsonKey(name: CM) cm
  @JsonKey(name: CUBIC_CENTIMETER) cubic_centimeter
  @JsonKey(name: CUBIC_DECIMETER) cubic_decimeter
  @JsonKey(name: CUBIC_FOOT) cubic_foot
  @JsonKey(name: CUBIC_INCH) cubic_inch
  @JsonKey(name: CUBIC_METER) cubic_meter
  @JsonKey(name: CUBIC_MILLIMETER) cubic_millimeter
  @JsonKey(name: CUBIC_YARD) cubic_yard
  @JsonKey(name: FL_OZ) fl_oz
  @JsonKey(name: FT) ft
  @JsonKey(name: G) g
  @JsonKey(name: INCH) inch
  @JsonKey(name: KG) kg
  @JsonKey(name: KM) km
  @JsonKey(name: LB) lb
  @JsonKey(name: LITER) liter
  @JsonKey(name: M) m
  @JsonKey(name: OZ) oz
  @JsonKey(name: PINT) pint
  @JsonKey(name: QT) qt
  @JsonKey(name: SQ_CM) sq_cm
  @JsonKey(name: SQ_FT) sq_ft
  @JsonKey(name: SQ_INCH) sq_inch
  @JsonKey(name: SQ_KM) sq_km
  @JsonKey(name: SQ_M) sq_m
  @JsonKey(name: SQ_YD) sq_yd
  @JsonKey(name: TONNE) tonne
  @JsonKey(name: YD) yd
}

/// Represents a single menu - an object that is used to help navigate through the store. 
@freezed
class Menu with _$Menu {
  const Menu._();

  /// Represents a single menu - an object that is used to help navigate through the store. 
  const factory Menu({
    required String id,
    List<MenuItem>? items,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required String slug,
  }) = _Menu;

  factory Menu.fromJson(Map<String, Object?> json) => _MenuFromJson(json);
}

/// Deletes menus. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuBulkDelete with _$MenuBulkDelete {
  const MenuBulkDelete._();

  /// Deletes menus. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<MenuError> errors,
    required List<MenuError> menuErrors,
  }) = _MenuBulkDelete;

  factory MenuBulkDelete.fromJson(Map<String, Object?> json) => _MenuBulkDeleteFromJson(json);
}

@freezed
class MenuCountableConnection with _$MenuCountableConnection {
  const MenuCountableConnection._();

  const factory MenuCountableConnection({
    required List<MenuCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _MenuCountableConnection;

  factory MenuCountableConnection.fromJson(Map<String, Object?> json) => _MenuCountableConnectionFromJson(json);
}

@freezed
class MenuCountableEdge with _$MenuCountableEdge {
  const MenuCountableEdge._();

  const factory MenuCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Menu node,
  }) = _MenuCountableEdge;

  factory MenuCountableEdge.fromJson(Map<String, Object?> json) => _MenuCountableEdgeFromJson(json);
}

/// Creates a new Menu. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuCreate with _$MenuCreate {
  const MenuCreate._();

  /// Creates a new Menu. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuCreate({
    required List<MenuError> errors,
    Menu? menu,
    required List<MenuError> menuErrors,
  }) = _MenuCreate;

  factory MenuCreate.fromJson(Map<String, Object?> json) => _MenuCreateFromJson(json);
}

@unfreezed
class MenuCreateInput with _$MenuCreateInput {
  const MenuCreateInput._();

  const factory MenuCreateInput({
    /// List of menu items.
    List<MenuItemInput>? items,
    /// Name of the menu.
    required String name,
    /// Slug of the menu. Will be generated if not provided.
    String? slug,
  }) = _MenuCreateInput;

  factory MenuCreateInput.fromJson(Map<String, Object?> json) => _MenuCreateInputFromJson(json);
}

/// Event sent when new menu is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class MenuCreated with _$MenuCreated {
  const MenuCreated._();

  /// Event sent when new menu is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory MenuCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The menu the event relates to.
    Menu? menu,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _MenuCreated;

  factory MenuCreated.fromJson(Map<String, Object?> json) => _MenuCreatedFromJson(json);
}

/// Deletes a menu. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuDelete with _$MenuDelete {
  const MenuDelete._();

  /// Deletes a menu. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuDelete({
    required List<MenuError> errors,
    Menu? menu,
    required List<MenuError> menuErrors,
  }) = _MenuDelete;

  factory MenuDelete.fromJson(Map<String, Object?> json) => _MenuDeleteFromJson(json);
}

/// Event sent when menu is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class MenuDeleted with _$MenuDeleted {
  const MenuDeleted._();

  /// Event sent when menu is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory MenuDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The menu the event relates to.
    Menu? menu,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _MenuDeleted;

  factory MenuDeleted.fromJson(Map<String, Object?> json) => _MenuDeletedFromJson(json);
}

@freezed
class MenuError with _$MenuError {
  const MenuError._();

  const factory MenuError({
    /// The error code.
    required MenuErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _MenuError;

  factory MenuError.fromJson(Map<String, Object?> json) => _MenuErrorFromJson(json);
}

enum MenuErrorCode{
  @JsonKey(name: CANNOT_ASSIGN_NODE) cannot_assign_node
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: INVALID_MENU_ITEM) invalid_menu_item
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: NO_MENU_ITEM_PROVIDED) no_menu_item_provided
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: TOO_MANY_MENU_ITEMS) too_many_menu_items
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class MenuFilterInput with _$MenuFilterInput {
  const MenuFilterInput._();

  const factory MenuFilterInput({
    List<MetadataFilter>? metadata,
    String? search,
    List<String>? slug,
  }) = _MenuFilterInput;

  factory MenuFilterInput.fromJson(Map<String, Object?> json) => _MenuFilterInputFromJson(json);
}

@unfreezed
class MenuInput with _$MenuInput {
  const MenuInput._();

  const factory MenuInput({
    /// Name of the menu.
    String? name,
    /// Slug of the menu.
    String? slug,
  }) = _MenuInput;

  factory MenuInput.fromJson(Map<String, Object?> json) => _MenuInputFromJson(json);
}

/// Represents a single item of the related menu. Can store categories, collection or pages. 
@freezed
class MenuItem with _$MenuItem {
  const MenuItem._();

  /// Represents a single item of the related menu. Can store categories, collection or pages. 
  const factory MenuItem({
    Category? category,
    List<MenuItem>? children,
    /// A collection associated with this menu item. Requires one of the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    Collection? collection,
    required String id,
    required int level,
    required Menu menu,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// A page associated with this menu item. Requires one of the following permissions to include unpublished items: MANAGE_PAGES.
    Page? page,
    MenuItem? parent,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Returns translated menu item fields for the given language code.
    MenuItemTranslation? translation,
    /// URL to the menu item.
    String? url,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, Object?> json) => _MenuItemFromJson(json);
}

/// Deletes menu items. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuItemBulkDelete with _$MenuItemBulkDelete {
  const MenuItemBulkDelete._();

  /// Deletes menu items. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuItemBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<MenuError> errors,
    required List<MenuError> menuErrors,
  }) = _MenuItemBulkDelete;

  factory MenuItemBulkDelete.fromJson(Map<String, Object?> json) => _MenuItemBulkDeleteFromJson(json);
}

@freezed
class MenuItemCountableConnection with _$MenuItemCountableConnection {
  const MenuItemCountableConnection._();

  const factory MenuItemCountableConnection({
    required List<MenuItemCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _MenuItemCountableConnection;

  factory MenuItemCountableConnection.fromJson(Map<String, Object?> json) => _MenuItemCountableConnectionFromJson(json);
}

@freezed
class MenuItemCountableEdge with _$MenuItemCountableEdge {
  const MenuItemCountableEdge._();

  const factory MenuItemCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required MenuItem node,
  }) = _MenuItemCountableEdge;

  factory MenuItemCountableEdge.fromJson(Map<String, Object?> json) => _MenuItemCountableEdgeFromJson(json);
}

/// Creates a new menu item. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuItemCreate with _$MenuItemCreate {
  const MenuItemCreate._();

  /// Creates a new menu item. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuItemCreate({
    required List<MenuError> errors,
    required List<MenuError> menuErrors,
    MenuItem? menuItem,
  }) = _MenuItemCreate;

  factory MenuItemCreate.fromJson(Map<String, Object?> json) => _MenuItemCreateFromJson(json);
}

@unfreezed
class MenuItemCreateInput with _$MenuItemCreateInput {
  const MenuItemCreateInput._();

  const factory MenuItemCreateInput({
    /// Category to which item points.
    String? category,
    /// Collection to which item points.
    String? collection,
    /// Menu to which item belongs.
    required String menu,
    /// Name of the menu item.
    required String name,
    /// Page to which item points.
    String? page,
    /// ID of the parent menu. If empty, menu will be top level menu.
    String? parent,
    /// URL of the pointed item.
    String? url,
  }) = _MenuItemCreateInput;

  factory MenuItemCreateInput.fromJson(Map<String, Object?> json) => _MenuItemCreateInputFromJson(json);
}

/// Event sent when new menu item is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class MenuItemCreated with _$MenuItemCreated {
  const MenuItemCreated._();

  /// Event sent when new menu item is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory MenuItemCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The menu item the event relates to.
    MenuItem? menuItem,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _MenuItemCreated;

  factory MenuItemCreated.fromJson(Map<String, Object?> json) => _MenuItemCreatedFromJson(json);
}

/// Deletes a menu item. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuItemDelete with _$MenuItemDelete {
  const MenuItemDelete._();

  /// Deletes a menu item. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuItemDelete({
    required List<MenuError> errors,
    required List<MenuError> menuErrors,
    MenuItem? menuItem,
  }) = _MenuItemDelete;

  factory MenuItemDelete.fromJson(Map<String, Object?> json) => _MenuItemDeleteFromJson(json);
}

/// Event sent when menu item is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class MenuItemDeleted with _$MenuItemDeleted {
  const MenuItemDeleted._();

  /// Event sent when menu item is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory MenuItemDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The menu item the event relates to.
    MenuItem? menuItem,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _MenuItemDeleted;

  factory MenuItemDeleted.fromJson(Map<String, Object?> json) => _MenuItemDeletedFromJson(json);
}

@unfreezed
class MenuItemFilterInput with _$MenuItemFilterInput {
  const MenuItemFilterInput._();

  const factory MenuItemFilterInput({
    List<MetadataFilter>? metadata,
    String? search,
  }) = _MenuItemFilterInput;

  factory MenuItemFilterInput.fromJson(Map<String, Object?> json) => _MenuItemFilterInputFromJson(json);
}

@unfreezed
class MenuItemInput with _$MenuItemInput {
  const MenuItemInput._();

  const factory MenuItemInput({
    /// Category to which item points.
    String? category,
    /// Collection to which item points.
    String? collection,
    /// Name of the menu item.
    String? name,
    /// Page to which item points.
    String? page,
    /// URL of the pointed item.
    String? url,
  }) = _MenuItemInput;

  factory MenuItemInput.fromJson(Map<String, Object?> json) => _MenuItemInputFromJson(json);
}

/// Moves items of menus. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuItemMove with _$MenuItemMove {
  const MenuItemMove._();

  /// Moves items of menus. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuItemMove({
    required List<MenuError> errors,
    /// Assigned menu to move within.
    Menu? menu,
    required List<MenuError> menuErrors,
  }) = _MenuItemMove;

  factory MenuItemMove.fromJson(Map<String, Object?> json) => _MenuItemMoveFromJson(json);
}

@unfreezed
class MenuItemMoveInput with _$MenuItemMoveInput {
  const MenuItemMoveInput._();

  const factory MenuItemMoveInput({
    /// The menu item ID to move.
    required String itemId,
    /// ID of the parent menu. If empty, menu will be top level menu.
    String? parentId,
    /// The new relative sorting position of the item (from -inf to +inf). 1 moves the item one position forward, -1 moves the item one position backward, 0 leaves the item unchanged.
    int? sortOrder,
  }) = _MenuItemMoveInput;

  factory MenuItemMoveInput.fromJson(Map<String, Object?> json) => _MenuItemMoveInputFromJson(json);
}

@unfreezed
class MenuItemSortingInput with _$MenuItemSortingInput {
  const MenuItemSortingInput._();

  const factory MenuItemSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort menu items by the selected field.
    required MenuItemsSortField field,
  }) = _MenuItemSortingInput;

  factory MenuItemSortingInput.fromJson(Map<String, Object?> json) => _MenuItemSortingInputFromJson(json);
}

@freezed
class MenuItemTranslatableContent with _$MenuItemTranslatableContent {
  const MenuItemTranslatableContent._();

  const factory MenuItemTranslatableContent({
    required String id,
    /// Represents a single item of the related menu. Can store categories, collection or pages.
    MenuItem? menuItem,
    required String name,
    /// Returns translated menu item fields for the given language code.
    MenuItemTranslation? translation,
  }) = _MenuItemTranslatableContent;

  factory MenuItemTranslatableContent.fromJson(Map<String, Object?> json) => _MenuItemTranslatableContentFromJson(json);
}

/// Creates/updates translations for a menu item. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class MenuItemTranslate with _$MenuItemTranslate {
  const MenuItemTranslate._();

  /// Creates/updates translations for a menu item. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory MenuItemTranslate({
    required List<TranslationError> errors,
    MenuItem? menuItem,
    required List<TranslationError> translationErrors,
  }) = _MenuItemTranslate;

  factory MenuItemTranslate.fromJson(Map<String, Object?> json) => _MenuItemTranslateFromJson(json);
}

@freezed
class MenuItemTranslation with _$MenuItemTranslation {
  const MenuItemTranslation._();

  const factory MenuItemTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
  }) = _MenuItemTranslation;

  factory MenuItemTranslation.fromJson(Map<String, Object?> json) => _MenuItemTranslationFromJson(json);
}

/// Updates a menu item. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuItemUpdate with _$MenuItemUpdate {
  const MenuItemUpdate._();

  /// Updates a menu item. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuItemUpdate({
    required List<MenuError> errors,
    required List<MenuError> menuErrors,
    MenuItem? menuItem,
  }) = _MenuItemUpdate;

  factory MenuItemUpdate.fromJson(Map<String, Object?> json) => _MenuItemUpdateFromJson(json);
}

/// Event sent when menu item is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class MenuItemUpdated with _$MenuItemUpdated {
  const MenuItemUpdated._();

  /// Event sent when menu item is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory MenuItemUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The menu item the event relates to.
    MenuItem? menuItem,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _MenuItemUpdated;

  factory MenuItemUpdated.fromJson(Map<String, Object?> json) => _MenuItemUpdatedFromJson(json);
}

enum MenuItemsSortField{
  /// Sort menu items by name. 
@JsonKey(name: NAME) name
}

enum MenuSortField{
  /// Sort menus by items count. 
@JsonKey(name: ITEMS_COUNT) items_count
  /// Sort menus by name. 
@JsonKey(name: NAME) name
}

@unfreezed
class MenuSortingInput with _$MenuSortingInput {
  const MenuSortingInput._();

  const factory MenuSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort menus by the selected field.
    required MenuSortField field,
  }) = _MenuSortingInput;

  factory MenuSortingInput.fromJson(Map<String, Object?> json) => _MenuSortingInputFromJson(json);
}

/// Updates a menu. 

Requires one of the following permissions: MANAGE_MENUS. 
@freezed
class MenuUpdate with _$MenuUpdate {
  const MenuUpdate._();

  /// Updates a menu. 

Requires one of the following permissions: MANAGE_MENUS. 
  const factory MenuUpdate({
    required List<MenuError> errors,
    Menu? menu,
    required List<MenuError> menuErrors,
  }) = _MenuUpdate;

  factory MenuUpdate.fromJson(Map<String, Object?> json) => _MenuUpdateFromJson(json);
}

/// Event sent when menu is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class MenuUpdated with _$MenuUpdated {
  const MenuUpdated._();

  /// Event sent when menu is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory MenuUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The menu the event relates to.
    Menu? menu,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _MenuUpdated;

  factory MenuUpdated.fromJson(Map<String, Object?> json) => _MenuUpdatedFromJson(json);
}

@freezed
class MetadataError with _$MetadataError {
  const MetadataError._();

  const factory MetadataError({
    /// The error code.
    required MetadataErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _MetadataError;

  factory MetadataError.fromJson(Map<String, Object?> json) => _MetadataErrorFromJson(json);
}

enum MetadataErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: NOT_UPDATED) not_updated
  @JsonKey(name: REQUIRED) required
}

@unfreezed
class MetadataFilter with _$MetadataFilter {
  const MetadataFilter._();

  const factory MetadataFilter({
    /// Key of a metadata item.
    required String key,
    /// Value of a metadata item.
    String? value,
  }) = _MetadataFilter;

  factory MetadataFilter.fromJson(Map<String, Object?> json) => _MetadataFilterFromJson(json);
}

@unfreezed
class MetadataInput with _$MetadataInput {
  const MetadataInput._();

  const factory MetadataInput({
    /// Key of a metadata item.
    required String key,
    /// Value of a metadata item.
    required String value,
  }) = _MetadataInput;

  factory MetadataInput.fromJson(Map<String, Object?> json) => _MetadataInputFromJson(json);
}

@freezed
class MetadataItem with _$MetadataItem {
  const MetadataItem._();

  const factory MetadataItem({
    /// Key of a metadata item.
    required String key,
    /// Value of a metadata item.
    required String value,
  }) = _MetadataItem;

  factory MetadataItem.fromJson(Map<String, Object?> json) => _MetadataItemFromJson(json);
}

/// Represents amount of money in specific currency. 
@freezed
class Money with _$Money {
  const Money._();

  /// Represents amount of money in specific currency. 
  const factory Money({
    /// Amount of money.
    required double amount,
    /// Currency code.
    required String currency,
  }) = _Money;

  factory Money.fromJson(Map<String, Object?> json) => _MoneyFromJson(json);
}

@unfreezed
class MoneyInput with _$MoneyInput {
  const MoneyInput._();

  const factory MoneyInput({
    /// Amount of money.
    required PositiveDecimal amount,
    /// Currency code.
    required String currency,
  }) = _MoneyInput;

  factory MoneyInput.fromJson(Map<String, Object?> json) => _MoneyInputFromJson(json);
}

/// Represents a range of amounts of money. 
@freezed
class MoneyRange with _$MoneyRange {
  const MoneyRange._();

  /// Represents a range of amounts of money. 
  const factory MoneyRange({
    /// Lower bound of a price range.
    Money? start,
    /// Upper bound of a price range.
    Money? stop,
  }) = _MoneyRange;

  factory MoneyRange.fromJson(Map<String, Object?> json) => _MoneyRangeFromJson(json);
}

@unfreezed
class MoveProductInput with _$MoveProductInput {
  const MoveProductInput._();

  const factory MoveProductInput({
    /// The ID of the product to move.
    required String productId,
    /// The relative sorting position of the product (from -inf to +inf) starting from the first given product's actual position.1 moves the item one position forward, -1 moves the item one position backward, 0 leaves the item unchanged.
    int? sortOrder,
  }) = _MoveProductInput;

  factory MoveProductInput.fromJson(Map<String, Object?> json) => _MoveProductInputFromJson(json);
}

@unfreezed
class NameTranslationInput with _$NameTranslationInput {
  const NameTranslationInput._();

  const factory NameTranslationInput({
    String? name,
  }) = _NameTranslationInput;

  factory NameTranslationInput.fromJson(Map<String, Object?> json) => _NameTranslationInputFromJson(json);
}

enum NavigationType{
  /// Main storefront navigation. 
@JsonKey(name: MAIN) main
  /// Secondary storefront navigation. 
@JsonKey(name: SECONDARY) secondary
}

/// Represents an order in the shop. 
@freezed
class Order with _$Order {
  const Order._();

  /// Represents an order in the shop. 
  const factory Order({
    /// List of actions that can be performed in the current state of an order.
    required List<OrderAction> actions,
    /// The authorize status of the order.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required OrderAuthorizeStatusEnum authorizeStatus,
    /// Collection points that can be used for this order.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<Warehouse> availableCollectionPoints,
    /// Shipping methods that can be used with this order.
    List<ShippingMethod>? availableShippingMethods,
    /// Billing address. The full data can be access for orders created in Saleor 3.2 and later, for other orders requires one of the following permissions: MANAGE_ORDERS, OWNER.
    Address? billingAddress,
    /// Informs whether a draft order can be finalized(turned into a regular order).
    required bool canFinalize,
    required Channel channel,
    /// The charge status of the order.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required OrderChargeStatusEnum chargeStatus,
    String? collectionPointName,
    required DateTime created,
    required String customerNote,
    /// The delivery method selected for this checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    DeliveryMethod? deliveryMethod,
    /// Returns applied discount.
    Money? discount,
    /// Discount name.
    String? discountName,
    /// List of all discounts assigned to the order.
    required List<OrderDiscount> discounts,
    required bool displayGrossPrices,
    /// List of errors that occurred during order validation.
    required List<OrderError> errors,
    /// List of events associated with the order.

Requires one of the following permissions: MANAGE_ORDERS.
    required List<OrderEvent> events,
    /// List of shipments for the order.
    required List<Fulfillment> fulfillments,
    /// List of user gift cards.
    required List<GiftCard> giftCards,
    required String id,
    /// List of order invoices. Can be fetched for orders created in Saleor 3.2 and later, for other orders requires one of the following permissions: MANAGE_ORDERS, OWNER.
    required List<Invoice> invoices,
    /// Informs if an order is fully paid.
    required bool isPaid,
    /// Returns True, if order requires shipping.
    required bool isShippingRequired,
    required String languageCode,
    /// Order language code.
    required LanguageCodeEnum languageCodeEnum,
    /// List of order lines.
    required List<OrderLine> lines,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// User-friendly number of an order.
    required String number,
    /// The order origin.
    required OrderOriginEnum origin,
    /// The ID of the order that was the base for this order.
    String? original,
    /// Internal payment status.
    required PaymentChargeStatusEnum paymentStatus,
    /// User-friendly payment status.
    required String paymentStatusDisplay,
    /// List of payments for the order.
    required List<Payment> payments,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    String? redirectUrl,
    /// Shipping address. The full data can be access for orders created in Saleor 3.2 and later, for other orders requires one of the following permissions: MANAGE_ORDERS, OWNER.
    Address? shippingAddress,
    /// Shipping method for this order.
    ShippingMethod? shippingMethod,
    String? shippingMethodName,
    /// Shipping methods related to this order.
    required List<ShippingMethod> shippingMethods,
    /// Total price of shipping.
    required TaxedMoney shippingPrice,
    required double shippingTaxRate,
    required OrderStatus status,
    /// User-friendly order status.
    required String statusDisplay,
    /// The sum of line prices not including shipping.
    required TaxedMoney subtotal,
    required String token,
    /// Total amount of the order.
    required TaxedMoney total,
    /// Amount authorized for the order.
    required Money totalAuthorized,
    /// The difference between the paid and the order total amount.
    required Money totalBalance,
    /// Amount captured by payment.
    required Money totalCaptured,
    required String trackingClientId,
    /// List of transactions for the order. Requires one of the following permissions: MANAGE_ORDERS, HANDLE_PAYMENTS.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<TransactionItem> transactions,
    /// Translated discount name.
    String? translatedDiscountName,
    /// Undiscounted total amount of the order.
    required TaxedMoney undiscountedTotal,
    required DateTime updatedAt,
    /// User who placed the order. This field is set only for orders placed by authenticated users. Can be fetched for orders created in Saleor 3.2 and later, for other orders requires one of the following permissions: MANAGE_USERS, MANAGE_ORDERS, OWNER.
    User? user,
    /// Email address of the customer. The full data can be access for orders created in Saleor 3.2 and later, for other orders requires one of the following permissions: MANAGE_ORDERS, OWNER.
    String? userEmail,
    Voucher? voucher,
    required Weight weight,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _OrderFromJson(json);
}

enum OrderAction{
  /// Represents the capture action. 
@JsonKey(name: CAPTURE) capture
  /// Represents a mark-as-paid action. 
@JsonKey(name: MARK_AS_PAID) mark_as_paid
  /// Represents a refund action. 
@JsonKey(name: REFUND) refund
  /// Represents a void action. 
@JsonKey(name: VOID) void
}

/// Adds note to the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderAddNote with _$OrderAddNote {
  const OrderAddNote._();

  /// Adds note to the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderAddNote({
    required List<OrderError> errors,
    /// Order note created.
    OrderEvent? event,
    /// Order with the note added.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderAddNote;

  factory OrderAddNote.fromJson(Map<String, Object?> json) => _OrderAddNoteFromJson(json);
}

@unfreezed
class OrderAddNoteInput with _$OrderAddNoteInput {
  const OrderAddNoteInput._();

  const factory OrderAddNoteInput({
    /// Note message.
    required String message,
  }) = _OrderAddNoteInput;

  factory OrderAddNoteInput.fromJson(Map<String, Object?> json) => _OrderAddNoteInputFromJson(json);
}

enum OrderAuthorizeStatusEnum{
  @JsonKey(name: FULL) full
  @JsonKey(name: NONE) none
  @JsonKey(name: PARTIAL) partial
}

/// Cancels orders. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderBulkCancel with _$OrderBulkCancel {
  const OrderBulkCancel._();

  /// Cancels orders. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderBulkCancel({
    /// Returns how many objects were affected.
    required int count,
    required List<OrderError> errors,
    required List<OrderError> orderErrors,
  }) = _OrderBulkCancel;

  factory OrderBulkCancel.fromJson(Map<String, Object?> json) => _OrderBulkCancelFromJson(json);
}

/// Cancel an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderCancel with _$OrderCancel {
  const OrderCancel._();

  /// Cancel an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderCancel({
    required List<OrderError> errors,
    /// Canceled order.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderCancel;

  factory OrderCancel.fromJson(Map<String, Object?> json) => _OrderCancelFromJson(json);
}

/// Event sent when order is canceled.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderCancelled with _$OrderCancelled {
  const OrderCancelled._();

  /// Event sent when order is canceled.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderCancelled({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderCancelled;

  factory OrderCancelled.fromJson(Map<String, Object?> json) => _OrderCancelledFromJson(json);
}

/// Capture an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderCapture with _$OrderCapture {
  const OrderCapture._();

  /// Capture an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderCapture({
    required List<OrderError> errors,
    /// Captured order.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderCapture;

  factory OrderCapture.fromJson(Map<String, Object?> json) => _OrderCaptureFromJson(json);
}

enum OrderChargeStatusEnum{
  @JsonKey(name: FULL) full
  @JsonKey(name: NONE) none
  @JsonKey(name: OVERCHARGED) overcharged
  @JsonKey(name: PARTIAL) partial
}

/// Confirms an unconfirmed order by changing status to unfulfilled. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderConfirm with _$OrderConfirm {
  const OrderConfirm._();

  /// Confirms an unconfirmed order by changing status to unfulfilled. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderConfirm({
    required List<OrderError> errors,
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderConfirm;

  factory OrderConfirm.fromJson(Map<String, Object?> json) => _OrderConfirmFromJson(json);
}

/// Event sent when order is confirmed.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderConfirmed with _$OrderConfirmed {
  const OrderConfirmed._();

  /// Event sent when order is confirmed.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderConfirmed({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderConfirmed;

  factory OrderConfirmed.fromJson(Map<String, Object?> json) => _OrderConfirmedFromJson(json);
}

@freezed
class OrderCountableConnection with _$OrderCountableConnection {
  const OrderCountableConnection._();

  const factory OrderCountableConnection({
    required List<OrderCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _OrderCountableConnection;

  factory OrderCountableConnection.fromJson(Map<String, Object?> json) => _OrderCountableConnectionFromJson(json);
}

@freezed
class OrderCountableEdge with _$OrderCountableEdge {
  const OrderCountableEdge._();

  const factory OrderCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Order node,
  }) = _OrderCountableEdge;

  factory OrderCountableEdge.fromJson(Map<String, Object?> json) => _OrderCountableEdgeFromJson(json);
}

/// Create new order from existing checkout. Requires the following permissions: AUTHENTICATED_APP and HANDLE_CHECKOUTS.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderCreateFromCheckout with _$OrderCreateFromCheckout {
  const OrderCreateFromCheckout._();

  /// Create new order from existing checkout. Requires the following permissions: AUTHENTICATED_APP and HANDLE_CHECKOUTS.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderCreateFromCheckout({
    required List<OrderCreateFromCheckoutError> errors,
    /// Placed order.
    Order? order,
  }) = _OrderCreateFromCheckout;

  factory OrderCreateFromCheckout.fromJson(Map<String, Object?> json) => _OrderCreateFromCheckoutFromJson(json);
}

@freezed
class OrderCreateFromCheckoutError with _$OrderCreateFromCheckoutError {
  const OrderCreateFromCheckoutError._();

  const factory OrderCreateFromCheckoutError({
    /// The error code.
    required OrderCreateFromCheckoutErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// List of line Ids which cause the error.
    List<String>? lines,
    /// The error message.
    String? message,
    /// List of variant IDs which causes the error.
    List<String>? variants,
  }) = _OrderCreateFromCheckoutError;

  factory OrderCreateFromCheckoutError.fromJson(Map<String, Object?> json) => _OrderCreateFromCheckoutErrorFromJson(json);
}

enum OrderCreateFromCheckoutErrorCode{
  @JsonKey(name: BILLING_ADDRESS_NOT_SET) billing_address_not_set
  @JsonKey(name: CHANNEL_INACTIVE) channel_inactive
  @JsonKey(name: CHECKOUT_NOT_FOUND) checkout_not_found
  @JsonKey(name: EMAIL_NOT_SET) email_not_set
  @JsonKey(name: GIFT_CARD_NOT_APPLICABLE) gift_card_not_applicable
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INSUFFICIENT_STOCK) insufficient_stock
  @JsonKey(name: INVALID_SHIPPING_METHOD) invalid_shipping_method
  @JsonKey(name: NO_LINES) no_lines
  @JsonKey(name: SHIPPING_ADDRESS_NOT_SET) shipping_address_not_set
  @JsonKey(name: SHIPPING_METHOD_NOT_SET) shipping_method_not_set
  @JsonKey(name: TAX_ERROR) tax_error
  @JsonKey(name: UNAVAILABLE_VARIANT_IN_CHANNEL) unavailable_variant_in_channel
  @JsonKey(name: VOUCHER_NOT_APPLICABLE) voucher_not_applicable
}

/// Event sent when new order is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderCreated with _$OrderCreated {
  const OrderCreated._();

  /// Event sent when new order is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderCreated;

  factory OrderCreated.fromJson(Map<String, Object?> json) => _OrderCreatedFromJson(json);
}

enum OrderDirection{
  /// Specifies an ascending sort order. 
@JsonKey(name: ASC) asc
  /// Specifies a descending sort order. 
@JsonKey(name: DESC) desc
}

/// Contains all details related to the applied discount to the order. 
@freezed
class OrderDiscount with _$OrderDiscount {
  const OrderDiscount._();

  /// Contains all details related to the applied discount to the order. 
  const factory OrderDiscount({
    /// Returns amount of discount.
    required Money amount,
    required String id,
    String? name,
    /// Explanation for the applied discount.

Requires one of the following permissions: MANAGE_ORDERS.
    String? reason,
    String? translatedName,
    required OrderDiscountType type,
    /// Value of the discount. Can store fixed value or percent value
    required PositiveDecimal value,
    /// Type of the discount: fixed or percent
    required DiscountValueTypeEnum valueType,
  }) = _OrderDiscount;

  factory OrderDiscount.fromJson(Map<String, Object?> json) => _OrderDiscountFromJson(json);
}

/// Adds discount to the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderDiscountAdd with _$OrderDiscountAdd {
  const OrderDiscountAdd._();

  /// Adds discount to the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderDiscountAdd({
    required List<OrderError> errors,
    /// Order which has been discounted.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderDiscountAdd;

  factory OrderDiscountAdd.fromJson(Map<String, Object?> json) => _OrderDiscountAddFromJson(json);
}

@unfreezed
class OrderDiscountCommonInput with _$OrderDiscountCommonInput {
  const OrderDiscountCommonInput._();

  const factory OrderDiscountCommonInput({
    /// Explanation for the applied discount.
    String? reason,
    /// Value of the discount. Can store fixed value or percent value
    required PositiveDecimal value,
    /// Type of the discount: fixed or percent
    required DiscountValueTypeEnum valueType,
  }) = _OrderDiscountCommonInput;

  factory OrderDiscountCommonInput.fromJson(Map<String, Object?> json) => _OrderDiscountCommonInputFromJson(json);
}

/// Remove discount from the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderDiscountDelete with _$OrderDiscountDelete {
  const OrderDiscountDelete._();

  /// Remove discount from the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderDiscountDelete({
    required List<OrderError> errors,
    /// Order which has removed discount.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderDiscountDelete;

  factory OrderDiscountDelete.fromJson(Map<String, Object?> json) => _OrderDiscountDeleteFromJson(json);
}

enum OrderDiscountType{
  @JsonKey(name: MANUAL) manual
  @JsonKey(name: VOUCHER) voucher
}

/// Update discount for the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderDiscountUpdate with _$OrderDiscountUpdate {
  const OrderDiscountUpdate._();

  /// Update discount for the order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderDiscountUpdate({
    required List<OrderError> errors,
    /// Order which has been discounted.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderDiscountUpdate;

  factory OrderDiscountUpdate.fromJson(Map<String, Object?> json) => _OrderDiscountUpdateFromJson(json);
}

@unfreezed
class OrderDraftFilterInput with _$OrderDraftFilterInput {
  const OrderDraftFilterInput._();

  const factory OrderDraftFilterInput({
    List<String>? channels,
    DateRangeInput? created,
    String? customer,
    List<MetadataFilter>? metadata,
    String? search,
  }) = _OrderDraftFilterInput;

  factory OrderDraftFilterInput.fromJson(Map<String, Object?> json) => _OrderDraftFilterInputFromJson(json);
}

@freezed
class OrderError with _$OrderError {
  const OrderError._();

  const factory OrderError({
    /// A type of address that causes the error.
    AddressTypeEnum? addressType,
    /// The error code.
    required OrderErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of order line IDs that cause the error.
    List<String>? orderLines,
    /// List of product variants that are associated with the error
    List<String>? variants,
    /// Warehouse ID which causes the error.
    String? warehouse,
  }) = _OrderError;

  factory OrderError.fromJson(Map<String, Object?> json) => _OrderErrorFromJson(json);
}

enum OrderErrorCode{
  @JsonKey(name: BILLING_ADDRESS_NOT_SET) billing_address_not_set
  @JsonKey(name: CANNOT_CANCEL_FULFILLMENT) cannot_cancel_fulfillment
  @JsonKey(name: CANNOT_CANCEL_ORDER) cannot_cancel_order
  @JsonKey(name: CANNOT_DELETE) cannot_delete
  @JsonKey(name: CANNOT_DISCOUNT) cannot_discount
  @JsonKey(name: CANNOT_FULFILL_UNPAID_ORDER) cannot_fulfill_unpaid_order
  @JsonKey(name: CANNOT_REFUND) cannot_refund
  @JsonKey(name: CAPTURE_INACTIVE_PAYMENT) capture_inactive_payment
  @JsonKey(name: CHANNEL_INACTIVE) channel_inactive
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: FULFILL_ORDER_LINE) fulfill_order_line
  @JsonKey(name: GIFT_CARD_LINE) gift_card_line
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INSUFFICIENT_STOCK) insufficient_stock
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: INVALID_QUANTITY) invalid_quantity
  @JsonKey(name: MISSING_TRANSACTION_ACTION_REQUEST_WEBHOOK) missing_transaction_action_request_webhook
  @JsonKey(name: NOT_AVAILABLE_IN_CHANNEL) not_available_in_channel
  @JsonKey(name: NOT_EDITABLE) not_editable
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: ORDER_NO_SHIPPING_ADDRESS) order_no_shipping_address
  @JsonKey(name: PAYMENT_ERROR) payment_error
  @JsonKey(name: PAYMENT_MISSING) payment_missing
  @JsonKey(name: PRODUCT_NOT_PUBLISHED) product_not_published
  @JsonKey(name: PRODUCT_UNAVAILABLE_FOR_PURCHASE) product_unavailable_for_purchase
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: SHIPPING_METHOD_NOT_APPLICABLE) shipping_method_not_applicable
  @JsonKey(name: SHIPPING_METHOD_REQUIRED) shipping_method_required
  @JsonKey(name: TAX_ERROR) tax_error
  @JsonKey(name: UNIQUE) unique
  @JsonKey(name: VOID_INACTIVE_PAYMENT) void_inactive_payment
  @JsonKey(name: ZERO_QUANTITY) zero_quantity
}

/// History log of the order. 
@freezed
class OrderEvent with _$OrderEvent {
  const OrderEvent._();

  /// History log of the order. 
  const factory OrderEvent({
    /// Amount of money.
    double? amount,
    /// App that performed the action. Requires of of the following permissions: MANAGE_APPS, MANAGE_ORDERS, OWNER.
    App? app,
    /// Composed ID of the Fulfillment.
    String? composedId,
    /// Date when event happened at in ISO 8601 format.
    DateTime? date,
    /// The discount applied to the order.
    OrderEventDiscountObject? discount,
    /// Email of the customer.
    String? email,
    /// Type of an email sent to the customer.
    OrderEventsEmailsEnum? emailType,
    /// The lines fulfilled.
    List<FulfillmentLine>? fulfilledItems,
    required String id,
    /// Number of an invoice related to the order.
    String? invoiceNumber,
    /// The concerned lines.
    List<OrderEventOrderLineObject>? lines,
    /// Content of the event.
    String? message,
    /// User-friendly number of an order.
    String? orderNumber,
    /// List of oversold lines names.
    List<String>? oversoldItems,
    /// The payment gateway of the payment.
    String? paymentGateway,
    /// The payment reference from the payment provider.
    String? paymentId,
    /// Number of items.
    int? quantity,
    /// The reference of payment's transaction.
    String? reference,
    /// The order which is related to this order.
    Order? relatedOrder,
    /// Define if shipping costs were included to the refund.
    bool? shippingCostsIncluded,
    /// The status of payment's transaction.
    TransactionStatus? status,
    /// The transaction reference of captured payment.
    String? transactionReference,
    /// Order event type.
    OrderEventsEnum? type,
    /// User who performed the action.
    User? user,
    /// The warehouse were items were restocked.
    Warehouse? warehouse,
  }) = _OrderEvent;

  factory OrderEvent.fromJson(Map<String, Object?> json) => _OrderEventFromJson(json);
}

@freezed
class OrderEventCountableConnection with _$OrderEventCountableConnection {
  const OrderEventCountableConnection._();

  const factory OrderEventCountableConnection({
    required List<OrderEventCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _OrderEventCountableConnection;

  factory OrderEventCountableConnection.fromJson(Map<String, Object?> json) => _OrderEventCountableConnectionFromJson(json);
}

@freezed
class OrderEventCountableEdge with _$OrderEventCountableEdge {
  const OrderEventCountableEdge._();

  const factory OrderEventCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required OrderEvent node,
  }) = _OrderEventCountableEdge;

  factory OrderEventCountableEdge.fromJson(Map<String, Object?> json) => _OrderEventCountableEdgeFromJson(json);
}

@freezed
class OrderEventDiscountObject with _$OrderEventDiscountObject {
  const OrderEventDiscountObject._();

  const factory OrderEventDiscountObject({
    /// Returns amount of discount.
    Money? amount,
    /// Returns amount of discount.
    Money? oldAmount,
    /// Value of the discount. Can store fixed value or percent value.
    PositiveDecimal? oldValue,
    /// Type of the discount: fixed or percent.
    DiscountValueTypeEnum? oldValueType,
    /// Explanation for the applied discount.
    String? reason,
    /// Value of the discount. Can store fixed value or percent value.
    required PositiveDecimal value,
    /// Type of the discount: fixed or percent.
    required DiscountValueTypeEnum valueType,
  }) = _OrderEventDiscountObject;

  factory OrderEventDiscountObject.fromJson(Map<String, Object?> json) => _OrderEventDiscountObjectFromJson(json);
}

@freezed
class OrderEventOrderLineObject with _$OrderEventOrderLineObject {
  const OrderEventOrderLineObject._();

  const factory OrderEventOrderLineObject({
    /// The discount applied to the order line.
    OrderEventDiscountObject? discount,
    /// The variant name.
    String? itemName,
    /// The order line.
    OrderLine? orderLine,
    /// The variant quantity.
    int? quantity,
  }) = _OrderEventOrderLineObject;

  factory OrderEventOrderLineObject.fromJson(Map<String, Object?> json) => _OrderEventOrderLineObjectFromJson(json);
}

enum OrderEventsEmailsEnum{
  @JsonKey(name: CONFIRMED) confirmed
  @JsonKey(name: DIGITAL_LINKS) digital_links
  @JsonKey(name: FULFILLMENT_CONFIRMATION) fulfillment_confirmation
  @JsonKey(name: ORDER_CANCEL) order_cancel
  @JsonKey(name: ORDER_CONFIRMATION) order_confirmation
  @JsonKey(name: ORDER_REFUND) order_refund
  @JsonKey(name: PAYMENT_CONFIRMATION) payment_confirmation
  @JsonKey(name: SHIPPING_CONFIRMATION) shipping_confirmation
  @JsonKey(name: TRACKING_UPDATED) tracking_updated
}

enum OrderEventsEnum{
  @JsonKey(name: ADDED_PRODUCTS) added_products
  @JsonKey(name: CANCELED) canceled
  @JsonKey(name: CONFIRMED) confirmed
  @JsonKey(name: DRAFT_CREATED) draft_created
  @JsonKey(name: DRAFT_CREATED_FROM_REPLACE) draft_created_from_replace
  @JsonKey(name: EMAIL_SENT) email_sent
  @JsonKey(name: EXTERNAL_SERVICE_NOTIFICATION) external_service_notification
  @JsonKey(name: FULFILLMENT_AWAITS_APPROVAL) fulfillment_awaits_approval
  @JsonKey(name: FULFILLMENT_CANCELED) fulfillment_canceled
  @JsonKey(name: FULFILLMENT_FULFILLED_ITEMS) fulfillment_fulfilled_items
  @JsonKey(name: FULFILLMENT_REFUNDED) fulfillment_refunded
  @JsonKey(name: FULFILLMENT_REPLACED) fulfillment_replaced
  @JsonKey(name: FULFILLMENT_RESTOCKED_ITEMS) fulfillment_restocked_items
  @JsonKey(name: FULFILLMENT_RETURNED) fulfillment_returned
  @JsonKey(name: INVOICE_GENERATED) invoice_generated
  @JsonKey(name: INVOICE_REQUESTED) invoice_requested
  @JsonKey(name: INVOICE_SENT) invoice_sent
  @JsonKey(name: INVOICE_UPDATED) invoice_updated
  @JsonKey(name: NOTE_ADDED) note_added
  @JsonKey(name: ORDER_DISCOUNT_ADDED) order_discount_added
  @JsonKey(name: ORDER_DISCOUNT_AUTOMATICALLY_UPDATED) order_discount_automatically_updated
  @JsonKey(name: ORDER_DISCOUNT_DELETED) order_discount_deleted
  @JsonKey(name: ORDER_DISCOUNT_UPDATED) order_discount_updated
  @JsonKey(name: ORDER_FULLY_PAID) order_fully_paid
  @JsonKey(name: ORDER_LINE_DISCOUNT_REMOVED) order_line_discount_removed
  @JsonKey(name: ORDER_LINE_DISCOUNT_UPDATED) order_line_discount_updated
  @JsonKey(name: ORDER_LINE_PRODUCT_DELETED) order_line_product_deleted
  @JsonKey(name: ORDER_LINE_VARIANT_DELETED) order_line_variant_deleted
  @JsonKey(name: ORDER_MARKED_AS_PAID) order_marked_as_paid
  @JsonKey(name: ORDER_REPLACEMENT_CREATED) order_replacement_created
  @JsonKey(name: OTHER) other
  @JsonKey(name: OVERSOLD_ITEMS) oversold_items
  @JsonKey(name: PAYMENT_AUTHORIZED) payment_authorized
  @JsonKey(name: PAYMENT_CAPTURED) payment_captured
  @JsonKey(name: PAYMENT_FAILED) payment_failed
  @JsonKey(name: PAYMENT_REFUNDED) payment_refunded
  @JsonKey(name: PAYMENT_VOIDED) payment_voided
  @JsonKey(name: PLACED) placed
  @JsonKey(name: PLACED_FROM_DRAFT) placed_from_draft
  @JsonKey(name: REMOVED_PRODUCTS) removed_products
  @JsonKey(name: TRACKING_UPDATED) tracking_updated
  @JsonKey(name: TRANSACTION_CAPTURE_REQUESTED) transaction_capture_requested
  @JsonKey(name: TRANSACTION_EVENT) transaction_event
  @JsonKey(name: TRANSACTION_REFUND_REQUESTED) transaction_refund_requested
  @JsonKey(name: TRANSACTION_VOID_REQUESTED) transaction_void_requested
  @JsonKey(name: UPDATED_ADDRESS) updated_address
}

@unfreezed
class OrderFilterInput with _$OrderFilterInput {
  const OrderFilterInput._();

  const factory OrderFilterInput({
    List<OrderAuthorizeStatusEnum>? authorizeStatus,
    List<String>? channels,
    List<OrderChargeStatusEnum>? chargeStatus,
    DateRangeInput? created,
    String? customer,
    bool? giftCardBought,
    bool? giftCardUsed,
    List<String>? ids,
    bool? isClickAndCollect,
    bool? isPreorder,
    List<MetadataFilter>? metadata,
    List<String>? numbers,
    List<PaymentChargeStatusEnum>? paymentStatus,
    String? search,
    List<OrderStatusFilter>? status,
    DateTimeRangeInput? updatedAt,
  }) = _OrderFilterInput;

  factory OrderFilterInput.fromJson(Map<String, Object?> json) => _OrderFilterInputFromJson(json);
}

/// Filter shipping methods for order.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderFilterShippingMethods with _$OrderFilterShippingMethods {
  const OrderFilterShippingMethods._();

  /// Filter shipping methods for order.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderFilterShippingMethods({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Shipping methods that can be used with this checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<ShippingMethod>? shippingMethods,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderFilterShippingMethods;

  factory OrderFilterShippingMethods.fromJson(Map<String, Object?> json) => _OrderFilterShippingMethodsFromJson(json);
}

/// Creates new fulfillments for an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderFulfill with _$OrderFulfill {
  const OrderFulfill._();

  /// Creates new fulfillments for an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderFulfill({
    required List<OrderError> errors,
    /// List of created fulfillments.
    List<Fulfillment>? fulfillments,
    /// Fulfilled order.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderFulfill;

  factory OrderFulfill.fromJson(Map<String, Object?> json) => _OrderFulfillFromJson(json);
}

@unfreezed
class OrderFulfillInput with _$OrderFulfillInput {
  const OrderFulfillInput._();

  const factory OrderFulfillInput({
    /// If true, then allow proceed fulfillment when stock is exceeded.
    bool? allowStockToBeExceeded,
    /// List of items informing how to fulfill the order.
    required List<OrderFulfillLineInput> lines,
    /// If true, send an email notification to the customer.
    bool? notifyCustomer,
    /// Fulfillment tracking number.

Added in Saleor 3.6.
    String? trackingNumber,
  }) = _OrderFulfillInput;

  factory OrderFulfillInput.fromJson(Map<String, Object?> json) => _OrderFulfillInputFromJson(json);
}

@unfreezed
class OrderFulfillLineInput with _$OrderFulfillLineInput {
  const OrderFulfillLineInput._();

  const factory OrderFulfillLineInput({
    /// The ID of the order line.
    String? orderLineId,
    /// List of stock items to create.
    required List<OrderFulfillStockInput> stocks,
  }) = _OrderFulfillLineInput;

  factory OrderFulfillLineInput.fromJson(Map<String, Object?> json) => _OrderFulfillLineInputFromJson(json);
}

@unfreezed
class OrderFulfillStockInput with _$OrderFulfillStockInput {
  const OrderFulfillStockInput._();

  const factory OrderFulfillStockInput({
    /// The number of line items to be fulfilled from given warehouse.
    required int quantity,
    /// ID of the warehouse from which the item will be fulfilled.
    required String warehouse,
  }) = _OrderFulfillStockInput;

  factory OrderFulfillStockInput.fromJson(Map<String, Object?> json) => _OrderFulfillStockInputFromJson(json);
}

/// Event sent when order is fulfilled.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderFulfilled with _$OrderFulfilled {
  const OrderFulfilled._();

  /// Event sent when order is fulfilled.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderFulfilled({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderFulfilled;

  factory OrderFulfilled.fromJson(Map<String, Object?> json) => _OrderFulfilledFromJson(json);
}

/// Event sent when order is fully paid.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderFullyPaid with _$OrderFullyPaid {
  const OrderFullyPaid._();

  /// Event sent when order is fully paid.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderFullyPaid({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderFullyPaid;

  factory OrderFullyPaid.fromJson(Map<String, Object?> json) => _OrderFullyPaidFromJson(json);
}

/// Represents order line of particular order. 
@freezed
class OrderLine with _$OrderLine {
  const OrderLine._();

  /// Represents order line of particular order. 
  const factory OrderLine({
    /// List of allocations across warehouses.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    List<Allocation>? allocations,
    DigitalContentUrl? digitalContentUrl,
    required String id,
    required bool isShippingRequired,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required String productName,
    String? productSku,
    String? productVariantId,
    required int quantity,
    required int quantityFulfilled,
    /// A quantity of items remaining to be fulfilled.

Added in Saleor 3.1.
    required int quantityToFulfill,
    required double taxRate,
    Image? thumbnail,
    /// Price of the order line.
    required TaxedMoney totalPrice,
    /// Product name in the customer's language
    required String translatedProductName,
    /// Variant name in the customer's language
    required String translatedVariantName,
    /// Price of the single item in the order line without applied an order line discount.
    required TaxedMoney undiscountedUnitPrice,
    /// The discount applied to the single order line.
    required Money unitDiscount,
    String? unitDiscountReason,
    /// Type of the discount: fixed or percent
    DiscountValueTypeEnum? unitDiscountType,
    /// Value of the discount. Can store fixed value or percent value
    required PositiveDecimal unitDiscountValue,
    /// Price of the single item in the order line.
    required TaxedMoney unitPrice,
    /// A purchased product variant. Note: this field may be null if the variant has been removed from stock at all. Requires one of the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    ProductVariant? variant,
    required String variantName,
  }) = _OrderLine;

  factory OrderLine.fromJson(Map<String, Object?> json) => _OrderLineFromJson(json);
}

@unfreezed
class OrderLineCreateInput with _$OrderLineCreateInput {
  const OrderLineCreateInput._();

  const factory OrderLineCreateInput({
    /// Flag that allow force splitting the same variant into multiple lines by skipping the matching logic. 

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    bool? forceNewLine,
    /// Number of variant items ordered.
    required int quantity,
    /// Product variant ID.
    required String variantId,
  }) = _OrderLineCreateInput;

  factory OrderLineCreateInput.fromJson(Map<String, Object?> json) => _OrderLineCreateInputFromJson(json);
}

/// Deletes an order line from an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderLineDelete with _$OrderLineDelete {
  const OrderLineDelete._();

  /// Deletes an order line from an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderLineDelete({
    required List<OrderError> errors,
    /// A related order.
    Order? order,
    required List<OrderError> orderErrors,
    /// An order line that was deleted.
    OrderLine? orderLine,
  }) = _OrderLineDelete;

  factory OrderLineDelete.fromJson(Map<String, Object?> json) => _OrderLineDeleteFromJson(json);
}

/// Remove discount applied to the order line. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderLineDiscountRemove with _$OrderLineDiscountRemove {
  const OrderLineDiscountRemove._();

  /// Remove discount applied to the order line. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderLineDiscountRemove({
    required List<OrderError> errors,
    /// Order which is related to line which has removed discount.
    Order? order,
    required List<OrderError> orderErrors,
    /// Order line which has removed discount.
    OrderLine? orderLine,
  }) = _OrderLineDiscountRemove;

  factory OrderLineDiscountRemove.fromJson(Map<String, Object?> json) => _OrderLineDiscountRemoveFromJson(json);
}

/// Update discount for the order line. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderLineDiscountUpdate with _$OrderLineDiscountUpdate {
  const OrderLineDiscountUpdate._();

  /// Update discount for the order line. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderLineDiscountUpdate({
    required List<OrderError> errors,
    /// Order which is related to the discounted line.
    Order? order,
    required List<OrderError> orderErrors,
    /// Order line which has been discounted.
    OrderLine? orderLine,
  }) = _OrderLineDiscountUpdate;

  factory OrderLineDiscountUpdate.fromJson(Map<String, Object?> json) => _OrderLineDiscountUpdateFromJson(json);
}

@unfreezed
class OrderLineInput with _$OrderLineInput {
  const OrderLineInput._();

  const factory OrderLineInput({
    /// Number of variant items ordered.
    required int quantity,
  }) = _OrderLineInput;

  factory OrderLineInput.fromJson(Map<String, Object?> json) => _OrderLineInputFromJson(json);
}

/// Updates an order line of an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderLineUpdate with _$OrderLineUpdate {
  const OrderLineUpdate._();

  /// Updates an order line of an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderLineUpdate({
    required List<OrderError> errors,
    /// Related order.
    Order? order,
    required List<OrderError> orderErrors,
    OrderLine? orderLine,
  }) = _OrderLineUpdate;

  factory OrderLineUpdate.fromJson(Map<String, Object?> json) => _OrderLineUpdateFromJson(json);
}

/// Create order lines for an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderLinesCreate with _$OrderLinesCreate {
  const OrderLinesCreate._();

  /// Create order lines for an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderLinesCreate({
    required List<OrderError> errors,
    /// Related order.
    Order? order,
    required List<OrderError> orderErrors,
    /// List of added order lines.
    List<OrderLine>? orderLines,
  }) = _OrderLinesCreate;

  factory OrderLinesCreate.fromJson(Map<String, Object?> json) => _OrderLinesCreateFromJson(json);
}

/// Mark order as manually paid. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderMarkAsPaid with _$OrderMarkAsPaid {
  const OrderMarkAsPaid._();

  /// Mark order as manually paid. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderMarkAsPaid({
    required List<OrderError> errors,
    /// Order marked as paid.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderMarkAsPaid;

  factory OrderMarkAsPaid.fromJson(Map<String, Object?> json) => _OrderMarkAsPaidFromJson(json);
}

enum OrderOriginEnum{
  @JsonKey(name: CHECKOUT) checkout
  @JsonKey(name: DRAFT) draft
  @JsonKey(name: REISSUE) reissue
}

/// Refund an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderRefund with _$OrderRefund {
  const OrderRefund._();

  /// Refund an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderRefund({
    required List<OrderError> errors,
    /// A refunded order.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderRefund;

  factory OrderRefund.fromJson(Map<String, Object?> json) => _OrderRefundFromJson(json);
}

@unfreezed
class OrderRefundFulfillmentLineInput with _$OrderRefundFulfillmentLineInput {
  const OrderRefundFulfillmentLineInput._();

  const factory OrderRefundFulfillmentLineInput({
    /// The ID of the fulfillment line to refund.
    required String fulfillmentLineId,
    /// The number of items to be refunded.
    required int quantity,
  }) = _OrderRefundFulfillmentLineInput;

  factory OrderRefundFulfillmentLineInput.fromJson(Map<String, Object?> json) => _OrderRefundFulfillmentLineInputFromJson(json);
}

@unfreezed
class OrderRefundLineInput with _$OrderRefundLineInput {
  const OrderRefundLineInput._();

  const factory OrderRefundLineInput({
    /// The ID of the order line to refund.
    required String orderLineId,
    /// The number of items to be refunded.
    required int quantity,
  }) = _OrderRefundLineInput;

  factory OrderRefundLineInput.fromJson(Map<String, Object?> json) => _OrderRefundLineInputFromJson(json);
}

@unfreezed
class OrderRefundProductsInput with _$OrderRefundProductsInput {
  const OrderRefundProductsInput._();

  const factory OrderRefundProductsInput({
    /// The total amount of refund when the value is provided manually.
    PositiveDecimal? amountToRefund,
    /// List of fulfilled lines to refund.
    List<OrderRefundFulfillmentLineInput>? fulfillmentLines,
    /// If true, Saleor will refund shipping costs. If amountToRefund is providedincludeShippingCosts will be ignored.
    bool? includeShippingCosts,
    /// List of unfulfilled lines to refund.
    List<OrderRefundLineInput>? orderLines,
  }) = _OrderRefundProductsInput;

  factory OrderRefundProductsInput.fromJson(Map<String, Object?> json) => _OrderRefundProductsInputFromJson(json);
}

@unfreezed
class OrderReturnFulfillmentLineInput with _$OrderReturnFulfillmentLineInput {
  const OrderReturnFulfillmentLineInput._();

  const factory OrderReturnFulfillmentLineInput({
    /// The ID of the fulfillment line to return.
    required String fulfillmentLineId,
    /// The number of items to be returned.
    required int quantity,
    /// Determines, if the line should be added to replace order.
    bool? replace,
  }) = _OrderReturnFulfillmentLineInput;

  factory OrderReturnFulfillmentLineInput.fromJson(Map<String, Object?> json) => _OrderReturnFulfillmentLineInputFromJson(json);
}

@unfreezed
class OrderReturnLineInput with _$OrderReturnLineInput {
  const OrderReturnLineInput._();

  const factory OrderReturnLineInput({
    /// The ID of the order line to return.
    required String orderLineId,
    /// The number of items to be returned.
    required int quantity,
    /// Determines, if the line should be added to replace order.
    bool? replace,
  }) = _OrderReturnLineInput;

  factory OrderReturnLineInput.fromJson(Map<String, Object?> json) => _OrderReturnLineInputFromJson(json);
}

@unfreezed
class OrderReturnProductsInput with _$OrderReturnProductsInput {
  const OrderReturnProductsInput._();

  const factory OrderReturnProductsInput({
    /// The total amount of refund when the value is provided manually.
    PositiveDecimal? amountToRefund,
    /// List of fulfilled lines to return.
    List<OrderReturnFulfillmentLineInput>? fulfillmentLines,
    /// If true, Saleor will refund shipping costs. If amountToRefund is providedincludeShippingCosts will be ignored.
    bool? includeShippingCosts,
    /// List of unfulfilled lines to return.
    List<OrderReturnLineInput>? orderLines,
    /// If true, Saleor will call refund action for all lines.
    bool? refund,
  }) = _OrderReturnProductsInput;

  factory OrderReturnProductsInput.fromJson(Map<String, Object?> json) => _OrderReturnProductsInputFromJson(json);
}

/// Order related settings from site settings. 
@freezed
class OrderSettings with _$OrderSettings {
  const OrderSettings._();

  /// Order related settings from site settings. 
  const factory OrderSettings({
    required bool automaticallyConfirmAllNewOrders,
    required bool automaticallyFulfillNonShippableGiftCard,
  }) = _OrderSettings;

  factory OrderSettings.fromJson(Map<String, Object?> json) => _OrderSettingsFromJson(json);
}

@freezed
class OrderSettingsError with _$OrderSettingsError {
  const OrderSettingsError._();

  const factory OrderSettingsError({
    /// The error code.
    required OrderSettingsErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _OrderSettingsError;

  factory OrderSettingsError.fromJson(Map<String, Object?> json) => _OrderSettingsErrorFromJson(json);
}

enum OrderSettingsErrorCode{
  @JsonKey(name: INVALID) invalid
}

/// Update shop order settings. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderSettingsUpdate with _$OrderSettingsUpdate {
  const OrderSettingsUpdate._();

  /// Update shop order settings. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderSettingsUpdate({
    required List<OrderSettingsError> errors,
    /// Order settings.
    OrderSettings? orderSettings,
    required List<OrderSettingsError> orderSettingsErrors,
  }) = _OrderSettingsUpdate;

  factory OrderSettingsUpdate.fromJson(Map<String, Object?> json) => _OrderSettingsUpdateFromJson(json);
}

@unfreezed
class OrderSettingsUpdateInput with _$OrderSettingsUpdateInput {
  const OrderSettingsUpdateInput._();

  const factory OrderSettingsUpdateInput({
    /// When disabled, all new orders from checkout will be marked as unconfirmed. When enabled orders from checkout will become unfulfilled immediately.
    bool? automaticallyConfirmAllNewOrders,
    /// When enabled, all non-shippable gift card orders will be fulfilled automatically.
    bool? automaticallyFulfillNonShippableGiftCard,
  }) = _OrderSettingsUpdateInput;

  factory OrderSettingsUpdateInput.fromJson(Map<String, Object?> json) => _OrderSettingsUpdateInputFromJson(json);
}

enum OrderSortField{
  /// Sort orders by creation date. 

DEPRECATED: this field will be removed in Saleor 4.0. 
@JsonKey(name: CREATED_AT) created_at
  /// Sort orders by creation date. 

DEPRECATED: this field will be removed in Saleor 4.0. 
@JsonKey(name: CREATION_DATE) creation_date
  /// Sort orders by customer. 
@JsonKey(name: CUSTOMER) customer
  /// Sort orders by fulfillment status. 
@JsonKey(name: FULFILLMENT_STATUS) fulfillment_status
  /// Sort orders by last modified at. 
@JsonKey(name: LAST_MODIFIED_AT) last_modified_at
  /// Sort orders by number. 
@JsonKey(name: NUMBER) number
  /// Sort orders by payment. 
@JsonKey(name: PAYMENT) payment
  /// Sort orders by rank. Note: This option is available only with the `search` filter. 
@JsonKey(name: RANK) rank
}

@unfreezed
class OrderSortingInput with _$OrderSortingInput {
  const OrderSortingInput._();

  const factory OrderSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort orders by the selected field.
    required OrderSortField field,
  }) = _OrderSortingInput;

  factory OrderSortingInput.fromJson(Map<String, Object?> json) => _OrderSortingInputFromJson(json);
}

enum OrderStatus{
  @JsonKey(name: CANCELED) canceled
  @JsonKey(name: DRAFT) draft
  @JsonKey(name: FULFILLED) fulfilled
  @JsonKey(name: PARTIALLY_FULFILLED) partially_fulfilled
  @JsonKey(name: PARTIALLY_RETURNED) partially_returned
  @JsonKey(name: RETURNED) returned
  @JsonKey(name: UNCONFIRMED) unconfirmed
  @JsonKey(name: UNFULFILLED) unfulfilled
}

enum OrderStatusFilter{
  @JsonKey(name: CANCELED) canceled
  @JsonKey(name: FULFILLED) fulfilled
  @JsonKey(name: PARTIALLY_FULFILLED) partially_fulfilled
  @JsonKey(name: READY_TO_CAPTURE) ready_to_capture
  @JsonKey(name: READY_TO_FULFILL) ready_to_fulfill
  @JsonKey(name: UNCONFIRMED) unconfirmed
  @JsonKey(name: UNFULFILLED) unfulfilled
}

/// Updates an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderUpdate with _$OrderUpdate {
  const OrderUpdate._();

  /// Updates an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderUpdate({
    required List<OrderError> errors,
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderUpdate;

  factory OrderUpdate.fromJson(Map<String, Object?> json) => _OrderUpdateFromJson(json);
}

@unfreezed
class OrderUpdateInput with _$OrderUpdateInput {
  const OrderUpdateInput._();

  const factory OrderUpdateInput({
    /// Billing address of the customer.
    AddressInput? billingAddress,
    /// Shipping address of the customer.
    AddressInput? shippingAddress,
    /// Email address of the customer.
    String? userEmail,
  }) = _OrderUpdateInput;

  factory OrderUpdateInput.fromJson(Map<String, Object?> json) => _OrderUpdateInputFromJson(json);
}

/// Updates a shipping method of the order. Requires shipping method ID to update, when null is passed then currently assigned shipping method is removed. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderUpdateShipping with _$OrderUpdateShipping {
  const OrderUpdateShipping._();

  /// Updates a shipping method of the order. Requires shipping method ID to update, when null is passed then currently assigned shipping method is removed. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderUpdateShipping({
    required List<OrderError> errors,
    /// Order with updated shipping method.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderUpdateShipping;

  factory OrderUpdateShipping.fromJson(Map<String, Object?> json) => _OrderUpdateShippingFromJson(json);
}

@unfreezed
class OrderUpdateShippingInput with _$OrderUpdateShippingInput {
  const OrderUpdateShippingInput._();

  const factory OrderUpdateShippingInput({
    /// ID of the selected shipping method, pass null to remove currently assigned shipping method.
    String? shippingMethod,
  }) = _OrderUpdateShippingInput;

  factory OrderUpdateShippingInput.fromJson(Map<String, Object?> json) => _OrderUpdateShippingInputFromJson(json);
}

/// Event sent when order is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class OrderUpdated with _$OrderUpdated {
  const OrderUpdated._();

  /// Event sent when order is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory OrderUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The order the event relates to.
    Order? order,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _OrderUpdated;

  factory OrderUpdated.fromJson(Map<String, Object?> json) => _OrderUpdatedFromJson(json);
}

/// Void an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class OrderVoid with _$OrderVoid {
  const OrderVoid._();

  /// Void an order. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory OrderVoid({
    required List<OrderError> errors,
    /// A voided order.
    Order? order,
    required List<OrderError> orderErrors,
  }) = _OrderVoid;

  factory OrderVoid.fromJson(Map<String, Object?> json) => _OrderVoidFromJson(json);
}

/// A static page that can be manually added by a shop operator through the dashboard. 
@freezed
class Page with _$Page {
  const Page._();

  /// A static page that can be manually added by a shop operator through the dashboard. 
  const factory Page({
    /// List of attributes assigned to this product.
    required List<SelectedAttribute> attributes,
    /// Content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Content of the page.

Rich text format. For reference see https://editorjs.io/
    required JSONString contentJson,
    required DateTime created,
    required String id,
    required bool isPublished,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required PageType pageType,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    Date? publicationDate,
    /// The page publication date.

Added in Saleor 3.3.
    DateTime? publishedAt,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    required String title,
    /// Returns translated page fields for the given language code.
    PageTranslation? translation,
  }) = _Page;

  factory Page.fromJson(Map<String, Object?> json) => _PageFromJson(json);
}

/// Assign attributes to a given page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageAttributeAssign with _$PageAttributeAssign {
  const PageAttributeAssign._();

  /// Assign attributes to a given page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageAttributeAssign({
    required List<PageError> errors,
    required List<PageError> pageErrors,
    /// The updated page type.
    PageType? pageType,
  }) = _PageAttributeAssign;

  factory PageAttributeAssign.fromJson(Map<String, Object?> json) => _PageAttributeAssignFromJson(json);
}

/// Unassign attributes from a given page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageAttributeUnassign with _$PageAttributeUnassign {
  const PageAttributeUnassign._();

  /// Unassign attributes from a given page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageAttributeUnassign({
    required List<PageError> errors,
    required List<PageError> pageErrors,
    /// The updated page type.
    PageType? pageType,
  }) = _PageAttributeUnassign;

  factory PageAttributeUnassign.fromJson(Map<String, Object?> json) => _PageAttributeUnassignFromJson(json);
}

/// Deletes pages. 

Requires one of the following permissions: MANAGE_PAGES. 
@freezed
class PageBulkDelete with _$PageBulkDelete {
  const PageBulkDelete._();

  /// Deletes pages. 

Requires one of the following permissions: MANAGE_PAGES. 
  const factory PageBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<PageError> errors,
    required List<PageError> pageErrors,
  }) = _PageBulkDelete;

  factory PageBulkDelete.fromJson(Map<String, Object?> json) => _PageBulkDeleteFromJson(json);
}

/// Publish pages. 

Requires one of the following permissions: MANAGE_PAGES. 
@freezed
class PageBulkPublish with _$PageBulkPublish {
  const PageBulkPublish._();

  /// Publish pages. 

Requires one of the following permissions: MANAGE_PAGES. 
  const factory PageBulkPublish({
    /// Returns how many objects were affected.
    required int count,
    required List<PageError> errors,
    required List<PageError> pageErrors,
  }) = _PageBulkPublish;

  factory PageBulkPublish.fromJson(Map<String, Object?> json) => _PageBulkPublishFromJson(json);
}

@freezed
class PageCountableConnection with _$PageCountableConnection {
  const PageCountableConnection._();

  const factory PageCountableConnection({
    required List<PageCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _PageCountableConnection;

  factory PageCountableConnection.fromJson(Map<String, Object?> json) => _PageCountableConnectionFromJson(json);
}

@freezed
class PageCountableEdge with _$PageCountableEdge {
  const PageCountableEdge._();

  const factory PageCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Page node,
  }) = _PageCountableEdge;

  factory PageCountableEdge.fromJson(Map<String, Object?> json) => _PageCountableEdgeFromJson(json);
}

/// Creates a new page. 

Requires one of the following permissions: MANAGE_PAGES. 
@freezed
class PageCreate with _$PageCreate {
  const PageCreate._();

  /// Creates a new page. 

Requires one of the following permissions: MANAGE_PAGES. 
  const factory PageCreate({
    required List<PageError> errors,
    Page? page,
    required List<PageError> pageErrors,
  }) = _PageCreate;

  factory PageCreate.fromJson(Map<String, Object?> json) => _PageCreateFromJson(json);
}

@unfreezed
class PageCreateInput with _$PageCreateInput {
  const PageCreateInput._();

  const factory PageCreateInput({
    /// List of attributes.
    List<AttributeValueInput>? attributes,
    /// Page content.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Determines if page is visible in the storefront.
    bool? isPublished,
    /// ID of the page type that page belongs to.
    required String pageType,
    /// Publication date. ISO 8601 standard. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `publishedAt` field instead.
    String? publicationDate,
    /// Publication date time. ISO 8601 standard.

Added in Saleor 3.3.
    DateTime? publishedAt,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Page internal name.
    String? slug,
    /// Page title.
    String? title,
  }) = _PageCreateInput;

  factory PageCreateInput.fromJson(Map<String, Object?> json) => _PageCreateInputFromJson(json);
}

/// Event sent when new page is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PageCreated with _$PageCreated {
  const PageCreated._();

  /// Event sent when new page is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PageCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The page the event relates to.
    Page? page,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PageCreated;

  factory PageCreated.fromJson(Map<String, Object?> json) => _PageCreatedFromJson(json);
}

/// Deletes a page. 

Requires one of the following permissions: MANAGE_PAGES. 
@freezed
class PageDelete with _$PageDelete {
  const PageDelete._();

  /// Deletes a page. 

Requires one of the following permissions: MANAGE_PAGES. 
  const factory PageDelete({
    required List<PageError> errors,
    Page? page,
    required List<PageError> pageErrors,
  }) = _PageDelete;

  factory PageDelete.fromJson(Map<String, Object?> json) => _PageDeleteFromJson(json);
}

/// Event sent when page is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PageDeleted with _$PageDeleted {
  const PageDeleted._();

  /// Event sent when page is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PageDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The page the event relates to.
    Page? page,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PageDeleted;

  factory PageDeleted.fromJson(Map<String, Object?> json) => _PageDeletedFromJson(json);
}

@freezed
class PageError with _$PageError {
  const PageError._();

  const factory PageError({
    /// List of attributes IDs which causes the error.
    List<String>? attributes,
    /// The error code.
    required PageErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of attribute values IDs which causes the error.
    List<String>? values,
  }) = _PageError;

  factory PageError.fromJson(Map<String, Object?> json) => _PageErrorFromJson(json);
}

enum PageErrorCode{
  @JsonKey(name: ATTRIBUTE_ALREADY_ASSIGNED) attribute_already_assigned
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class PageFilterInput with _$PageFilterInput {
  const PageFilterInput._();

  const factory PageFilterInput({
    List<String>? ids,
    List<MetadataFilter>? metadata,
    List<String>? pageTypes,
    String? search,
  }) = _PageFilterInput;

  factory PageFilterInput.fromJson(Map<String, Object?> json) => _PageFilterInputFromJson(json);
}

/// The Relay compliant `PageInfo` type, containing data necessary to paginate this connection. 
@freezed
class PageInfo with _$PageInfo {
  const PageInfo._();

  /// The Relay compliant `PageInfo` type, containing data necessary to paginate this connection. 
  const factory PageInfo({
    /// When paginating forwards, the cursor to continue.
    String? endCursor,
    /// When paginating forwards, are there more items?
    required bool hasNextPage,
    /// When paginating backwards, are there more items?
    required bool hasPreviousPage,
    /// When paginating backwards, the cursor to continue.
    String? startCursor,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, Object?> json) => _PageInfoFromJson(json);
}

@unfreezed
class PageInput with _$PageInput {
  const PageInput._();

  const factory PageInput({
    /// List of attributes.
    List<AttributeValueInput>? attributes,
    /// Page content.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Determines if page is visible in the storefront.
    bool? isPublished,
    /// Publication date. ISO 8601 standard. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `publishedAt` field instead.
    String? publicationDate,
    /// Publication date time. ISO 8601 standard.

Added in Saleor 3.3.
    DateTime? publishedAt,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Page internal name.
    String? slug,
    /// Page title.
    String? title,
  }) = _PageInput;

  factory PageInput.fromJson(Map<String, Object?> json) => _PageInputFromJson(json);
}

/// Reorder page attribute values. 

Requires one of the following permissions: MANAGE_PAGES. 
@freezed
class PageReorderAttributeValues with _$PageReorderAttributeValues {
  const PageReorderAttributeValues._();

  /// Reorder page attribute values. 

Requires one of the following permissions: MANAGE_PAGES. 
  const factory PageReorderAttributeValues({
    required List<PageError> errors,
    /// Page from which attribute values are reordered.
    Page? page,
    required List<PageError> pageErrors,
  }) = _PageReorderAttributeValues;

  factory PageReorderAttributeValues.fromJson(Map<String, Object?> json) => _PageReorderAttributeValuesFromJson(json);
}

enum PageSortField{
  /// Sort pages by creation date. 
@JsonKey(name: CREATION_DATE) creation_date
  /// Sort pages by publication date.

DEPRECATED: this field will be removed in Saleor 4.0. 
@JsonKey(name: PUBLICATION_DATE) publication_date
  /// Sort pages by publication date.

DEPRECATED: this field will be removed in Saleor 4.0. 
@JsonKey(name: PUBLISHED_AT) published_at
  /// Sort pages by slug. 
@JsonKey(name: SLUG) slug
  /// Sort pages by title. 
@JsonKey(name: TITLE) title
  /// Sort pages by visibility. 
@JsonKey(name: VISIBILITY) visibility
}

@unfreezed
class PageSortingInput with _$PageSortingInput {
  const PageSortingInput._();

  const factory PageSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort pages by the selected field.
    required PageSortField field,
  }) = _PageSortingInput;

  factory PageSortingInput.fromJson(Map<String, Object?> json) => _PageSortingInputFromJson(json);
}

@freezed
class PageTranslatableContent with _$PageTranslatableContent {
  const PageTranslatableContent._();

  const factory PageTranslatableContent({
    /// List of page content attribute values that can be translated.
    required List<AttributeValueTranslatableContent> attributeValues,
    /// Content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? contentJson,
    required String id,
    /// A static page that can be manually added by a shop operator through the dashboard.
    Page? page,
    String? seoDescription,
    String? seoTitle,
    required String title,
    /// Returns translated page fields for the given language code.
    PageTranslation? translation,
  }) = _PageTranslatableContent;

  factory PageTranslatableContent.fromJson(Map<String, Object?> json) => _PageTranslatableContentFromJson(json);
}

/// Creates/updates translations for a page. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class PageTranslate with _$PageTranslate {
  const PageTranslate._();

  /// Creates/updates translations for a page. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory PageTranslate({
    required List<TranslationError> errors,
    PageTranslatableContent? page,
    required List<TranslationError> translationErrors,
  }) = _PageTranslate;

  factory PageTranslate.fromJson(Map<String, Object?> json) => _PageTranslateFromJson(json);
}

@freezed
class PageTranslation with _$PageTranslation {
  const PageTranslation._();

  const factory PageTranslation({
    /// Translated content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Translated description of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? contentJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? seoDescription,
    String? seoTitle,
    String? title,
  }) = _PageTranslation;

  factory PageTranslation.fromJson(Map<String, Object?> json) => _PageTranslationFromJson(json);
}

@unfreezed
class PageTranslationInput with _$PageTranslationInput {
  const PageTranslationInput._();

  const factory PageTranslationInput({
    /// Translated page content.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    String? seoDescription,
    String? seoTitle,
    String? title,
  }) = _PageTranslationInput;

  factory PageTranslationInput.fromJson(Map<String, Object?> json) => _PageTranslationInputFromJson(json);
}

/// Represents a type of page. It defines what attributes are available to pages of this type. 
@freezed
class PageType with _$PageType {
  const PageType._();

  /// Represents a type of page. It defines what attributes are available to pages of this type. 
  const factory PageType({
    /// Page attributes of that page type.
    List<Attribute>? attributes,
    /// Attributes that can be assigned to the page type.

Requires one of the following permissions: MANAGE_PAGES.
    AttributeCountableConnection? availableAttributes,
    /// Whether page type has pages assigned.

Requires one of the following permissions: MANAGE_PAGES.
    bool? hasPages,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required String slug,
  }) = _PageType;

  factory PageType.fromJson(Map<String, Object?> json) => _PageTypeFromJson(json);
}

/// Delete page types. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageTypeBulkDelete with _$PageTypeBulkDelete {
  const PageTypeBulkDelete._();

  /// Delete page types. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageTypeBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<PageError> errors,
    required List<PageError> pageErrors,
  }) = _PageTypeBulkDelete;

  factory PageTypeBulkDelete.fromJson(Map<String, Object?> json) => _PageTypeBulkDeleteFromJson(json);
}

@freezed
class PageTypeCountableConnection with _$PageTypeCountableConnection {
  const PageTypeCountableConnection._();

  const factory PageTypeCountableConnection({
    required List<PageTypeCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _PageTypeCountableConnection;

  factory PageTypeCountableConnection.fromJson(Map<String, Object?> json) => _PageTypeCountableConnectionFromJson(json);
}

@freezed
class PageTypeCountableEdge with _$PageTypeCountableEdge {
  const PageTypeCountableEdge._();

  const factory PageTypeCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required PageType node,
  }) = _PageTypeCountableEdge;

  factory PageTypeCountableEdge.fromJson(Map<String, Object?> json) => _PageTypeCountableEdgeFromJson(json);
}

/// Create a new page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageTypeCreate with _$PageTypeCreate {
  const PageTypeCreate._();

  /// Create a new page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageTypeCreate({
    required List<PageError> errors,
    required List<PageError> pageErrors,
    PageType? pageType,
  }) = _PageTypeCreate;

  factory PageTypeCreate.fromJson(Map<String, Object?> json) => _PageTypeCreateFromJson(json);
}

@unfreezed
class PageTypeCreateInput with _$PageTypeCreateInput {
  const PageTypeCreateInput._();

  const factory PageTypeCreateInput({
    /// List of attribute IDs to be assigned to the page type.
    List<String>? addAttributes,
    /// Name of the page type.
    String? name,
    /// Page type slug.
    String? slug,
  }) = _PageTypeCreateInput;

  factory PageTypeCreateInput.fromJson(Map<String, Object?> json) => _PageTypeCreateInputFromJson(json);
}

/// Event sent when new page type is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PageTypeCreated with _$PageTypeCreated {
  const PageTypeCreated._();

  /// Event sent when new page type is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PageTypeCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The page type the event relates to.
    PageType? pageType,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PageTypeCreated;

  factory PageTypeCreated.fromJson(Map<String, Object?> json) => _PageTypeCreatedFromJson(json);
}

/// Delete a page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageTypeDelete with _$PageTypeDelete {
  const PageTypeDelete._();

  /// Delete a page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageTypeDelete({
    required List<PageError> errors,
    required List<PageError> pageErrors,
    PageType? pageType,
  }) = _PageTypeDelete;

  factory PageTypeDelete.fromJson(Map<String, Object?> json) => _PageTypeDeleteFromJson(json);
}

/// Event sent when page type is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PageTypeDeleted with _$PageTypeDeleted {
  const PageTypeDeleted._();

  /// Event sent when page type is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PageTypeDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The page type the event relates to.
    PageType? pageType,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PageTypeDeleted;

  factory PageTypeDeleted.fromJson(Map<String, Object?> json) => _PageTypeDeletedFromJson(json);
}

@unfreezed
class PageTypeFilterInput with _$PageTypeFilterInput {
  const PageTypeFilterInput._();

  const factory PageTypeFilterInput({
    String? search,
  }) = _PageTypeFilterInput;

  factory PageTypeFilterInput.fromJson(Map<String, Object?> json) => _PageTypeFilterInputFromJson(json);
}

/// Reorder the attributes of a page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageTypeReorderAttributes with _$PageTypeReorderAttributes {
  const PageTypeReorderAttributes._();

  /// Reorder the attributes of a page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageTypeReorderAttributes({
    required List<PageError> errors,
    required List<PageError> pageErrors,
    /// Page type from which attributes are reordered.
    PageType? pageType,
  }) = _PageTypeReorderAttributes;

  factory PageTypeReorderAttributes.fromJson(Map<String, Object?> json) => _PageTypeReorderAttributesFromJson(json);
}

enum PageTypeSortField{
  /// Sort page types by name. 
@JsonKey(name: NAME) name
  /// Sort page types by slug. 
@JsonKey(name: SLUG) slug
}

@unfreezed
class PageTypeSortingInput with _$PageTypeSortingInput {
  const PageTypeSortingInput._();

  const factory PageTypeSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort page types by the selected field.
    required PageTypeSortField field,
  }) = _PageTypeSortingInput;

  factory PageTypeSortingInput.fromJson(Map<String, Object?> json) => _PageTypeSortingInputFromJson(json);
}

/// Update page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
@freezed
class PageTypeUpdate with _$PageTypeUpdate {
  const PageTypeUpdate._();

  /// Update page type. 

Requires one of the following permissions: MANAGE_PAGE_TYPES_AND_ATTRIBUTES. 
  const factory PageTypeUpdate({
    required List<PageError> errors,
    required List<PageError> pageErrors,
    PageType? pageType,
  }) = _PageTypeUpdate;

  factory PageTypeUpdate.fromJson(Map<String, Object?> json) => _PageTypeUpdateFromJson(json);
}

@unfreezed
class PageTypeUpdateInput with _$PageTypeUpdateInput {
  const PageTypeUpdateInput._();

  const factory PageTypeUpdateInput({
    /// List of attribute IDs to be assigned to the page type.
    List<String>? addAttributes,
    /// Name of the page type.
    String? name,
    /// List of attribute IDs to be assigned to the page type.
    List<String>? removeAttributes,
    /// Page type slug.
    String? slug,
  }) = _PageTypeUpdateInput;

  factory PageTypeUpdateInput.fromJson(Map<String, Object?> json) => _PageTypeUpdateInputFromJson(json);
}

/// Event sent when page type is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PageTypeUpdated with _$PageTypeUpdated {
  const PageTypeUpdated._();

  /// Event sent when page type is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PageTypeUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The page type the event relates to.
    PageType? pageType,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PageTypeUpdated;

  factory PageTypeUpdated.fromJson(Map<String, Object?> json) => _PageTypeUpdatedFromJson(json);
}

/// Updates an existing page. 

Requires one of the following permissions: MANAGE_PAGES. 
@freezed
class PageUpdate with _$PageUpdate {
  const PageUpdate._();

  /// Updates an existing page. 

Requires one of the following permissions: MANAGE_PAGES. 
  const factory PageUpdate({
    required List<PageError> errors,
    Page? page,
    required List<PageError> pageErrors,
  }) = _PageUpdate;

  factory PageUpdate.fromJson(Map<String, Object?> json) => _PageUpdateFromJson(json);
}

/// Event sent when page is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PageUpdated with _$PageUpdated {
  const PageUpdated._();

  /// Event sent when page is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PageUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The page the event relates to.
    Page? page,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PageUpdated;

  factory PageUpdated.fromJson(Map<String, Object?> json) => _PageUpdatedFromJson(json);
}

/// Change the password of the logged in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class PasswordChange with _$PasswordChange {
  const PasswordChange._();

  /// Change the password of the logged in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory PasswordChange({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// A user instance with a new password.
    User? user,
  }) = _PasswordChange;

  factory PasswordChange.fromJson(Map<String, Object?> json) => _PasswordChangeFromJson(json);
}

/// Represents a payment of a given type. 
@freezed
class Payment with _$Payment {
  const Payment._();

  /// Represents a payment of a given type. 
  const factory Payment({
    /// List of actions that can be performed in the current state of a payment.

Requires one of the following permissions: MANAGE_ORDERS.
    required List<OrderAction> actions,
    /// Maximum amount of money that can be captured.

Requires one of the following permissions: MANAGE_ORDERS.
    Money? availableCaptureAmount,
    /// Maximum amount of money that can be refunded.

Requires one of the following permissions: MANAGE_ORDERS.
    Money? availableRefundAmount,
    /// Total amount captured for this payment.
    Money? capturedAmount,
    /// Internal payment status.
    required PaymentChargeStatusEnum chargeStatus,
    Checkout? checkout,
    required DateTime created,
    /// The details of the card used for this payment.
    CreditCard? creditCard,
    /// IP address of the user who created the payment.

Requires one of the following permissions: MANAGE_ORDERS.
    String? customerIpAddress,
    required String gateway,
    required String id,
    required bool isActive,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required DateTime modified,
    Order? order,
    required String paymentMethodType,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required String token,
    /// Total amount of the payment.
    Money? total,
    /// List of all transactions within this payment.

Requires one of the following permissions: MANAGE_ORDERS.
    List<Transaction>? transactions,
  }) = _Payment;

  factory Payment.fromJson(Map<String, Object?> json) => _PaymentFromJson(json);
}

/// Authorize payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentAuthorize with _$PaymentAuthorize {
  const PaymentAuthorize._();

  /// Authorize payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentAuthorize({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// Look up a payment.
    Payment? payment,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentAuthorize;

  factory PaymentAuthorize.fromJson(Map<String, Object?> json) => _PaymentAuthorizeFromJson(json);
}

/// Captures the authorized payment amount. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class PaymentCapture with _$PaymentCapture {
  const PaymentCapture._();

  /// Captures the authorized payment amount. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory PaymentCapture({
    required List<PaymentError> errors,
    /// Updated payment.
    Payment? payment,
    required List<PaymentError> paymentErrors,
  }) = _PaymentCapture;

  factory PaymentCapture.fromJson(Map<String, Object?> json) => _PaymentCaptureFromJson(json);
}

/// Capture payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentCaptureEvent with _$PaymentCaptureEvent {
  const PaymentCaptureEvent._();

  /// Capture payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentCaptureEvent({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// Look up a payment.
    Payment? payment,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentCaptureEvent;

  factory PaymentCaptureEvent.fromJson(Map<String, Object?> json) => _PaymentCaptureEventFromJson(json);
}

enum PaymentChargeStatusEnum{
  @JsonKey(name: CANCELLED) cancelled
  @JsonKey(name: FULLY_CHARGED) fully_charged
  @JsonKey(name: FULLY_REFUNDED) fully_refunded
  @JsonKey(name: NOT_CHARGED) not_charged
  @JsonKey(name: PARTIALLY_CHARGED) partially_charged
  @JsonKey(name: PARTIALLY_REFUNDED) partially_refunded
  @JsonKey(name: PENDING) pending
  @JsonKey(name: REFUSED) refused
}

/// Check payment balance. 
@freezed
class PaymentCheckBalance with _$PaymentCheckBalance {
  const PaymentCheckBalance._();

  /// Check payment balance. 
  const factory PaymentCheckBalance({
    /// Response from the gateway.
    JSONString? data,
    required List<PaymentError> errors,
    required List<PaymentError> paymentErrors,
  }) = _PaymentCheckBalance;

  factory PaymentCheckBalance.fromJson(Map<String, Object?> json) => _PaymentCheckBalanceFromJson(json);
}

@unfreezed
class PaymentCheckBalanceInput with _$PaymentCheckBalanceInput {
  const PaymentCheckBalanceInput._();

  const factory PaymentCheckBalanceInput({
    /// Information about card.
    required CardInput card,
    /// Slug of a channel for which the data should be returned.
    required String channel,
    /// An ID of a payment gateway to check.
    required String gatewayId,
    /// Payment method name.
    required String method,
  }) = _PaymentCheckBalanceInput;

  factory PaymentCheckBalanceInput.fromJson(Map<String, Object?> json) => _PaymentCheckBalanceInputFromJson(json);
}

/// Confirm payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentConfirmEvent with _$PaymentConfirmEvent {
  const PaymentConfirmEvent._();

  /// Confirm payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentConfirmEvent({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// Look up a payment.
    Payment? payment,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentConfirmEvent;

  factory PaymentConfirmEvent.fromJson(Map<String, Object?> json) => _PaymentConfirmEventFromJson(json);
}

@freezed
class PaymentCountableConnection with _$PaymentCountableConnection {
  const PaymentCountableConnection._();

  const factory PaymentCountableConnection({
    required List<PaymentCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _PaymentCountableConnection;

  factory PaymentCountableConnection.fromJson(Map<String, Object?> json) => _PaymentCountableConnectionFromJson(json);
}

@freezed
class PaymentCountableEdge with _$PaymentCountableEdge {
  const PaymentCountableEdge._();

  const factory PaymentCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Payment node,
  }) = _PaymentCountableEdge;

  factory PaymentCountableEdge.fromJson(Map<String, Object?> json) => _PaymentCountableEdgeFromJson(json);
}

@freezed
class PaymentError with _$PaymentError {
  const PaymentError._();

  const factory PaymentError({
    /// The error code.
    required PaymentErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of variant IDs which causes the error.
    List<String>? variants,
  }) = _PaymentError;

  factory PaymentError.fromJson(Map<String, Object?> json) => _PaymentErrorFromJson(json);
}

enum PaymentErrorCode{
  @JsonKey(name: BALANCE_CHECK_ERROR) balance_check_error
  @JsonKey(name: BILLING_ADDRESS_NOT_SET) billing_address_not_set
  @JsonKey(name: CHANNEL_INACTIVE) channel_inactive
  @JsonKey(name: CHECKOUT_EMAIL_NOT_SET) checkout_email_not_set
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: INVALID_SHIPPING_METHOD) invalid_shipping_method
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: NOT_SUPPORTED_GATEWAY) not_supported_gateway
  @JsonKey(name: NO_CHECKOUT_LINES) no_checkout_lines
  @JsonKey(name: PARTIAL_PAYMENT_NOT_ALLOWED) partial_payment_not_allowed
  @JsonKey(name: PAYMENT_ERROR) payment_error
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: SHIPPING_ADDRESS_NOT_SET) shipping_address_not_set
  @JsonKey(name: SHIPPING_METHOD_NOT_SET) shipping_method_not_set
  @JsonKey(name: UNAVAILABLE_VARIANT_IN_CHANNEL) unavailable_variant_in_channel
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class PaymentFilterInput with _$PaymentFilterInput {
  const PaymentFilterInput._();

  const factory PaymentFilterInput({
    List<String>? checkouts,
  }) = _PaymentFilterInput;

  factory PaymentFilterInput.fromJson(Map<String, Object?> json) => _PaymentFilterInputFromJson(json);
}

/// Available payment gateway backend with configuration necessary to setup client. 
@freezed
class PaymentGateway with _$PaymentGateway {
  const PaymentGateway._();

  /// Available payment gateway backend with configuration necessary to setup client. 
  const factory PaymentGateway({
    /// Payment gateway client configuration.
    required List<GatewayConfigLine> config,
    /// Payment gateway supported currencies.
    required List<String> currencies,
    /// Payment gateway ID.
    required String id,
    /// Payment gateway name.
    required String name,
  }) = _PaymentGateway;

  factory PaymentGateway.fromJson(Map<String, Object?> json) => _PaymentGatewayFromJson(json);
}

/// Initializes payment process when it is required by gateway. 
@freezed
class PaymentInitialize with _$PaymentInitialize {
  const PaymentInitialize._();

  /// Initializes payment process when it is required by gateway. 
  const factory PaymentInitialize({
    required List<PaymentError> errors,
    PaymentInitialized? initializedPayment,
    required List<PaymentError> paymentErrors,
  }) = _PaymentInitialize;

  factory PaymentInitialize.fromJson(Map<String, Object?> json) => _PaymentInitializeFromJson(json);
}

/// Server-side data generated by a payment gateway. Optional step when the payment provider requires an additional action to initialize payment session. 
@freezed
class PaymentInitialized with _$PaymentInitialized {
  const PaymentInitialized._();

  /// Server-side data generated by a payment gateway. Optional step when the payment provider requires an additional action to initialize payment session. 
  const factory PaymentInitialized({
    /// Initialized data by gateway.
    JSONString? data,
    /// ID of a payment gateway.
    required String gateway,
    /// Payment gateway name.
    required String name,
  }) = _PaymentInitialized;

  factory PaymentInitialized.fromJson(Map<String, Object?> json) => _PaymentInitializedFromJson(json);
}

@unfreezed
class PaymentInput with _$PaymentInput {
  const PaymentInput._();

  const factory PaymentInput({
    /// Total amount of the transaction, including all taxes and discounts. If no amount is provided, the checkout total will be used.
    PositiveDecimal? amount,
    /// A gateway to use with that payment.
    required String gateway,
    /// User public metadata.

Added in Saleor 3.1.
    List<MetadataInput>? metadata,
    /// URL of a storefront view where user should be redirected after requiring additional actions. Payment with additional actions will not be finished if this field is not provided.
    String? returnUrl,
    /// Payment store type.

Added in Saleor 3.1.
    StorePaymentMethodEnum? storePaymentMethod,
    /// Client-side generated payment token, representing customer's billing data in a secure manner.
    String? token,
  }) = _PaymentInput;

  factory PaymentInput.fromJson(Map<String, Object?> json) => _PaymentInputFromJson(json);
}

/// List payment gateways.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentListGateways with _$PaymentListGateways {
  const PaymentListGateways._();

  /// List payment gateways.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentListGateways({
    /// The checkout the event relates to.
    Checkout? checkout,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentListGateways;

  factory PaymentListGateways.fromJson(Map<String, Object?> json) => _PaymentListGatewaysFromJson(json);
}

/// Process payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentProcessEvent with _$PaymentProcessEvent {
  const PaymentProcessEvent._();

  /// Process payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentProcessEvent({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// Look up a payment.
    Payment? payment,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentProcessEvent;

  factory PaymentProcessEvent.fromJson(Map<String, Object?> json) => _PaymentProcessEventFromJson(json);
}

/// Refunds the captured payment amount. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class PaymentRefund with _$PaymentRefund {
  const PaymentRefund._();

  /// Refunds the captured payment amount. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory PaymentRefund({
    required List<PaymentError> errors,
    /// Updated payment.
    Payment? payment,
    required List<PaymentError> paymentErrors,
  }) = _PaymentRefund;

  factory PaymentRefund.fromJson(Map<String, Object?> json) => _PaymentRefundFromJson(json);
}

/// Refund payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentRefundEvent with _$PaymentRefundEvent {
  const PaymentRefundEvent._();

  /// Refund payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentRefundEvent({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// Look up a payment.
    Payment? payment,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentRefundEvent;

  factory PaymentRefundEvent.fromJson(Map<String, Object?> json) => _PaymentRefundEventFromJson(json);
}

/// Represents a payment source stored for user in payment gateway, such as credit card. 
@freezed
class PaymentSource with _$PaymentSource {
  const PaymentSource._();

  /// Represents a payment source stored for user in payment gateway, such as credit card. 
  const factory PaymentSource({
    /// Stored credit card details if available.
    CreditCard? creditCardInfo,
    /// Payment gateway name.
    required String gateway,
    /// List of public metadata items.

Added in Saleor 3.1.

Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// ID of stored payment method.
    String? paymentMethodId,
  }) = _PaymentSource;

  factory PaymentSource.fromJson(Map<String, Object?> json) => _PaymentSourceFromJson(json);
}

/// Voids the authorized payment. 

Requires one of the following permissions: MANAGE_ORDERS. 
@freezed
class PaymentVoid with _$PaymentVoid {
  const PaymentVoid._();

  /// Voids the authorized payment. 

Requires one of the following permissions: MANAGE_ORDERS. 
  const factory PaymentVoid({
    required List<PaymentError> errors,
    /// Updated payment.
    Payment? payment,
    required List<PaymentError> paymentErrors,
  }) = _PaymentVoid;

  factory PaymentVoid.fromJson(Map<String, Object?> json) => _PaymentVoidFromJson(json);
}

/// Void payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PaymentVoidEvent with _$PaymentVoidEvent {
  const PaymentVoidEvent._();

  /// Void payment.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PaymentVoidEvent({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// Look up a payment.
    Payment? payment,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PaymentVoidEvent;

  factory PaymentVoidEvent.fromJson(Map<String, Object?> json) => _PaymentVoidEventFromJson(json);
}

/// Represents a permission object in a friendly form. 
@freezed
class Permission with _$Permission {
  const Permission._();

  /// Represents a permission object in a friendly form. 
  const factory Permission({
    /// Internal code for permission.
    required PermissionEnum code,
    /// Describe action(s) allowed to do by permission.
    required String name,
  }) = _Permission;

  factory Permission.fromJson(Map<String, Object?> json) => _PermissionFromJson(json);
}

enum PermissionEnum{
  @JsonKey(name: HANDLE_CHECKOUTS) handle_checkouts
  @JsonKey(name: HANDLE_PAYMENTS) handle_payments
  @JsonKey(name: HANDLE_TAXES) handle_taxes
  @JsonKey(name: IMPERSONATE_USER) impersonate_user
  @JsonKey(name: MANAGE_APPS) manage_apps
  @JsonKey(name: MANAGE_CHANNELS) manage_channels
  @JsonKey(name: MANAGE_CHECKOUTS) manage_checkouts
  @JsonKey(name: MANAGE_DISCOUNTS) manage_discounts
  @JsonKey(name: MANAGE_GIFT_CARD) manage_gift_card
  @JsonKey(name: MANAGE_MENUS) manage_menus
  @JsonKey(name: MANAGE_OBSERVABILITY) manage_observability
  @JsonKey(name: MANAGE_ORDERS) manage_orders
  @JsonKey(name: MANAGE_PAGES) manage_pages
  @JsonKey(name: MANAGE_PAGE_TYPES_AND_ATTRIBUTES) manage_page_types_and_attributes
  @JsonKey(name: MANAGE_PLUGINS) manage_plugins
  @JsonKey(name: MANAGE_PRODUCTS) manage_products
  @JsonKey(name: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES) manage_product_types_and_attributes
  @JsonKey(name: MANAGE_SETTINGS) manage_settings
  @JsonKey(name: MANAGE_SHIPPING) manage_shipping
  @JsonKey(name: MANAGE_STAFF) manage_staff
  @JsonKey(name: MANAGE_TRANSLATIONS) manage_translations
  @JsonKey(name: MANAGE_USERS) manage_users
}

/// Create new permission group. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class PermissionGroupCreate with _$PermissionGroupCreate {
  const PermissionGroupCreate._();

  /// Create new permission group. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory PermissionGroupCreate({
    required List<PermissionGroupError> errors,
    Group? group,
    required List<PermissionGroupError> permissionGroupErrors,
  }) = _PermissionGroupCreate;

  factory PermissionGroupCreate.fromJson(Map<String, Object?> json) => _PermissionGroupCreateFromJson(json);
}

@unfreezed
class PermissionGroupCreateInput with _$PermissionGroupCreateInput {
  const PermissionGroupCreateInput._();

  const factory PermissionGroupCreateInput({
    /// List of permission code names to assign to this group.
    List<PermissionEnum>? addPermissions,
    /// List of users to assign to this group.
    List<String>? addUsers,
    /// Group name.
    required String name,
  }) = _PermissionGroupCreateInput;

  factory PermissionGroupCreateInput.fromJson(Map<String, Object?> json) => _PermissionGroupCreateInputFromJson(json);
}

/// Event sent when new permission group is created.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PermissionGroupCreated with _$PermissionGroupCreated {
  const PermissionGroupCreated._();

  /// Event sent when new permission group is created.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PermissionGroupCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The permission group the event relates to.
    Group? permissionGroup,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PermissionGroupCreated;

  factory PermissionGroupCreated.fromJson(Map<String, Object?> json) => _PermissionGroupCreatedFromJson(json);
}

/// Delete permission group. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class PermissionGroupDelete with _$PermissionGroupDelete {
  const PermissionGroupDelete._();

  /// Delete permission group. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory PermissionGroupDelete({
    required List<PermissionGroupError> errors,
    Group? group,
    required List<PermissionGroupError> permissionGroupErrors,
  }) = _PermissionGroupDelete;

  factory PermissionGroupDelete.fromJson(Map<String, Object?> json) => _PermissionGroupDeleteFromJson(json);
}

/// Event sent when permission group is deleted.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PermissionGroupDeleted with _$PermissionGroupDeleted {
  const PermissionGroupDeleted._();

  /// Event sent when permission group is deleted.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PermissionGroupDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The permission group the event relates to.
    Group? permissionGroup,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PermissionGroupDeleted;

  factory PermissionGroupDeleted.fromJson(Map<String, Object?> json) => _PermissionGroupDeletedFromJson(json);
}

@freezed
class PermissionGroupError with _$PermissionGroupError {
  const PermissionGroupError._();

  const factory PermissionGroupError({
    /// The error code.
    required PermissionGroupErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of permissions which causes the error.
    List<PermissionEnum>? permissions,
    /// List of user IDs which causes the error.
    List<String>? users,
  }) = _PermissionGroupError;

  factory PermissionGroupError.fromJson(Map<String, Object?> json) => _PermissionGroupErrorFromJson(json);
}

enum PermissionGroupErrorCode{
  @JsonKey(name: ASSIGN_NON_STAFF_MEMBER) assign_non_staff_member
  @JsonKey(name: CANNOT_REMOVE_FROM_LAST_GROUP) cannot_remove_from_last_group
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: LEFT_NOT_MANAGEABLE_PERMISSION) left_not_manageable_permission
  @JsonKey(name: OUT_OF_SCOPE_PERMISSION) out_of_scope_permission
  @JsonKey(name: OUT_OF_SCOPE_USER) out_of_scope_user
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class PermissionGroupFilterInput with _$PermissionGroupFilterInput {
  const PermissionGroupFilterInput._();

  const factory PermissionGroupFilterInput({
    List<String>? ids,
    String? search,
  }) = _PermissionGroupFilterInput;

  factory PermissionGroupFilterInput.fromJson(Map<String, Object?> json) => _PermissionGroupFilterInputFromJson(json);
}

enum PermissionGroupSortField{
  /// Sort permission group accounts by name. 
@JsonKey(name: NAME) name
}

@unfreezed
class PermissionGroupSortingInput with _$PermissionGroupSortingInput {
  const PermissionGroupSortingInput._();

  const factory PermissionGroupSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort permission group by the selected field.
    required PermissionGroupSortField field,
  }) = _PermissionGroupSortingInput;

  factory PermissionGroupSortingInput.fromJson(Map<String, Object?> json) => _PermissionGroupSortingInputFromJson(json);
}

/// Update permission group. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class PermissionGroupUpdate with _$PermissionGroupUpdate {
  const PermissionGroupUpdate._();

  /// Update permission group. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory PermissionGroupUpdate({
    required List<PermissionGroupError> errors,
    Group? group,
    required List<PermissionGroupError> permissionGroupErrors,
  }) = _PermissionGroupUpdate;

  factory PermissionGroupUpdate.fromJson(Map<String, Object?> json) => _PermissionGroupUpdateFromJson(json);
}

@unfreezed
class PermissionGroupUpdateInput with _$PermissionGroupUpdateInput {
  const PermissionGroupUpdateInput._();

  const factory PermissionGroupUpdateInput({
    /// List of permission code names to assign to this group.
    List<PermissionEnum>? addPermissions,
    /// List of users to assign to this group.
    List<String>? addUsers,
    /// Group name.
    String? name,
    /// List of permission code names to unassign from this group.
    List<PermissionEnum>? removePermissions,
    /// List of users to unassign from this group.
    List<String>? removeUsers,
  }) = _PermissionGroupUpdateInput;

  factory PermissionGroupUpdateInput.fromJson(Map<String, Object?> json) => _PermissionGroupUpdateInputFromJson(json);
}

/// Event sent when permission group is updated.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class PermissionGroupUpdated with _$PermissionGroupUpdated {
  const PermissionGroupUpdated._();

  /// Event sent when permission group is updated.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory PermissionGroupUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The permission group the event relates to.
    Group? permissionGroup,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _PermissionGroupUpdated;

  factory PermissionGroupUpdated.fromJson(Map<String, Object?> json) => _PermissionGroupUpdatedFromJson(json);
}

/// Plugin. 
@freezed
class Plugin with _$Plugin {
  const Plugin._();

  /// Plugin. 
  const factory Plugin({
    /// Channel-specific plugin configuration.
    required List<PluginConfiguration> channelConfigurations,
    /// Description of the plugin.
    required String description,
    /// Global configuration of the plugin (not channel-specific).
    PluginConfiguration? globalConfiguration,
    /// Identifier of the plugin.
    required String id,
    /// Name of the plugin.
    required String name,
  }) = _Plugin;

  factory Plugin.fromJson(Map<String, Object?> json) => _PluginFromJson(json);
}

/// Stores information about a configuration of plugin. 
@freezed
class PluginConfiguration with _$PluginConfiguration {
  const PluginConfiguration._();

  /// Stores information about a configuration of plugin. 
  const factory PluginConfiguration({
    /// Determines if plugin is active or not.
    required bool active,
    /// The channel to which the plugin configuration is assigned to.
    Channel? channel,
    /// Configuration of the plugin.
    List<ConfigurationItem>? configuration,
  }) = _PluginConfiguration;

  factory PluginConfiguration.fromJson(Map<String, Object?> json) => _PluginConfigurationFromJson(json);
}

enum PluginConfigurationType{
  @JsonKey(name: GLOBAL) global
  @JsonKey(name: PER_CHANNEL) per_channel
}

@freezed
class PluginCountableConnection with _$PluginCountableConnection {
  const PluginCountableConnection._();

  const factory PluginCountableConnection({
    required List<PluginCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _PluginCountableConnection;

  factory PluginCountableConnection.fromJson(Map<String, Object?> json) => _PluginCountableConnectionFromJson(json);
}

@freezed
class PluginCountableEdge with _$PluginCountableEdge {
  const PluginCountableEdge._();

  const factory PluginCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Plugin node,
  }) = _PluginCountableEdge;

  factory PluginCountableEdge.fromJson(Map<String, Object?> json) => _PluginCountableEdgeFromJson(json);
}

@freezed
class PluginError with _$PluginError {
  const PluginError._();

  const factory PluginError({
    /// The error code.
    required PluginErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _PluginError;

  factory PluginError.fromJson(Map<String, Object?> json) => _PluginErrorFromJson(json);
}

enum PluginErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: PLUGIN_MISCONFIGURED) plugin_misconfigured
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class PluginFilterInput with _$PluginFilterInput {
  const PluginFilterInput._();

  const factory PluginFilterInput({
    String? search,
    PluginStatusInChannelsInput? statusInChannels,
    PluginConfigurationType? type,
  }) = _PluginFilterInput;

  factory PluginFilterInput.fromJson(Map<String, Object?> json) => _PluginFilterInputFromJson(json);
}

enum PluginSortField{
  @JsonKey(name: IS_ACTIVE) is_active
  @JsonKey(name: NAME) name
}

@unfreezed
class PluginSortingInput with _$PluginSortingInput {
  const PluginSortingInput._();

  const factory PluginSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort plugins by the selected field.
    required PluginSortField field,
  }) = _PluginSortingInput;

  factory PluginSortingInput.fromJson(Map<String, Object?> json) => _PluginSortingInputFromJson(json);
}

@unfreezed
class PluginStatusInChannelsInput with _$PluginStatusInChannelsInput {
  const PluginStatusInChannelsInput._();

  const factory PluginStatusInChannelsInput({
    required bool active,
    required List<String> channels,
  }) = _PluginStatusInChannelsInput;

  factory PluginStatusInChannelsInput.fromJson(Map<String, Object?> json) => _PluginStatusInChannelsInputFromJson(json);
}

/// Update plugin configuration. 

Requires one of the following permissions: MANAGE_PLUGINS. 
@freezed
class PluginUpdate with _$PluginUpdate {
  const PluginUpdate._();

  /// Update plugin configuration. 

Requires one of the following permissions: MANAGE_PLUGINS. 
  const factory PluginUpdate({
    required List<PluginError> errors,
    Plugin? plugin,
    required List<PluginError> pluginsErrors,
  }) = _PluginUpdate;

  factory PluginUpdate.fromJson(Map<String, Object?> json) => _PluginUpdateFromJson(json);
}

@unfreezed
class PluginUpdateInput with _$PluginUpdateInput {
  const PluginUpdateInput._();

  const factory PluginUpdateInput({
    /// Indicates whether the plugin should be enabled.
    bool? active,
    /// Configuration of the plugin.
    List<ConfigurationItemInput>? configuration,
  }) = _PluginUpdateInput;

  factory PluginUpdateInput.fromJson(Map<String, Object?> json) => _PluginUpdateInputFromJson(json);
}

enum PostalCodeRuleInclusionTypeEnum{
  @JsonKey(name: EXCLUDE) exclude
  @JsonKey(name: INCLUDE) include
}

/// Represents preorder settings for product variant. 
@freezed
class PreorderData with _$PreorderData {
  const PreorderData._();

  /// Represents preorder settings for product variant. 
  const factory PreorderData({
    /// Preorder end date.
    DateTime? endDate,
    /// Total number of sold product variant during preorder.

Requires one of the following permissions: MANAGE_PRODUCTS.
    required int globalSoldUnits,
    /// The global preorder threshold for product variant.

Requires one of the following permissions: MANAGE_PRODUCTS.
    int? globalThreshold,
  }) = _PreorderData;

  factory PreorderData.fromJson(Map<String, Object?> json) => _PreorderDataFromJson(json);
}

@unfreezed
class PreorderSettingsInput with _$PreorderSettingsInput {
  const PreorderSettingsInput._();

  const factory PreorderSettingsInput({
    /// The end date for preorder.
    DateTime? endDate,
    /// The global threshold for preorder variant.
    int? globalThreshold,
  }) = _PreorderSettingsInput;

  factory PreorderSettingsInput.fromJson(Map<String, Object?> json) => _PreorderSettingsInputFromJson(json);
}

/// Represents preorder variant data for channel. 
@freezed
class PreorderThreshold with _$PreorderThreshold {
  const PreorderThreshold._();

  /// Represents preorder variant data for channel. 
  const factory PreorderThreshold({
    /// Preorder threshold for product variant in this channel.
    int? quantity,
    /// Number of sold product variant in this channel.
    required int soldUnits,
  }) = _PreorderThreshold;

  factory PreorderThreshold.fromJson(Map<String, Object?> json) => _PreorderThresholdFromJson(json);
}

@unfreezed
class PriceInput with _$PriceInput {
  const PriceInput._();

  const factory PriceInput({
    /// Amount of money.
    required PositiveDecimal amount,
    /// Currency code.
    required String currency,
  }) = _PriceInput;

  factory PriceInput.fromJson(Map<String, Object?> json) => _PriceInputFromJson(json);
}

@unfreezed
class PriceRangeInput with _$PriceRangeInput {
  const PriceRangeInput._();

  const factory PriceRangeInput({
    /// Price greater than or equal to.
    double? gte,
    /// Price less than or equal to.
    double? lte,
  }) = _PriceRangeInput;

  factory PriceRangeInput.fromJson(Map<String, Object?> json) => _PriceRangeInputFromJson(json);
}

/// Represents an individual item for sale in the storefront. 
@freezed
class Product with _$Product {
  const Product._();

  /// Represents an individual item for sale in the storefront. 
  const factory Product({
    /// List of attributes assigned to this product.
    required List<SelectedAttribute> attributes,
    /// Date when product is available for purchase.
    Date? availableForPurchase,
    /// Date when product is available for purchase.
    DateTime? availableForPurchaseAt,
    Category? category,
    /// Channel given to retrieve this product. Also used by federation gateway to resolve this object in a federated query.
    String? channel,
    /// List of availability in channels for the product.

Requires one of the following permissions: MANAGE_PRODUCTS.
    List<ProductChannelListing>? channelListings,
    required bool chargeTaxes,
    /// List of collections for the product. Requires the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    List<Collection>? collections,
    required DateTime created,
    ProductVariant? defaultVariant,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Get a single product image by ID.
    ProductImage? imageById,
    /// List of images for the product.
    List<ProductImage>? images,
    /// Whether the product is in stock and visible or not.
    bool? isAvailable,
    /// Whether the product is available for purchase.
    bool? isAvailableForPurchase,
    /// List of media for the product.
    List<ProductMedia>? media,
    /// Get a single product media by ID.
    ProductMedia? mediaById,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// Lists the storefront product's pricing, the current price and discounts, only meant for displaying.
    ProductPricingInfo? pricing,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required ProductType productType,
    double? rating,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    /// A type of tax. Assigned by enabled tax gateway
    TaxType? taxType,
    Image? thumbnail,
    /// Returns translated product fields for the given language code.
    ProductTranslation? translation,
    required DateTime updatedAt,
    /// List of variants for the product. Requires the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    List<ProductVariant>? variants,
    Weight? weight,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _ProductFromJson(json);
}

/// Assign attributes to a given product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductAttributeAssign with _$ProductAttributeAssign {
  const ProductAttributeAssign._();

  /// Assign attributes to a given product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductAttributeAssign({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    /// The updated product type.
    ProductType? productType,
  }) = _ProductAttributeAssign;

  factory ProductAttributeAssign.fromJson(Map<String, Object?> json) => _ProductAttributeAssignFromJson(json);
}

@unfreezed
class ProductAttributeAssignInput with _$ProductAttributeAssignInput {
  const ProductAttributeAssignInput._();

  const factory ProductAttributeAssignInput({
    /// The ID of the attribute to assign.
    required String id,
    /// The attribute type to be assigned as.
    required ProductAttributeType type,
    /// Whether attribute is allowed in variant selection. Allowed types are: ['dropdown', 'boolean', 'swatch', 'numeric'].

Added in Saleor 3.1.
    bool? variantSelection,
  }) = _ProductAttributeAssignInput;

  factory ProductAttributeAssignInput.fromJson(Map<String, Object?> json) => _ProductAttributeAssignInputFromJson(json);
}

/// Update attributes assigned to product variant for given product type.

Added in Saleor 3.1. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductAttributeAssignmentUpdate with _$ProductAttributeAssignmentUpdate {
  const ProductAttributeAssignmentUpdate._();

  /// Update attributes assigned to product variant for given product type.

Added in Saleor 3.1. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductAttributeAssignmentUpdate({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    /// The updated product type.
    ProductType? productType,
  }) = _ProductAttributeAssignmentUpdate;

  factory ProductAttributeAssignmentUpdate.fromJson(Map<String, Object?> json) => _ProductAttributeAssignmentUpdateFromJson(json);
}

@unfreezed
class ProductAttributeAssignmentUpdateInput with _$ProductAttributeAssignmentUpdateInput {
  const ProductAttributeAssignmentUpdateInput._();

  const factory ProductAttributeAssignmentUpdateInput({
    /// The ID of the attribute to assign.
    required String id,
    /// Whether attribute is allowed in variant selection. Allowed types are: ['dropdown', 'boolean', 'swatch', 'numeric'].

Added in Saleor 3.1.
    required bool variantSelection,
  }) = _ProductAttributeAssignmentUpdateInput;

  factory ProductAttributeAssignmentUpdateInput.fromJson(Map<String, Object?> json) => _ProductAttributeAssignmentUpdateInputFromJson(json);
}

enum ProductAttributeType{
  @JsonKey(name: PRODUCT) product
  @JsonKey(name: VARIANT) variant
}

/// Un-assign attributes from a given product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductAttributeUnassign with _$ProductAttributeUnassign {
  const ProductAttributeUnassign._();

  /// Un-assign attributes from a given product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductAttributeUnassign({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    /// The updated product type.
    ProductType? productType,
  }) = _ProductAttributeUnassign;

  factory ProductAttributeUnassign.fromJson(Map<String, Object?> json) => _ProductAttributeUnassignFromJson(json);
}

/// Deletes products. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductBulkDelete with _$ProductBulkDelete {
  const ProductBulkDelete._();

  /// Deletes products. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _ProductBulkDelete;

  factory ProductBulkDelete.fromJson(Map<String, Object?> json) => _ProductBulkDeleteFromJson(json);
}

/// Represents product channel listing. 
@freezed
class ProductChannelListing with _$ProductChannelListing {
  const ProductChannelListing._();

  /// Represents product channel listing. 
  const factory ProductChannelListing({
    Date? availableForPurchase,
    /// The product available for purchase date time.

Added in Saleor 3.3.
    DateTime? availableForPurchaseAt,
    required Channel channel,
    /// The price of the cheapest variant (including discounts).
    Money? discountedPrice,
    required String id,
    /// Whether the product is available for purchase.
    bool? isAvailableForPurchase,
    required bool isPublished,
    /// Range of margin percentage value.

Requires one of the following permissions: MANAGE_PRODUCTS.
    Margin? margin,
    /// Lists the storefront product's pricing, the current price and discounts, only meant for displaying.
    ProductPricingInfo? pricing,
    Date? publicationDate,
    /// The product publication date time.

Added in Saleor 3.3.
    DateTime? publishedAt,
    /// Purchase cost of product.

Requires one of the following permissions: MANAGE_PRODUCTS.
    MoneyRange? purchaseCost,
    required bool visibleInListings,
  }) = _ProductChannelListing;

  factory ProductChannelListing.fromJson(Map<String, Object?> json) => _ProductChannelListingFromJson(json);
}

@unfreezed
class ProductChannelListingAddInput with _$ProductChannelListingAddInput {
  const ProductChannelListingAddInput._();

  const factory ProductChannelListingAddInput({
    /// List of variants to which the channel should be assigned.
    List<String>? addVariants,
    /// A start date time from which a product will be available for purchase. When not set and `isAvailable` is set to True, the current day is assumed.

Added in Saleor 3.3.
    DateTime? availableForPurchaseAt,
    /// A start date from which a product will be available for purchase. When not set and isAvailable is set to True, the current day is assumed. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `availableForPurchaseAt` field instead.
    Date? availableForPurchaseDate,
    /// ID of a channel.
    required String channelId,
    /// Determine if product should be available for purchase.
    bool? isAvailableForPurchase,
    /// Determines if object is visible to customers.
    bool? isPublished,
    /// Publication date. ISO 8601 standard. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `publishedAt` field instead.
    Date? publicationDate,
    /// Publication date time. ISO 8601 standard.

Added in Saleor 3.3.
    DateTime? publishedAt,
    /// List of variants from which the channel should be unassigned.
    List<String>? removeVariants,
    /// Determines if product is visible in product listings (doesn't apply to product collections).
    bool? visibleInListings,
  }) = _ProductChannelListingAddInput;

  factory ProductChannelListingAddInput.fromJson(Map<String, Object?> json) => _ProductChannelListingAddInputFromJson(json);
}

@freezed
class ProductChannelListingError with _$ProductChannelListingError {
  const ProductChannelListingError._();

  const factory ProductChannelListingError({
    /// List of attributes IDs which causes the error.
    List<String>? attributes,
    /// List of channels IDs which causes the error.
    List<String>? channels,
    /// The error code.
    required ProductErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of attribute values IDs which causes the error.
    List<String>? values,
    /// List of variants IDs which causes the error.
    List<String>? variants,
  }) = _ProductChannelListingError;

  factory ProductChannelListingError.fromJson(Map<String, Object?> json) => _ProductChannelListingErrorFromJson(json);
}

/// Manage product's availability in channels. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductChannelListingUpdate with _$ProductChannelListingUpdate {
  const ProductChannelListingUpdate._();

  /// Manage product's availability in channels. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductChannelListingUpdate({
    required List<ProductChannelListingError> errors,
    /// An updated product instance.
    Product? product,
    required List<ProductChannelListingError> productChannelListingErrors,
  }) = _ProductChannelListingUpdate;

  factory ProductChannelListingUpdate.fromJson(Map<String, Object?> json) => _ProductChannelListingUpdateFromJson(json);
}

@unfreezed
class ProductChannelListingUpdateInput with _$ProductChannelListingUpdateInput {
  const ProductChannelListingUpdateInput._();

  const factory ProductChannelListingUpdateInput({
    /// List of channels from which the product should be unassigned.
    List<String>? removeChannels,
    /// List of channels to which the product should be assigned or updated.
    List<ProductChannelListingAddInput>? updateChannels,
  }) = _ProductChannelListingUpdateInput;

  factory ProductChannelListingUpdateInput.fromJson(Map<String, Object?> json) => _ProductChannelListingUpdateInputFromJson(json);
}

@freezed
class ProductCountableConnection with _$ProductCountableConnection {
  const ProductCountableConnection._();

  const factory ProductCountableConnection({
    required List<ProductCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _ProductCountableConnection;

  factory ProductCountableConnection.fromJson(Map<String, Object?> json) => _ProductCountableConnectionFromJson(json);
}

@freezed
class ProductCountableEdge with _$ProductCountableEdge {
  const ProductCountableEdge._();

  const factory ProductCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Product node,
  }) = _ProductCountableEdge;

  factory ProductCountableEdge.fromJson(Map<String, Object?> json) => _ProductCountableEdgeFromJson(json);
}

/// Creates a new product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductCreate with _$ProductCreate {
  const ProductCreate._();

  /// Creates a new product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductCreate({
    required List<ProductError> errors,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductCreate;

  factory ProductCreate.fromJson(Map<String, Object?> json) => _ProductCreateFromJson(json);
}

@unfreezed
class ProductCreateInput with _$ProductCreateInput {
  const ProductCreateInput._();

  const factory ProductCreateInput({
    /// List of attributes.
    List<AttributeValueInput>? attributes,
    /// ID of the product's category.
    String? category,
    /// Determine if taxes are being charged for the product.
    bool? chargeTaxes,
    /// List of IDs of collections that the product belongs to.
    List<String>? collections,
    /// Product description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Product name.
    String? name,
    /// ID of the type that product belongs to.
    required String productType,
    /// Defines the product rating value.
    double? rating,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Product slug.
    String? slug,
    /// Tax rate for enabled tax gateway.
    String? taxCode,
    /// Weight of the Product.
    WeightScalar? weight,
  }) = _ProductCreateInput;

  factory ProductCreateInput.fromJson(Map<String, Object?> json) => _ProductCreateInputFromJson(json);
}

/// Event sent when new product is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductCreated with _$ProductCreated {
  const ProductCreated._();

  /// Event sent when new product is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductCreated({
    /// The category of the product.
    Category? category,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product the event relates to.
    Product? product,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ProductCreated;

  factory ProductCreated.fromJson(Map<String, Object?> json) => _ProductCreatedFromJson(json);
}

/// Deletes a product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductDelete with _$ProductDelete {
  const ProductDelete._();

  /// Deletes a product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductDelete({
    required List<ProductError> errors,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductDelete;

  factory ProductDelete.fromJson(Map<String, Object?> json) => _ProductDeleteFromJson(json);
}

/// Event sent when product is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductDeleted with _$ProductDeleted {
  const ProductDeleted._();

  /// Event sent when product is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductDeleted({
    /// The category of the product.
    Category? category,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product the event relates to.
    Product? product,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ProductDeleted;

  factory ProductDeleted.fromJson(Map<String, Object?> json) => _ProductDeletedFromJson(json);
}

@freezed
class ProductError with _$ProductError {
  const ProductError._();

  const factory ProductError({
    /// List of attributes IDs which causes the error.
    List<String>? attributes,
    /// The error code.
    required ProductErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of attribute values IDs which causes the error.
    List<String>? values,
  }) = _ProductError;

  factory ProductError.fromJson(Map<String, Object?> json) => _ProductErrorFromJson(json);
}

enum ProductErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: ATTRIBUTE_ALREADY_ASSIGNED) attribute_already_assigned
  @JsonKey(name: ATTRIBUTE_CANNOT_BE_ASSIGNED) attribute_cannot_be_assigned
  @JsonKey(name: ATTRIBUTE_VARIANTS_DISABLED) attribute_variants_disabled
  @JsonKey(name: CANNOT_MANAGE_PRODUCT_WITHOUT_VARIANT) cannot_manage_product_without_variant
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: MEDIA_ALREADY_ASSIGNED) media_already_assigned
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: NOT_PRODUCTS_IMAGE) not_products_image
  @JsonKey(name: NOT_PRODUCTS_VARIANT) not_products_variant
  @JsonKey(name: PREORDER_VARIANT_CANNOT_BE_DEACTIVATED) preorder_variant_cannot_be_deactivated
  @JsonKey(name: PRODUCT_NOT_ASSIGNED_TO_CHANNEL) product_not_assigned_to_channel
  @JsonKey(name: PRODUCT_WITHOUT_CATEGORY) product_without_category
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
  @JsonKey(name: UNSUPPORTED_MEDIA_PROVIDER) unsupported_media_provider
  @JsonKey(name: VARIANT_NO_DIGITAL_CONTENT) variant_no_digital_content
}

enum ProductFieldEnum{
  @JsonKey(name: CATEGORY) category
  @JsonKey(name: CHARGE_TAXES) charge_taxes
  @JsonKey(name: COLLECTIONS) collections
  @JsonKey(name: DESCRIPTION) description
  @JsonKey(name: NAME) name
  @JsonKey(name: PRODUCT_MEDIA) product_media
  @JsonKey(name: PRODUCT_TYPE) product_type
  @JsonKey(name: PRODUCT_WEIGHT) product_weight
  @JsonKey(name: VARIANT_ID) variant_id
  @JsonKey(name: VARIANT_MEDIA) variant_media
  @JsonKey(name: VARIANT_SKU) variant_sku
  @JsonKey(name: VARIANT_WEIGHT) variant_weight
}

@unfreezed
class ProductFilterInput with _$ProductFilterInput {
  const ProductFilterInput._();

  const factory ProductFilterInput({
    List<AttributeInput>? attributes,
    List<String>? categories,
    /// Specifies the channel by which the data should be filtered. 

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    List<String>? collections,
    /// Filter on whether product is a gift card or not.
    bool? giftCard,
    bool? hasCategory,
    bool? hasPreorderedVariants,
    List<String>? ids,
    bool? isPublished,
    List<MetadataFilter>? metadata,
    /// Filter by the lowest variant price after discounts.
    PriceRangeInput? minimalPrice,
    PriceRangeInput? price,
    List<String>? productTypes,
    String? search,
    /// Filter by variants having specific stock status.
    StockAvailability? stockAvailability,
    ProductStockFilterInput? stocks,
    /// Filter by when was the most recent update.
    DateTimeRangeInput? updatedAt,
  }) = _ProductFilterInput;

  factory ProductFilterInput.fromJson(Map<String, Object?> json) => _ProductFilterInputFromJson(json);
}

/// Represents a product image. 
@freezed
class ProductImage with _$ProductImage {
  const ProductImage._();

  /// Represents a product image. 
  const factory ProductImage({
    /// The alt text of the image.
    String? alt,
    /// The ID of the image.
    required String id,
    /// The new relative sorting position of the item (from -inf to +inf). 1 moves the item one position forward, -1 moves the item one position backward, 0 leaves the item unchanged.
    int? sortOrder,
    required String url,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, Object?> json) => _ProductImageFromJson(json);
}

@unfreezed
class ProductInput with _$ProductInput {
  const ProductInput._();

  const factory ProductInput({
    /// List of attributes.
    List<AttributeValueInput>? attributes,
    /// ID of the product's category.
    String? category,
    /// Determine if taxes are being charged for the product.
    bool? chargeTaxes,
    /// List of IDs of collections that the product belongs to.
    List<String>? collections,
    /// Product description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Product name.
    String? name,
    /// Defines the product rating value.
    double? rating,
    /// Search engine optimization fields.
    SeoInput? seo,
    /// Product slug.
    String? slug,
    /// Tax rate for enabled tax gateway.
    String? taxCode,
    /// Weight of the Product.
    WeightScalar? weight,
  }) = _ProductInput;

  factory ProductInput.fromJson(Map<String, Object?> json) => _ProductInputFromJson(json);
}

/// Represents a product media. 
@freezed
class ProductMedia with _$ProductMedia {
  const ProductMedia._();

  /// Represents a product media. 
  const factory ProductMedia({
    required String alt,
    required String id,
    required JSONString oembedData,
    int? sortOrder,
    required ProductMediaType type,
    required String url,
  }) = _ProductMedia;

  factory ProductMedia.fromJson(Map<String, Object?> json) => _ProductMediaFromJson(json);
}

/// Deletes product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductMediaBulkDelete with _$ProductMediaBulkDelete {
  const ProductMediaBulkDelete._();

  /// Deletes product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductMediaBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _ProductMediaBulkDelete;

  factory ProductMediaBulkDelete.fromJson(Map<String, Object?> json) => _ProductMediaBulkDeleteFromJson(json);
}

/// Create a media object (image or video URL) associated with product. For image, this mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductMediaCreate with _$ProductMediaCreate {
  const ProductMediaCreate._();

  /// Create a media object (image or video URL) associated with product. For image, this mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductMediaCreate({
    required List<ProductError> errors,
    ProductMedia? media,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductMediaCreate;

  factory ProductMediaCreate.fromJson(Map<String, Object?> json) => _ProductMediaCreateFromJson(json);
}

@unfreezed
class ProductMediaCreateInput with _$ProductMediaCreateInput {
  const ProductMediaCreateInput._();

  const factory ProductMediaCreateInput({
    /// Alt text for a product media.
    String? alt,
    /// Represents an image file in a multipart request.
    Upload? image,
    /// Represents an URL to an external media.
    String? mediaUrl,
    /// ID of an product.
    required String product,
  }) = _ProductMediaCreateInput;

  factory ProductMediaCreateInput.fromJson(Map<String, Object?> json) => _ProductMediaCreateInputFromJson(json);
}

/// Deletes a product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductMediaDelete with _$ProductMediaDelete {
  const ProductMediaDelete._();

  /// Deletes a product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductMediaDelete({
    required List<ProductError> errors,
    ProductMedia? media,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductMediaDelete;

  factory ProductMediaDelete.fromJson(Map<String, Object?> json) => _ProductMediaDeleteFromJson(json);
}

/// Changes ordering of the product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductMediaReorder with _$ProductMediaReorder {
  const ProductMediaReorder._();

  /// Changes ordering of the product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductMediaReorder({
    required List<ProductError> errors,
    List<ProductMedia>? media,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductMediaReorder;

  factory ProductMediaReorder.fromJson(Map<String, Object?> json) => _ProductMediaReorderFromJson(json);
}

enum ProductMediaType{
  @JsonKey(name: IMAGE) image
  @JsonKey(name: VIDEO) video
}

/// Updates a product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductMediaUpdate with _$ProductMediaUpdate {
  const ProductMediaUpdate._();

  /// Updates a product media. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductMediaUpdate({
    required List<ProductError> errors,
    ProductMedia? media,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductMediaUpdate;

  factory ProductMediaUpdate.fromJson(Map<String, Object?> json) => _ProductMediaUpdateFromJson(json);
}

@unfreezed
class ProductMediaUpdateInput with _$ProductMediaUpdateInput {
  const ProductMediaUpdateInput._();

  const factory ProductMediaUpdateInput({
    /// Alt text for a product media.
    String? alt,
  }) = _ProductMediaUpdateInput;

  factory ProductMediaUpdateInput.fromJson(Map<String, Object?> json) => _ProductMediaUpdateInputFromJson(json);
}

@unfreezed
class ProductOrder with _$ProductOrder {
  const ProductOrder._();

  const factory ProductOrder({
    /// Sort product by the selected attribute's values.
Note: this doesn't take translations into account yet.
    String? attributeId,
    /// Specifies the channel in which to sort the data.

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort products by the selected field.
    ProductOrderField? field,
  }) = _ProductOrder;

  factory ProductOrder.fromJson(Map<String, Object?> json) => _ProductOrderFromJson(json);
}

enum ProductOrderField{
  /// Sort products by collection. Note: This option is available only for the `Collection.products` query.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: COLLECTION) collection
  /// Sort products by update date. 
@JsonKey(name: DATE) date
  /// Sort products by update date. 
@JsonKey(name: LAST_MODIFIED) last_modified
  /// Sort products by update date. 
@JsonKey(name: LAST_MODIFIED_AT) last_modified_at
  /// Sort products by a minimal price of a product's variant.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: MINIMAL_PRICE) minimal_price
  /// Sort products by name. 
@JsonKey(name: NAME) name
  /// Sort products by price.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: PRICE) price
  /// Sort products by publication date.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: PUBLICATION_DATE) publication_date
  /// Sort products by publication status.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: PUBLISHED) published
  /// Sort products by publication date.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: PUBLISHED_AT) published_at
  /// Sort products by rank. Note: This option is available only with the `search` filter. 
@JsonKey(name: RANK) rank
  /// Sort products by rating. 
@JsonKey(name: RATING) rating
  /// Sort products by type. 
@JsonKey(name: TYPE) type
}

/// Represents availability of a product in the storefront. 
@freezed
class ProductPricingInfo with _$ProductPricingInfo {
  const ProductPricingInfo._();

  /// Represents availability of a product in the storefront. 
  const factory ProductPricingInfo({
    /// The discount amount if in sale (null otherwise).
    TaxedMoney? discount,
    /// The discount amount in the local currency.
    TaxedMoney? discountLocalCurrency,
    /// Whether it is in sale or not.
    bool? onSale,
    /// The discounted price range of the product variants.
    TaxedMoneyRange? priceRange,
    /// The discounted price range of the product variants in the local currency.
    TaxedMoneyRange? priceRangeLocalCurrency,
    /// The undiscounted price range of the product variants.
    TaxedMoneyRange? priceRangeUndiscounted,
  }) = _ProductPricingInfo;

  factory ProductPricingInfo.fromJson(Map<String, Object?> json) => _ProductPricingInfoFromJson(json);
}

/// Reorder product attribute values. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductReorderAttributeValues with _$ProductReorderAttributeValues {
  const ProductReorderAttributeValues._();

  /// Reorder product attribute values. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductReorderAttributeValues({
    required List<ProductError> errors,
    /// Product from which attribute values are reordered.
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductReorderAttributeValues;

  factory ProductReorderAttributeValues.fromJson(Map<String, Object?> json) => _ProductReorderAttributeValuesFromJson(json);
}

@unfreezed
class ProductStockFilterInput with _$ProductStockFilterInput {
  const ProductStockFilterInput._();

  const factory ProductStockFilterInput({
    IntRangeInput? quantity,
    List<String>? warehouseIds,
  }) = _ProductStockFilterInput;

  factory ProductStockFilterInput.fromJson(Map<String, Object?> json) => _ProductStockFilterInputFromJson(json);
}

@freezed
class ProductTranslatableContent with _$ProductTranslatableContent {
  const ProductTranslatableContent._();

  const factory ProductTranslatableContent({
    /// List of product attribute values that can be translated.
    required List<AttributeValueTranslatableContent> attributeValues,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required String name,
    /// Represents an individual item for sale in the storefront.
    Product? product,
    String? seoDescription,
    String? seoTitle,
    /// Returns translated product fields for the given language code.
    ProductTranslation? translation,
  }) = _ProductTranslatableContent;

  factory ProductTranslatableContent.fromJson(Map<String, Object?> json) => _ProductTranslatableContentFromJson(json);
}

/// Creates/updates translations for a product. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class ProductTranslate with _$ProductTranslate {
  const ProductTranslate._();

  /// Creates/updates translations for a product. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory ProductTranslate({
    required List<TranslationError> errors,
    Product? product,
    required List<TranslationError> translationErrors,
  }) = _ProductTranslate;

  factory ProductTranslate.fromJson(Map<String, Object?> json) => _ProductTranslateFromJson(json);
}

@freezed
class ProductTranslation with _$ProductTranslation {
  const ProductTranslation._();

  const factory ProductTranslation({
    /// Translated description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Translated description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = _ProductTranslation;

  factory ProductTranslation.fromJson(Map<String, Object?> json) => _ProductTranslationFromJson(json);
}

/// Represents a type of product. It defines what attributes are available to products of this type. 
@freezed
class ProductType with _$ProductType {
  const ProductType._();

  /// Represents a type of product. It defines what attributes are available to products of this type. 
  const factory ProductType({
    /// Variant attributes of that product type with attached variant selection.

Added in Saleor 3.1.
    List<AssignedVariantAttribute>? assignedVariantAttributes,
    /// List of attributes which can be assigned to this product type.

Requires one of the following permissions: MANAGE_PRODUCTS.
    AttributeCountableConnection? availableAttributes,
    required bool hasVariants,
    required String id,
    required bool isDigital,
    required bool isShippingRequired,
    /// The product type kind.
    required ProductTypeKindEnum kind,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Product attributes of that product type.
    List<Attribute>? productAttributes,
    /// List of products of this type.
    ProductCountableConnection? products,
    required String slug,
    /// A type of tax. Assigned by enabled tax gateway
    TaxType? taxType,
    /// Variant attributes of that product type.
    List<Attribute>? variantAttributes,
    Weight? weight,
  }) = _ProductType;

  factory ProductType.fromJson(Map<String, Object?> json) => _ProductTypeFromJson(json);
}

/// Deletes product types. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductTypeBulkDelete with _$ProductTypeBulkDelete {
  const ProductTypeBulkDelete._();

  /// Deletes product types. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductTypeBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _ProductTypeBulkDelete;

  factory ProductTypeBulkDelete.fromJson(Map<String, Object?> json) => _ProductTypeBulkDeleteFromJson(json);
}

enum ProductTypeConfigurable{
  @JsonKey(name: CONFIGURABLE) configurable
  @JsonKey(name: SIMPLE) simple
}

@freezed
class ProductTypeCountableConnection with _$ProductTypeCountableConnection {
  const ProductTypeCountableConnection._();

  const factory ProductTypeCountableConnection({
    required List<ProductTypeCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _ProductTypeCountableConnection;

  factory ProductTypeCountableConnection.fromJson(Map<String, Object?> json) => _ProductTypeCountableConnectionFromJson(json);
}

@freezed
class ProductTypeCountableEdge with _$ProductTypeCountableEdge {
  const ProductTypeCountableEdge._();

  const factory ProductTypeCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required ProductType node,
  }) = _ProductTypeCountableEdge;

  factory ProductTypeCountableEdge.fromJson(Map<String, Object?> json) => _ProductTypeCountableEdgeFromJson(json);
}

/// Creates a new product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductTypeCreate with _$ProductTypeCreate {
  const ProductTypeCreate._();

  /// Creates a new product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductTypeCreate({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductType? productType,
  }) = _ProductTypeCreate;

  factory ProductTypeCreate.fromJson(Map<String, Object?> json) => _ProductTypeCreateFromJson(json);
}

/// Deletes a product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductTypeDelete with _$ProductTypeDelete {
  const ProductTypeDelete._();

  /// Deletes a product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductTypeDelete({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductType? productType,
  }) = _ProductTypeDelete;

  factory ProductTypeDelete.fromJson(Map<String, Object?> json) => _ProductTypeDeleteFromJson(json);
}

enum ProductTypeEnum{
  @JsonKey(name: DIGITAL) digital
  @JsonKey(name: SHIPPABLE) shippable
}

@unfreezed
class ProductTypeFilterInput with _$ProductTypeFilterInput {
  const ProductTypeFilterInput._();

  const factory ProductTypeFilterInput({
    ProductTypeConfigurable? configurable,
    List<String>? ids,
    ProductTypeKindEnum? kind,
    List<MetadataFilter>? metadata,
    ProductTypeEnum? productType,
    String? search,
  }) = _ProductTypeFilterInput;

  factory ProductTypeFilterInput.fromJson(Map<String, Object?> json) => _ProductTypeFilterInputFromJson(json);
}

@unfreezed
class ProductTypeInput with _$ProductTypeInput {
  const ProductTypeInput._();

  const factory ProductTypeInput({
    /// Determines if product of this type has multiple variants. This option mainly simplifies product management in the dashboard. There is always at least one variant created under the hood.
    bool? hasVariants,
    /// Determines if products are digital.
    bool? isDigital,
    /// Determines if shipping is required for products of this variant.
    bool? isShippingRequired,
    /// The product type kind.
    ProductTypeKindEnum? kind,
    /// Name of the product type.
    String? name,
    /// List of attributes shared among all product variants.
    List<String>? productAttributes,
    /// Product type slug.
    String? slug,
    /// Tax rate for enabled tax gateway.
    String? taxCode,
    /// List of attributes used to distinguish between different variants of a product.
    List<String>? variantAttributes,
    /// Weight of the ProductType items.
    WeightScalar? weight,
  }) = _ProductTypeInput;

  factory ProductTypeInput.fromJson(Map<String, Object?> json) => _ProductTypeInputFromJson(json);
}

enum ProductTypeKindEnum{
  @JsonKey(name: GIFT_CARD) gift_card
  @JsonKey(name: NORMAL) normal
}

/// Reorder the attributes of a product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductTypeReorderAttributes with _$ProductTypeReorderAttributes {
  const ProductTypeReorderAttributes._();

  /// Reorder the attributes of a product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductTypeReorderAttributes({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    /// Product type from which attributes are reordered.
    ProductType? productType,
  }) = _ProductTypeReorderAttributes;

  factory ProductTypeReorderAttributes.fromJson(Map<String, Object?> json) => _ProductTypeReorderAttributesFromJson(json);
}

enum ProductTypeSortField{
  /// Sort products by type. 
@JsonKey(name: DIGITAL) digital
  /// Sort products by name. 
@JsonKey(name: NAME) name
  /// Sort products by shipping. 
@JsonKey(name: SHIPPING_REQUIRED) shipping_required
}

@unfreezed
class ProductTypeSortingInput with _$ProductTypeSortingInput {
  const ProductTypeSortingInput._();

  const factory ProductTypeSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort product types by the selected field.
    required ProductTypeSortField field,
  }) = _ProductTypeSortingInput;

  factory ProductTypeSortingInput.fromJson(Map<String, Object?> json) => _ProductTypeSortingInputFromJson(json);
}

/// Updates an existing product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
@freezed
class ProductTypeUpdate with _$ProductTypeUpdate {
  const ProductTypeUpdate._();

  /// Updates an existing product type. 

Requires one of the following permissions: MANAGE_PRODUCT_TYPES_AND_ATTRIBUTES. 
  const factory ProductTypeUpdate({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductType? productType,
  }) = _ProductTypeUpdate;

  factory ProductTypeUpdate.fromJson(Map<String, Object?> json) => _ProductTypeUpdateFromJson(json);
}

/// Updates an existing product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductUpdate with _$ProductUpdate {
  const ProductUpdate._();

  /// Updates an existing product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductUpdate({
    required List<ProductError> errors,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductUpdate;

  factory ProductUpdate.fromJson(Map<String, Object?> json) => _ProductUpdateFromJson(json);
}

/// Event sent when product is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductUpdated with _$ProductUpdated {
  const ProductUpdated._();

  /// Event sent when product is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductUpdated({
    /// The category of the product.
    Category? category,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product the event relates to.
    Product? product,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ProductUpdated;

  factory ProductUpdated.fromJson(Map<String, Object?> json) => _ProductUpdatedFromJson(json);
}

/// Represents a version of a product such as different size or color. 
@freezed
class ProductVariant with _$ProductVariant {
  const ProductVariant._();

  /// Represents a version of a product such as different size or color. 
  const factory ProductVariant({
    /// List of attributes assigned to this variant.
    required List<SelectedAttribute> attributes,
    /// Channel given to retrieve this product variant. Also used by federation gateway to resolve this object in a federated query.
    String? channel,
    /// List of price information in channels for the product.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    List<ProductVariantChannelListing>? channelListings,
    required DateTime created,
    /// Digital content for the product variant.

Requires one of the following permissions: MANAGE_PRODUCTS.
    DigitalContent? digitalContent,
    required String id,
    /// List of images for the product variant.
    List<ProductImage>? images,
    /// Gross margin percentage value.
    int? margin,
    /// List of media for the product variant.
    List<ProductMedia>? media,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// Preorder data for product variant.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PreorderData? preorder,
    /// Lists the storefront variant's pricing, the current price and discounts, only meant for displaying.
    VariantPricingInfo? pricing,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required Product product,
    /// Quantity of a product available for sale in one checkout. Field value will be `null` when no `limitQuantityPerCheckout` in global settings has been set, and `productVariant` stocks are not tracked.
    int? quantityAvailable,
    int? quantityLimitPerCustomer,
    /// Total quantity ordered.

Requires one of the following permissions: MANAGE_PRODUCTS.
    int? quantityOrdered,
    /// Total revenue generated by a variant in given period of time. Note: this field should be queried using `reportProductSales` query as it uses optimizations suitable for such calculations.

Requires one of the following permissions: MANAGE_PRODUCTS.
    TaxedMoney? revenue,
    String? sku,
    /// Stocks for the product variant.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    List<Stock>? stocks,
    required bool trackInventory,
    /// Returns translated product variant fields for the given language code.
    ProductVariantTranslation? translation,
    required DateTime updatedAt,
    Weight? weight,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, Object?> json) => _ProductVariantFromJson(json);
}

/// Event sent when product variant is back in stock.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductVariantBackInStock with _$ProductVariantBackInStock {
  const ProductVariantBackInStock._();

  /// Event sent when product variant is back in stock.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductVariantBackInStock({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product variant the event relates to.
    ProductVariant? productVariant,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// Look up a warehouse.
    Warehouse? warehouse,
  }) = _ProductVariantBackInStock;

  factory ProductVariantBackInStock.fromJson(Map<String, Object?> json) => _ProductVariantBackInStockFromJson(json);
}

/// Creates product variants for a given product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantBulkCreate with _$ProductVariantBulkCreate {
  const ProductVariantBulkCreate._();

  /// Creates product variants for a given product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantBulkCreate({
    required List<BulkProductError> bulkProductErrors,
    /// Returns how many objects were created.
    required int count,
    required List<BulkProductError> errors,
    /// List of the created variants.
    required List<ProductVariant> productVariants,
  }) = _ProductVariantBulkCreate;

  factory ProductVariantBulkCreate.fromJson(Map<String, Object?> json) => _ProductVariantBulkCreateFromJson(json);
}

@unfreezed
class ProductVariantBulkCreateInput with _$ProductVariantBulkCreateInput {
  const ProductVariantBulkCreateInput._();

  const factory ProductVariantBulkCreateInput({
    /// List of attributes specific to this variant.
    required List<BulkAttributeValueInput> attributes,
    /// List of prices assigned to channels.
    List<ProductVariantChannelListingAddInput>? channelListings,
    /// Variant name.
    String? name,
    /// Determines if variant is in preorder.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PreorderSettingsInput? preorder,
    /// Determines maximum quantity of `ProductVariant`,that can be bought in a single checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    int? quantityLimitPerCustomer,
    /// Stock keeping unit.
    String? sku,
    /// Stocks of a product available for sale.
    List<StockInput>? stocks,
    /// Determines if the inventory of this variant should be tracked. If false, the quantity won't change when customers buy this item.
    bool? trackInventory,
    /// Weight of the Product Variant.
    WeightScalar? weight,
  }) = _ProductVariantBulkCreateInput;

  factory ProductVariantBulkCreateInput.fromJson(Map<String, Object?> json) => _ProductVariantBulkCreateInputFromJson(json);
}

/// Deletes product variants. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantBulkDelete with _$ProductVariantBulkDelete {
  const ProductVariantBulkDelete._();

  /// Deletes product variants. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ProductError> errors,
    required List<ProductError> productErrors,
  }) = _ProductVariantBulkDelete;

  factory ProductVariantBulkDelete.fromJson(Map<String, Object?> json) => _ProductVariantBulkDeleteFromJson(json);
}

/// Represents product varaint channel listing. 
@freezed
class ProductVariantChannelListing with _$ProductVariantChannelListing {
  const ProductVariantChannelListing._();

  /// Represents product varaint channel listing. 
  const factory ProductVariantChannelListing({
    required Channel channel,
    /// Cost price of the variant.
    Money? costPrice,
    required String id,
    /// Gross margin percentage value.

Requires one of the following permissions: MANAGE_PRODUCTS.
    int? margin,
    /// Preorder variant data.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PreorderThreshold? preorderThreshold,
    Money? price,
  }) = _ProductVariantChannelListing;

  factory ProductVariantChannelListing.fromJson(Map<String, Object?> json) => _ProductVariantChannelListingFromJson(json);
}

@unfreezed
class ProductVariantChannelListingAddInput with _$ProductVariantChannelListingAddInput {
  const ProductVariantChannelListingAddInput._();

  const factory ProductVariantChannelListingAddInput({
    /// ID of a channel.
    required String channelId,
    /// Cost price of the variant in channel.
    PositiveDecimal? costPrice,
    /// The threshold for preorder variant in channel.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    int? preorderThreshold,
    /// Price of the particular variant in channel.
    required PositiveDecimal price,
  }) = _ProductVariantChannelListingAddInput;

  factory ProductVariantChannelListingAddInput.fromJson(Map<String, Object?> json) => _ProductVariantChannelListingAddInputFromJson(json);
}

/// Manage product variant prices in channels. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantChannelListingUpdate with _$ProductVariantChannelListingUpdate {
  const ProductVariantChannelListingUpdate._();

  /// Manage product variant prices in channels. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantChannelListingUpdate({
    required List<ProductChannelListingError> errors,
    required List<ProductChannelListingError> productChannelListingErrors,
    /// An updated product variant instance.
    ProductVariant? variant,
  }) = _ProductVariantChannelListingUpdate;

  factory ProductVariantChannelListingUpdate.fromJson(Map<String, Object?> json) => _ProductVariantChannelListingUpdateFromJson(json);
}

@freezed
class ProductVariantCountableConnection with _$ProductVariantCountableConnection {
  const ProductVariantCountableConnection._();

  const factory ProductVariantCountableConnection({
    required List<ProductVariantCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _ProductVariantCountableConnection;

  factory ProductVariantCountableConnection.fromJson(Map<String, Object?> json) => _ProductVariantCountableConnectionFromJson(json);
}

@freezed
class ProductVariantCountableEdge with _$ProductVariantCountableEdge {
  const ProductVariantCountableEdge._();

  const factory ProductVariantCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required ProductVariant node,
  }) = _ProductVariantCountableEdge;

  factory ProductVariantCountableEdge.fromJson(Map<String, Object?> json) => _ProductVariantCountableEdgeFromJson(json);
}

/// Creates a new variant for a product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantCreate with _$ProductVariantCreate {
  const ProductVariantCreate._();

  /// Creates a new variant for a product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantCreate({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductVariant? productVariant,
  }) = _ProductVariantCreate;

  factory ProductVariantCreate.fromJson(Map<String, Object?> json) => _ProductVariantCreateFromJson(json);
}

@unfreezed
class ProductVariantCreateInput with _$ProductVariantCreateInput {
  const ProductVariantCreateInput._();

  const factory ProductVariantCreateInput({
    /// List of attributes specific to this variant.
    required List<AttributeValueInput> attributes,
    /// Variant name.
    String? name,
    /// Determines if variant is in preorder.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PreorderSettingsInput? preorder,
    /// Product ID of which type is the variant.
    required String product,
    /// Determines maximum quantity of `ProductVariant`,that can be bought in a single checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    int? quantityLimitPerCustomer,
    /// Stock keeping unit.
    String? sku,
    /// Stocks of a product available for sale.
    List<StockInput>? stocks,
    /// Determines if the inventory of this variant should be tracked. If false, the quantity won't change when customers buy this item.
    bool? trackInventory,
    /// Weight of the Product Variant.
    WeightScalar? weight,
  }) = _ProductVariantCreateInput;

  factory ProductVariantCreateInput.fromJson(Map<String, Object?> json) => _ProductVariantCreateInputFromJson(json);
}

/// Event sent when new product variant is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductVariantCreated with _$ProductVariantCreated {
  const ProductVariantCreated._();

  /// Event sent when new product variant is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductVariantCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product variant the event relates to.
    ProductVariant? productVariant,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ProductVariantCreated;

  factory ProductVariantCreated.fromJson(Map<String, Object?> json) => _ProductVariantCreatedFromJson(json);
}

/// Deletes a product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantDelete with _$ProductVariantDelete {
  const ProductVariantDelete._();

  /// Deletes a product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantDelete({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductVariant? productVariant,
  }) = _ProductVariantDelete;

  factory ProductVariantDelete.fromJson(Map<String, Object?> json) => _ProductVariantDeleteFromJson(json);
}

/// Event sent when product variant is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductVariantDeleted with _$ProductVariantDeleted {
  const ProductVariantDeleted._();

  /// Event sent when product variant is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductVariantDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product variant the event relates to.
    ProductVariant? productVariant,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ProductVariantDeleted;

  factory ProductVariantDeleted.fromJson(Map<String, Object?> json) => _ProductVariantDeletedFromJson(json);
}

@unfreezed
class ProductVariantFilterInput with _$ProductVariantFilterInput {
  const ProductVariantFilterInput._();

  const factory ProductVariantFilterInput({
    bool? isPreorder,
    List<MetadataFilter>? metadata,
    String? search,
    List<String>? sku,
    DateTimeRangeInput? updatedAt,
  }) = _ProductVariantFilterInput;

  factory ProductVariantFilterInput.fromJson(Map<String, Object?> json) => _ProductVariantFilterInputFromJson(json);
}

@unfreezed
class ProductVariantInput with _$ProductVariantInput {
  const ProductVariantInput._();

  const factory ProductVariantInput({
    /// List of attributes specific to this variant.
    List<AttributeValueInput>? attributes,
    /// Variant name.
    String? name,
    /// Determines if variant is in preorder.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PreorderSettingsInput? preorder,
    /// Determines maximum quantity of `ProductVariant`,that can be bought in a single checkout.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    int? quantityLimitPerCustomer,
    /// Stock keeping unit.
    String? sku,
    /// Determines if the inventory of this variant should be tracked. If false, the quantity won't change when customers buy this item.
    bool? trackInventory,
    /// Weight of the Product Variant.
    WeightScalar? weight,
  }) = _ProductVariantInput;

  factory ProductVariantInput.fromJson(Map<String, Object?> json) => _ProductVariantInputFromJson(json);
}

/// Event sent when product variant is out of stock.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductVariantOutOfStock with _$ProductVariantOutOfStock {
  const ProductVariantOutOfStock._();

  /// Event sent when product variant is out of stock.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductVariantOutOfStock({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product variant the event relates to.
    ProductVariant? productVariant,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// Look up a warehouse.
    Warehouse? warehouse,
  }) = _ProductVariantOutOfStock;

  factory ProductVariantOutOfStock.fromJson(Map<String, Object?> json) => _ProductVariantOutOfStockFromJson(json);
}

/// Deactivates product variant preorder. It changes all preorder allocation into regular allocation.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantPreorderDeactivate with _$ProductVariantPreorderDeactivate {
  const ProductVariantPreorderDeactivate._();

  /// Deactivates product variant preorder. It changes all preorder allocation into regular allocation.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantPreorderDeactivate({
    required List<ProductError> errors,
    /// Product variant with ended preorder.
    ProductVariant? productVariant,
  }) = _ProductVariantPreorderDeactivate;

  factory ProductVariantPreorderDeactivate.fromJson(Map<String, Object?> json) => _ProductVariantPreorderDeactivateFromJson(json);
}

/// Reorder the variants of a product. Mutation updates updated_at on product and triggers PRODUCT_UPDATED webhook. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantReorder with _$ProductVariantReorder {
  const ProductVariantReorder._();

  /// Reorder the variants of a product. Mutation updates updated_at on product and triggers PRODUCT_UPDATED webhook. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantReorder({
    required List<ProductError> errors,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductVariantReorder;

  factory ProductVariantReorder.fromJson(Map<String, Object?> json) => _ProductVariantReorderFromJson(json);
}

/// Reorder product variant attribute values. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantReorderAttributeValues with _$ProductVariantReorderAttributeValues {
  const ProductVariantReorderAttributeValues._();

  /// Reorder product variant attribute values. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantReorderAttributeValues({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    /// Product variant from which attribute values are reordered.
    ProductVariant? productVariant,
  }) = _ProductVariantReorderAttributeValues;

  factory ProductVariantReorderAttributeValues.fromJson(Map<String, Object?> json) => _ProductVariantReorderAttributeValuesFromJson(json);
}

/// Set default variant for a product. Mutation triggers PRODUCT_UPDATED webhook. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantSetDefault with _$ProductVariantSetDefault {
  const ProductVariantSetDefault._();

  /// Set default variant for a product. Mutation triggers PRODUCT_UPDATED webhook. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantSetDefault({
    required List<ProductError> errors,
    Product? product,
    required List<ProductError> productErrors,
  }) = _ProductVariantSetDefault;

  factory ProductVariantSetDefault.fromJson(Map<String, Object?> json) => _ProductVariantSetDefaultFromJson(json);
}

enum ProductVariantSortField{
  /// Sort products variants by last modified at. 
@JsonKey(name: LAST_MODIFIED_AT) last_modified_at
}

@unfreezed
class ProductVariantSortingInput with _$ProductVariantSortingInput {
  const ProductVariantSortingInput._();

  const factory ProductVariantSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort productVariants by the selected field.
    required ProductVariantSortField field,
  }) = _ProductVariantSortingInput;

  factory ProductVariantSortingInput.fromJson(Map<String, Object?> json) => _ProductVariantSortingInputFromJson(json);
}

/// Creates stocks for product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantStocksCreate with _$ProductVariantStocksCreate {
  const ProductVariantStocksCreate._();

  /// Creates stocks for product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantStocksCreate({
    required List<BulkStockError> bulkStockErrors,
    required List<BulkStockError> errors,
    /// Updated product variant.
    ProductVariant? productVariant,
  }) = _ProductVariantStocksCreate;

  factory ProductVariantStocksCreate.fromJson(Map<String, Object?> json) => _ProductVariantStocksCreateFromJson(json);
}

/// Delete stocks from product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantStocksDelete with _$ProductVariantStocksDelete {
  const ProductVariantStocksDelete._();

  /// Delete stocks from product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantStocksDelete({
    required List<StockError> errors,
    /// Updated product variant.
    ProductVariant? productVariant,
    required List<StockError> stockErrors,
  }) = _ProductVariantStocksDelete;

  factory ProductVariantStocksDelete.fromJson(Map<String, Object?> json) => _ProductVariantStocksDeleteFromJson(json);
}

/// Update stocks for product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantStocksUpdate with _$ProductVariantStocksUpdate {
  const ProductVariantStocksUpdate._();

  /// Update stocks for product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantStocksUpdate({
    required List<BulkStockError> bulkStockErrors,
    required List<BulkStockError> errors,
    /// Updated product variant.
    ProductVariant? productVariant,
  }) = _ProductVariantStocksUpdate;

  factory ProductVariantStocksUpdate.fromJson(Map<String, Object?> json) => _ProductVariantStocksUpdateFromJson(json);
}

@freezed
class ProductVariantTranslatableContent with _$ProductVariantTranslatableContent {
  const ProductVariantTranslatableContent._();

  const factory ProductVariantTranslatableContent({
    /// List of product variant attribute values that can be translated.
    required List<AttributeValueTranslatableContent> attributeValues,
    required String id,
    required String name,
    /// Represents a version of a product such as different size or color.
    ProductVariant? productVariant,
    /// Returns translated product variant fields for the given language code.
    ProductVariantTranslation? translation,
  }) = _ProductVariantTranslatableContent;

  factory ProductVariantTranslatableContent.fromJson(Map<String, Object?> json) => _ProductVariantTranslatableContentFromJson(json);
}

/// Creates/updates translations for a product variant. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class ProductVariantTranslate with _$ProductVariantTranslate {
  const ProductVariantTranslate._();

  /// Creates/updates translations for a product variant. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory ProductVariantTranslate({
    required List<TranslationError> errors,
    ProductVariant? productVariant,
    required List<TranslationError> translationErrors,
  }) = _ProductVariantTranslate;

  factory ProductVariantTranslate.fromJson(Map<String, Object?> json) => _ProductVariantTranslateFromJson(json);
}

@freezed
class ProductVariantTranslation with _$ProductVariantTranslation {
  const ProductVariantTranslation._();

  const factory ProductVariantTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
  }) = _ProductVariantTranslation;

  factory ProductVariantTranslation.fromJson(Map<String, Object?> json) => _ProductVariantTranslationFromJson(json);
}

/// Updates an existing variant for product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class ProductVariantUpdate with _$ProductVariantUpdate {
  const ProductVariantUpdate._();

  /// Updates an existing variant for product. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory ProductVariantUpdate({
    required List<ProductError> errors,
    required List<ProductError> productErrors,
    ProductVariant? productVariant,
  }) = _ProductVariantUpdate;

  factory ProductVariantUpdate.fromJson(Map<String, Object?> json) => _ProductVariantUpdateFromJson(json);
}

/// Event sent when product variant is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ProductVariantUpdated with _$ProductVariantUpdated {
  const ProductVariantUpdated._();

  /// Event sent when product variant is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ProductVariantUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The product variant the event relates to.
    ProductVariant? productVariant,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ProductVariantUpdated;

  factory ProductVariantUpdated.fromJson(Map<String, Object?> json) => _ProductVariantUpdatedFromJson(json);
}

@unfreezed
class PublishableChannelListingInput with _$PublishableChannelListingInput {
  const PublishableChannelListingInput._();

  const factory PublishableChannelListingInput({
    /// ID of a channel.
    required String channelId,
    /// Determines if object is visible to customers.
    bool? isPublished,
    /// Publication date. ISO 8601 standard. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `publishedAt` field instead.
    Date? publicationDate,
    /// Publication date time. ISO 8601 standard.

Added in Saleor 3.3.
    DateTime? publishedAt,
  }) = _PublishableChannelListingInput;

  factory PublishableChannelListingInput.fromJson(Map<String, Object?> json) => _PublishableChannelListingInputFromJson(json);
}

/// Represents a reduced VAT rate for a particular type of goods. 
@freezed
class ReducedRate with _$ReducedRate {
  const ReducedRate._();

  /// Represents a reduced VAT rate for a particular type of goods. 
  const factory ReducedRate({
    /// Reduced VAT rate in percent.
    required double rate,
    /// A type of goods.
    required String rateType,
  }) = _ReducedRate;

  factory ReducedRate.fromJson(Map<String, Object?> json) => _ReducedRateFromJson(json);
}

/// Refresh JWT token. Mutation tries to take refreshToken from the input.If it fails it will try to take refreshToken from the http-only cookie -refreshToken. csrfToken is required when refreshToken is provided as a cookie. 
@freezed
class RefreshToken with _$RefreshToken {
  const RefreshToken._();

  /// Refresh JWT token. Mutation tries to take refreshToken from the input.If it fails it will try to take refreshToken from the http-only cookie -refreshToken. csrfToken is required when refreshToken is provided as a cookie. 
  const factory RefreshToken({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// JWT token, required to authenticate.
    String? token,
    /// A user instance.
    User? user,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, Object?> json) => _RefreshTokenFromJson(json);
}

@unfreezed
class ReorderInput with _$ReorderInput {
  const ReorderInput._();

  const factory ReorderInput({
    /// The ID of the item to move.
    required String id,
    /// The new relative sorting position of the item (from -inf to +inf). 1 moves the item one position forward, -1 moves the item one position backward, 0 leaves the item unchanged.
    int? sortOrder,
  }) = _ReorderInput;

  factory ReorderInput.fromJson(Map<String, Object?> json) => _ReorderInputFromJson(json);
}

enum ReportingPeriod{
  @JsonKey(name: THIS_MONTH) this_month
  @JsonKey(name: TODAY) today
}

/// Request email change of the logged in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
@freezed
class RequestEmailChange with _$RequestEmailChange {
  const RequestEmailChange._();

  /// Request email change of the logged in user. 

Requires one of the following permissions: AUTHENTICATED_USER. 
  const factory RequestEmailChange({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// A user instance.
    User? user,
  }) = _RequestEmailChange;

  factory RequestEmailChange.fromJson(Map<String, Object?> json) => _RequestEmailChangeFromJson(json);
}

/// Sends an email with the account password modification link. 
@freezed
class RequestPasswordReset with _$RequestPasswordReset {
  const RequestPasswordReset._();

  /// Sends an email with the account password modification link. 
  const factory RequestPasswordReset({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
  }) = _RequestPasswordReset;

  factory RequestPasswordReset.fromJson(Map<String, Object?> json) => _RequestPasswordResetFromJson(json);
}

/// Sales allow creating discounts for categories, collections or products and are visible to all the customers. 
@freezed
class Sale with _$Sale {
  const Sale._();

  /// Sales allow creating discounts for categories, collections or products and are visible to all the customers. 
  const factory Sale({
    /// List of categories this sale applies to.
    CategoryCountableConnection? categories,
    /// List of channels available for the sale.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    List<SaleChannelListing>? channelListings,
    /// List of collections this sale applies to.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    CollectionCountableConnection? collections,
    required DateTime created,
    /// Currency code for sale.
    String? currency,
    /// Sale value.
    double? discountValue,
    DateTime? endDate,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of products this sale applies to.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    ProductCountableConnection? products,
    required DateTime startDate,
    /// Returns translated sale fields for the given language code.
    SaleTranslation? translation,
    required SaleType type,
    required DateTime updatedAt,
    /// List of product variants this sale applies to.

Added in Saleor 3.1.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    ProductVariantCountableConnection? variants,
  }) = _Sale;

  factory Sale.fromJson(Map<String, Object?> json) => _SaleFromJson(json);
}

/// Adds products, categories, collections to a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleAddCatalogues with _$SaleAddCatalogues {
  const SaleAddCatalogues._();

  /// Adds products, categories, collections to a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleAddCatalogues({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    /// Sale of which catalogue IDs will be modified.
    Sale? sale,
  }) = _SaleAddCatalogues;

  factory SaleAddCatalogues.fromJson(Map<String, Object?> json) => _SaleAddCataloguesFromJson(json);
}

/// Deletes sales. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleBulkDelete with _$SaleBulkDelete {
  const SaleBulkDelete._();

  /// Deletes sales. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
  }) = _SaleBulkDelete;

  factory SaleBulkDelete.fromJson(Map<String, Object?> json) => _SaleBulkDeleteFromJson(json);
}

/// Represents sale channel listing. 
@freezed
class SaleChannelListing with _$SaleChannelListing {
  const SaleChannelListing._();

  /// Represents sale channel listing. 
  const factory SaleChannelListing({
    required Channel channel,
    required String currency,
    required double discountValue,
    required String id,
  }) = _SaleChannelListing;

  factory SaleChannelListing.fromJson(Map<String, Object?> json) => _SaleChannelListingFromJson(json);
}

@unfreezed
class SaleChannelListingAddInput with _$SaleChannelListingAddInput {
  const SaleChannelListingAddInput._();

  const factory SaleChannelListingAddInput({
    /// ID of a channel.
    required String channelId,
    /// The value of the discount.
    required PositiveDecimal discountValue,
  }) = _SaleChannelListingAddInput;

  factory SaleChannelListingAddInput.fromJson(Map<String, Object?> json) => _SaleChannelListingAddInputFromJson(json);
}

@unfreezed
class SaleChannelListingInput with _$SaleChannelListingInput {
  const SaleChannelListingInput._();

  const factory SaleChannelListingInput({
    /// List of channels to which the sale should be assigned.
    List<SaleChannelListingAddInput>? addChannels,
    /// List of channels from which the sale should be unassigned.
    List<String>? removeChannels,
  }) = _SaleChannelListingInput;

  factory SaleChannelListingInput.fromJson(Map<String, Object?> json) => _SaleChannelListingInputFromJson(json);
}

/// Manage sale's availability in channels. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleChannelListingUpdate with _$SaleChannelListingUpdate {
  const SaleChannelListingUpdate._();

  /// Manage sale's availability in channels. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleChannelListingUpdate({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    /// An updated sale instance.
    Sale? sale,
  }) = _SaleChannelListingUpdate;

  factory SaleChannelListingUpdate.fromJson(Map<String, Object?> json) => _SaleChannelListingUpdateFromJson(json);
}

@freezed
class SaleCountableConnection with _$SaleCountableConnection {
  const SaleCountableConnection._();

  const factory SaleCountableConnection({
    required List<SaleCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _SaleCountableConnection;

  factory SaleCountableConnection.fromJson(Map<String, Object?> json) => _SaleCountableConnectionFromJson(json);
}

@freezed
class SaleCountableEdge with _$SaleCountableEdge {
  const SaleCountableEdge._();

  const factory SaleCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Sale node,
  }) = _SaleCountableEdge;

  factory SaleCountableEdge.fromJson(Map<String, Object?> json) => _SaleCountableEdgeFromJson(json);
}

/// Creates a new sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleCreate with _$SaleCreate {
  const SaleCreate._();

  /// Creates a new sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleCreate({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    Sale? sale,
  }) = _SaleCreate;

  factory SaleCreate.fromJson(Map<String, Object?> json) => _SaleCreateFromJson(json);
}

/// Event sent when new sale is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class SaleCreated with _$SaleCreated {
  const SaleCreated._();

  /// Event sent when new sale is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory SaleCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The sale the event relates to.
    Sale? sale,
    /// Saleor version that triggered the event.
    String? version,
  }) = _SaleCreated;

  factory SaleCreated.fromJson(Map<String, Object?> json) => _SaleCreatedFromJson(json);
}

/// Deletes a sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleDelete with _$SaleDelete {
  const SaleDelete._();

  /// Deletes a sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleDelete({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    Sale? sale,
  }) = _SaleDelete;

  factory SaleDelete.fromJson(Map<String, Object?> json) => _SaleDeleteFromJson(json);
}

/// Event sent when sale is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class SaleDeleted with _$SaleDeleted {
  const SaleDeleted._();

  /// Event sent when sale is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory SaleDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The sale the event relates to.
    Sale? sale,
    /// Saleor version that triggered the event.
    String? version,
  }) = _SaleDeleted;

  factory SaleDeleted.fromJson(Map<String, Object?> json) => _SaleDeletedFromJson(json);
}

@unfreezed
class SaleFilterInput with _$SaleFilterInput {
  const SaleFilterInput._();

  const factory SaleFilterInput({
    List<MetadataFilter>? metadata,
    DiscountValueTypeEnum? saleType,
    String? search,
    DateTimeRangeInput? started,
    List<DiscountStatusEnum>? status,
    DateTimeRangeInput? updatedAt,
  }) = _SaleFilterInput;

  factory SaleFilterInput.fromJson(Map<String, Object?> json) => _SaleFilterInputFromJson(json);
}

@unfreezed
class SaleInput with _$SaleInput {
  const SaleInput._();

  const factory SaleInput({
    /// Categories related to the discount.
    List<String>? categories,
    /// Collections related to the discount.
    List<String>? collections,
    /// End date of the voucher in ISO 8601 format.
    DateTime? endDate,
    /// Voucher name.
    String? name,
    /// Products related to the discount.
    List<String>? products,
    /// Start date of the voucher in ISO 8601 format.
    DateTime? startDate,
    /// Fixed or percentage.
    DiscountValueTypeEnum? type,
    /// Value of the voucher.
    PositiveDecimal? value,
    List<String>? variants,
  }) = _SaleInput;

  factory SaleInput.fromJson(Map<String, Object?> json) => _SaleInputFromJson(json);
}

/// Removes products, categories, collections from a sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleRemoveCatalogues with _$SaleRemoveCatalogues {
  const SaleRemoveCatalogues._();

  /// Removes products, categories, collections from a sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleRemoveCatalogues({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    /// Sale of which catalogue IDs will be modified.
    Sale? sale,
  }) = _SaleRemoveCatalogues;

  factory SaleRemoveCatalogues.fromJson(Map<String, Object?> json) => _SaleRemoveCataloguesFromJson(json);
}

enum SaleSortField{
  /// Sort sales by created at. 
@JsonKey(name: CREATED_AT) created_at
  /// Sort sales by end date. 
@JsonKey(name: END_DATE) end_date
  /// Sort sales by last modified at. 
@JsonKey(name: LAST_MODIFIED_AT) last_modified_at
  /// Sort sales by name. 
@JsonKey(name: NAME) name
  /// Sort sales by start date. 
@JsonKey(name: START_DATE) start_date
  /// Sort sales by type. 
@JsonKey(name: TYPE) type
  /// Sort sales by value.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: VALUE) value
}

@unfreezed
class SaleSortingInput with _$SaleSortingInput {
  const SaleSortingInput._();

  const factory SaleSortingInput({
    /// Specifies the channel in which to sort the data.

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort sales by the selected field.
    required SaleSortField field,
  }) = _SaleSortingInput;

  factory SaleSortingInput.fromJson(Map<String, Object?> json) => _SaleSortingInputFromJson(json);
}

/// The event informs about the start or end of the sale.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class SaleToggle with _$SaleToggle {
  const SaleToggle._();

  /// The event informs about the start or end of the sale.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory SaleToggle({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The sale the event relates to.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Sale? sale,
    /// Saleor version that triggered the event.
    String? version,
  }) = _SaleToggle;

  factory SaleToggle.fromJson(Map<String, Object?> json) => _SaleToggleFromJson(json);
}

@freezed
class SaleTranslatableContent with _$SaleTranslatableContent {
  const SaleTranslatableContent._();

  const factory SaleTranslatableContent({
    required String id,
    required String name,
    /// Sales allow creating discounts for categories, collections or products and are visible to all the customers.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    Sale? sale,
    /// Returns translated sale fields for the given language code.
    SaleTranslation? translation,
  }) = _SaleTranslatableContent;

  factory SaleTranslatableContent.fromJson(Map<String, Object?> json) => _SaleTranslatableContentFromJson(json);
}

/// Creates/updates translations for a sale. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class SaleTranslate with _$SaleTranslate {
  const SaleTranslate._();

  /// Creates/updates translations for a sale. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory SaleTranslate({
    required List<TranslationError> errors,
    Sale? sale,
    required List<TranslationError> translationErrors,
  }) = _SaleTranslate;

  factory SaleTranslate.fromJson(Map<String, Object?> json) => _SaleTranslateFromJson(json);
}

@freezed
class SaleTranslation with _$SaleTranslation {
  const SaleTranslation._();

  const factory SaleTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
  }) = _SaleTranslation;

  factory SaleTranslation.fromJson(Map<String, Object?> json) => _SaleTranslationFromJson(json);
}

enum SaleType{
  @JsonKey(name: FIXED) fixed
  @JsonKey(name: PERCENTAGE) percentage
}

/// Updates a sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class SaleUpdate with _$SaleUpdate {
  const SaleUpdate._();

  /// Updates a sale. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory SaleUpdate({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    Sale? sale,
  }) = _SaleUpdate;

  factory SaleUpdate.fromJson(Map<String, Object?> json) => _SaleUpdateFromJson(json);
}

/// Event sent when sale is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class SaleUpdated with _$SaleUpdated {
  const SaleUpdated._();

  /// Event sent when sale is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory SaleUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The sale the event relates to.
    Sale? sale,
    /// Saleor version that triggered the event.
    String? version,
  }) = _SaleUpdated;

  factory SaleUpdated.fromJson(Map<String, Object?> json) => _SaleUpdatedFromJson(json);
}

/// Represents a custom attribute. 
@freezed
class SelectedAttribute with _$SelectedAttribute {
  const SelectedAttribute._();

  /// Represents a custom attribute. 
  const factory SelectedAttribute({
    /// Name of an attribute displayed in the interface.
    required Attribute attribute,
    /// Values of an attribute.
    required List<AttributeValue> values,
  }) = _SelectedAttribute;

  factory SelectedAttribute.fromJson(Map<String, Object?> json) => _SelectedAttributeFromJson(json);
}

@unfreezed
class SeoInput with _$SeoInput {
  const SeoInput._();

  const factory SeoInput({
    /// SEO description.
    String? description,
    /// SEO title.
    String? title,
  }) = _SeoInput;

  factory SeoInput.fromJson(Map<String, Object?> json) => _SeoInputFromJson(json);
}

/// Sets the user's password from the token sent by email using the RequestPasswordReset mutation. 
@freezed
class SetPassword with _$SetPassword {
  const SetPassword._();

  /// Sets the user's password from the token sent by email using the RequestPasswordReset mutation. 
  const factory SetPassword({
    required List<AccountError> accountErrors,
    /// CSRF token required to re-generate access token.
    String? csrfToken,
    required List<AccountError> errors,
    /// JWT refresh token, required to re-generate access token.
    String? refreshToken,
    /// JWT token, required to authenticate.
    String? token,
    /// A user instance.
    User? user,
  }) = _SetPassword;

  factory SetPassword.fromJson(Map<String, Object?> json) => _SetPasswordFromJson(json);
}

@freezed
class ShippingError with _$ShippingError {
  const ShippingError._();

  const factory ShippingError({
    /// List of channels IDs which causes the error.
    List<String>? channels,
    /// The error code.
    required ShippingErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of warehouse IDs which causes the error.
    List<String>? warehouses,
  }) = _ShippingError;

  factory ShippingError.fromJson(Map<String, Object?> json) => _ShippingErrorFromJson(json);
}

enum ShippingErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: DUPLICATED_INPUT_ITEM) duplicated_input_item
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: MAX_LESS_THAN_MIN) max_less_than_min
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

/// List shipping methods for checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingListMethodsForCheckout with _$ShippingListMethodsForCheckout {
  const ShippingListMethodsForCheckout._();

  /// List shipping methods for checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingListMethodsForCheckout({
    /// The checkout the event relates to.
    Checkout? checkout,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Shipping methods that can be used with this checkout.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    List<ShippingMethod>? shippingMethods,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingListMethodsForCheckout;

  factory ShippingListMethodsForCheckout.fromJson(Map<String, Object?> json) => _ShippingListMethodsForCheckoutFromJson(json);
}

/// Shipping methods that can be used as means of shipping for orders and checkouts. 
@freezed
class ShippingMethod with _$ShippingMethod {
  const ShippingMethod._();

  /// Shipping methods that can be used as means of shipping for orders and checkouts. 
  const factory ShippingMethod.shippingMethod({
    /// Describes if this shipping method is active and can be selected.
    required bool active,
    /// Shipping method description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Unique ID of ShippingMethod available for Order.
    required String id,
    /// Maximum delivery days for this shipping method.
    int? maximumDeliveryDays,
    /// Maximum order price for this shipping method.
    Money? maximumOrderPrice,
    /// Maximum order weight for this shipping method.
    Weight? maximumOrderWeight,
    /// Message connected to this shipping method.
    String? message,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Minimum delivery days for this shipping method.
    int? minimumDeliveryDays,
    /// Minimal order price for this shipping method.
    Money? minimumOrderPrice,
    /// Minimum order weight for this shipping method.
    Weight? minimumOrderWeight,
    /// Shipping method name.
    required String name,
    /// The price of selected shipping method.
    required Money price,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Returns translated shipping method fields for the given language code.
    ShippingMethodTranslation? translation,
    /// Type of the shipping method.
    ShippingMethodTypeEnum? type,
  }) = ShippingMethod;

  factory ShippingMethod.fromJson(Map<String, Object?> json) => _ShippingMethodFromJson(json);
}

/// Represents shipping method channel listing. 
@freezed
class ShippingMethodChannelListing with _$ShippingMethodChannelListing {
  const ShippingMethodChannelListing._();

  /// Represents shipping method channel listing. 
  const factory ShippingMethodChannelListing({
    required Channel channel,
    required String id,
    Money? maximumOrderPrice,
    Money? minimumOrderPrice,
    Money? price,
  }) = _ShippingMethodChannelListing;

  factory ShippingMethodChannelListing.fromJson(Map<String, Object?> json) => _ShippingMethodChannelListingFromJson(json);
}

@unfreezed
class ShippingMethodChannelListingAddInput with _$ShippingMethodChannelListingAddInput {
  const ShippingMethodChannelListingAddInput._();

  const factory ShippingMethodChannelListingAddInput({
    /// ID of a channel.
    required String channelId,
    /// Maximum order price to use this shipping method.
    PositiveDecimal? maximumOrderPrice,
    /// Minimum order price to use this shipping method.
    PositiveDecimal? minimumOrderPrice,
    /// Shipping price of the shipping method in this channel.
    PositiveDecimal? price,
  }) = _ShippingMethodChannelListingAddInput;

  factory ShippingMethodChannelListingAddInput.fromJson(Map<String, Object?> json) => _ShippingMethodChannelListingAddInputFromJson(json);
}

@unfreezed
class ShippingMethodChannelListingInput with _$ShippingMethodChannelListingInput {
  const ShippingMethodChannelListingInput._();

  const factory ShippingMethodChannelListingInput({
    /// List of channels to which the shipping method should be assigned.
    List<ShippingMethodChannelListingAddInput>? addChannels,
    /// List of channels from which the shipping method should be unassigned.
    List<String>? removeChannels,
  }) = _ShippingMethodChannelListingInput;

  factory ShippingMethodChannelListingInput.fromJson(Map<String, Object?> json) => _ShippingMethodChannelListingInputFromJson(json);
}

/// Manage shipping method's availability in channels. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingMethodChannelListingUpdate with _$ShippingMethodChannelListingUpdate {
  const ShippingMethodChannelListingUpdate._();

  /// Manage shipping method's availability in channels. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingMethodChannelListingUpdate({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    /// An updated shipping method instance.
    ShippingMethodType? shippingMethod,
  }) = _ShippingMethodChannelListingUpdate;

  factory ShippingMethodChannelListingUpdate.fromJson(Map<String, Object?> json) => _ShippingMethodChannelListingUpdateFromJson(json);
}

/// Represents shipping method postal code rule. 
@freezed
class ShippingMethodPostalCodeRule with _$ShippingMethodPostalCodeRule {
  const ShippingMethodPostalCodeRule._();

  /// Represents shipping method postal code rule. 
  const factory ShippingMethodPostalCodeRule({
    /// End address range.
    String? end,
    /// The ID of the object.
    required String id,
    /// Inclusion type of the postal code rule.
    PostalCodeRuleInclusionTypeEnum? inclusionType,
    /// Start address range.
    String? start,
  }) = _ShippingMethodPostalCodeRule;

  factory ShippingMethodPostalCodeRule.fromJson(Map<String, Object?> json) => _ShippingMethodPostalCodeRuleFromJson(json);
}

@freezed
class ShippingMethodTranslatableContent with _$ShippingMethodTranslatableContent {
  const ShippingMethodTranslatableContent._();

  const factory ShippingMethodTranslatableContent({
    /// Description of the shipping method.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    required String id,
    required String name,
    /// Shipping method are the methods you'll use to get customer's orders  to them. They are directly exposed to the customers.

Requires one of the following permissions: MANAGE_SHIPPING.
    ShippingMethodType? shippingMethod,
    /// Returns translated shipping method fields for the given language code.
    ShippingMethodTranslation? translation,
  }) = _ShippingMethodTranslatableContent;

  factory ShippingMethodTranslatableContent.fromJson(Map<String, Object?> json) => _ShippingMethodTranslatableContentFromJson(json);
}

@freezed
class ShippingMethodTranslation with _$ShippingMethodTranslation {
  const ShippingMethodTranslation._();

  const factory ShippingMethodTranslation({
    /// Translated description of the shipping method.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
  }) = _ShippingMethodTranslation;

  factory ShippingMethodTranslation.fromJson(Map<String, Object?> json) => _ShippingMethodTranslationFromJson(json);
}

/// Shipping method are the methods you'll use to get customer's orders to them. They are directly exposed to the customers. 
@freezed
class ShippingMethodType with _$ShippingMethodType {
  const ShippingMethodType._();

  /// Shipping method are the methods you'll use to get customer's orders to them. They are directly exposed to the customers. 
  const factory ShippingMethodType({
    /// List of channels available for the method.

Requires one of the following permissions: MANAGE_SHIPPING.
    List<ShippingMethodChannelListing>? channelListings,
    /// Shipping method description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// List of excluded products for the shipping method.

Requires one of the following permissions: MANAGE_SHIPPING.
    ProductCountableConnection? excludedProducts,
    /// Shipping method ID.
    required String id,
    /// Maximum number of days for delivery.
    int? maximumDeliveryDays,
    /// The price of the cheapest variant (including discounts).
    Money? maximumOrderPrice,
    /// Maximum order weight to use this shipping method.
    Weight? maximumOrderWeight,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Minimal number of days for delivery.
    int? minimumDeliveryDays,
    /// The price of the cheapest variant (including discounts).
    Money? minimumOrderPrice,
    /// Minimum order weight to use this shipping method.
    Weight? minimumOrderWeight,
    /// Shipping method name.
    required String name,
    /// Postal code ranges rule of exclusion or inclusion of the shipping method.
    List<ShippingMethodPostalCodeRule>? postalCodeRules,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Returns translated shipping method fields for the given language code.
    ShippingMethodTranslation? translation,
    /// Type of the shipping method.
    ShippingMethodTypeEnum? type,
  }) = _ShippingMethodType;

  factory ShippingMethodType.fromJson(Map<String, Object?> json) => _ShippingMethodTypeFromJson(json);
}

enum ShippingMethodTypeEnum{
  @JsonKey(name: PRICE) price
  @JsonKey(name: WEIGHT) weight
}

/// List of shipping methods available for the country.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingMethodsPerCountry with _$ShippingMethodsPerCountry {
  const ShippingMethodsPerCountry._();

  /// List of shipping methods available for the country.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingMethodsPerCountry({
    /// The country code.
    required CountryCode countryCode,
    /// List of available shipping methods.
    List<ShippingMethod>? shippingMethods,
  }) = _ShippingMethodsPerCountry;

  factory ShippingMethodsPerCountry.fromJson(Map<String, Object?> json) => _ShippingMethodsPerCountryFromJson(json);
}

@unfreezed
class ShippingPostalCodeRulesCreateInputRange with _$ShippingPostalCodeRulesCreateInputRange {
  const ShippingPostalCodeRulesCreateInputRange._();

  const factory ShippingPostalCodeRulesCreateInputRange({
    /// End range of the postal code.
    String? end,
    /// Start range of the postal code.
    required String start,
  }) = _ShippingPostalCodeRulesCreateInputRange;

  factory ShippingPostalCodeRulesCreateInputRange.fromJson(Map<String, Object?> json) => _ShippingPostalCodeRulesCreateInputRangeFromJson(json);
}

/// Deletes shipping prices. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingPriceBulkDelete with _$ShippingPriceBulkDelete {
  const ShippingPriceBulkDelete._();

  /// Deletes shipping prices. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingPriceBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
  }) = _ShippingPriceBulkDelete;

  factory ShippingPriceBulkDelete.fromJson(Map<String, Object?> json) => _ShippingPriceBulkDeleteFromJson(json);
}

/// Creates a new shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingPriceCreate with _$ShippingPriceCreate {
  const ShippingPriceCreate._();

  /// Creates a new shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingPriceCreate({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    ShippingMethodType? shippingMethod,
    /// A shipping zone to which the shipping method belongs.
    ShippingZone? shippingZone,
  }) = _ShippingPriceCreate;

  factory ShippingPriceCreate.fromJson(Map<String, Object?> json) => _ShippingPriceCreateFromJson(json);
}

/// Event sent when new shipping price is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingPriceCreated with _$ShippingPriceCreated {
  const ShippingPriceCreated._();

  /// Event sent when new shipping price is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingPriceCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The shipping method the event relates to.
    ShippingMethodType? shippingMethod,
    /// The shipping zone the shipping method belongs to.
    ShippingZone? shippingZone,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingPriceCreated;

  factory ShippingPriceCreated.fromJson(Map<String, Object?> json) => _ShippingPriceCreatedFromJson(json);
}

/// Deletes a shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingPriceDelete with _$ShippingPriceDelete {
  const ShippingPriceDelete._();

  /// Deletes a shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingPriceDelete({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    /// A shipping method to delete.
    ShippingMethodType? shippingMethod,
    /// A shipping zone to which the shipping method belongs.
    ShippingZone? shippingZone,
  }) = _ShippingPriceDelete;

  factory ShippingPriceDelete.fromJson(Map<String, Object?> json) => _ShippingPriceDeleteFromJson(json);
}

/// Event sent when shipping price is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingPriceDeleted with _$ShippingPriceDeleted {
  const ShippingPriceDeleted._();

  /// Event sent when shipping price is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingPriceDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The shipping method the event relates to.
    ShippingMethodType? shippingMethod,
    /// The shipping zone the shipping method belongs to.
    ShippingZone? shippingZone,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingPriceDeleted;

  factory ShippingPriceDeleted.fromJson(Map<String, Object?> json) => _ShippingPriceDeletedFromJson(json);
}

/// Exclude products from shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingPriceExcludeProducts with _$ShippingPriceExcludeProducts {
  const ShippingPriceExcludeProducts._();

  /// Exclude products from shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingPriceExcludeProducts({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    /// A shipping method with new list of excluded products.
    ShippingMethodType? shippingMethod,
  }) = _ShippingPriceExcludeProducts;

  factory ShippingPriceExcludeProducts.fromJson(Map<String, Object?> json) => _ShippingPriceExcludeProductsFromJson(json);
}

@unfreezed
class ShippingPriceExcludeProductsInput with _$ShippingPriceExcludeProductsInput {
  const ShippingPriceExcludeProductsInput._();

  const factory ShippingPriceExcludeProductsInput({
    /// List of products which will be excluded.
    required List<String> products,
  }) = _ShippingPriceExcludeProductsInput;

  factory ShippingPriceExcludeProductsInput.fromJson(Map<String, Object?> json) => _ShippingPriceExcludeProductsInputFromJson(json);
}

@unfreezed
class ShippingPriceInput with _$ShippingPriceInput {
  const ShippingPriceInput._();

  const factory ShippingPriceInput({
    /// Postal code rules to add.
    List<ShippingPostalCodeRulesCreateInputRange>? addPostalCodeRules,
    /// Postal code rules to delete.
    List<String>? deletePostalCodeRules,
    /// Shipping method description.
    JSONString? description,
    /// Inclusion type for currently assigned postal code rules.
    PostalCodeRuleInclusionTypeEnum? inclusionType,
    /// Maximum number of days for delivery.
    int? maximumDeliveryDays,
    /// Maximum order weight to use this shipping method.
    WeightScalar? maximumOrderWeight,
    /// Minimal number of days for delivery.
    int? minimumDeliveryDays,
    /// Minimum order weight to use this shipping method.
    WeightScalar? minimumOrderWeight,
    /// Name of the shipping method.
    String? name,
    /// Shipping zone this method belongs to.
    String? shippingZone,
    /// Shipping type: price or weight based.
    ShippingMethodTypeEnum? type,
  }) = _ShippingPriceInput;

  factory ShippingPriceInput.fromJson(Map<String, Object?> json) => _ShippingPriceInputFromJson(json);
}

/// Remove product from excluded list for shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingPriceRemoveProductFromExclude with _$ShippingPriceRemoveProductFromExclude {
  const ShippingPriceRemoveProductFromExclude._();

  /// Remove product from excluded list for shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingPriceRemoveProductFromExclude({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    /// A shipping method with new list of excluded products.
    ShippingMethodType? shippingMethod,
  }) = _ShippingPriceRemoveProductFromExclude;

  factory ShippingPriceRemoveProductFromExclude.fromJson(Map<String, Object?> json) => _ShippingPriceRemoveProductFromExcludeFromJson(json);
}

/// Creates/updates translations for a shipping method. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class ShippingPriceTranslate with _$ShippingPriceTranslate {
  const ShippingPriceTranslate._();

  /// Creates/updates translations for a shipping method. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory ShippingPriceTranslate({
    required List<TranslationError> errors,
    ShippingMethodType? shippingMethod,
    required List<TranslationError> translationErrors,
  }) = _ShippingPriceTranslate;

  factory ShippingPriceTranslate.fromJson(Map<String, Object?> json) => _ShippingPriceTranslateFromJson(json);
}

@unfreezed
class ShippingPriceTranslationInput with _$ShippingPriceTranslationInput {
  const ShippingPriceTranslationInput._();

  const factory ShippingPriceTranslationInput({
    /// Translated shipping method description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    String? name,
  }) = _ShippingPriceTranslationInput;

  factory ShippingPriceTranslationInput.fromJson(Map<String, Object?> json) => _ShippingPriceTranslationInputFromJson(json);
}

/// Updates a new shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingPriceUpdate with _$ShippingPriceUpdate {
  const ShippingPriceUpdate._();

  /// Updates a new shipping price. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingPriceUpdate({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    ShippingMethodType? shippingMethod,
    /// A shipping zone to which the shipping method belongs.
    ShippingZone? shippingZone,
  }) = _ShippingPriceUpdate;

  factory ShippingPriceUpdate.fromJson(Map<String, Object?> json) => _ShippingPriceUpdateFromJson(json);
}

/// Event sent when shipping price is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingPriceUpdated with _$ShippingPriceUpdated {
  const ShippingPriceUpdated._();

  /// Event sent when shipping price is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingPriceUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The shipping method the event relates to.
    ShippingMethodType? shippingMethod,
    /// The shipping zone the shipping method belongs to.
    ShippingZone? shippingZone,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingPriceUpdated;

  factory ShippingPriceUpdated.fromJson(Map<String, Object?> json) => _ShippingPriceUpdatedFromJson(json);
}

/// Represents a shipping zone in the shop. Zones are the concept used only for grouping shipping methods in the dashboard, and are never exposed to the customers directly. 
@freezed
class ShippingZone with _$ShippingZone {
  const ShippingZone._();

  /// Represents a shipping zone in the shop. Zones are the concept used only for grouping shipping methods in the dashboard, and are never exposed to the customers directly. 
  const factory ShippingZone({
    /// List of channels for shipping zone.
    required List<Channel> channels,
    /// List of countries available for the method.
    required List<CountryDisplay> countries,
    required bool default,
    /// Description of a shipping zone.
    String? description,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// Lowest and highest prices for the shipping.
    MoneyRange? priceRange,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of shipping methods available for orders shipped to countries within this shipping zone.
    List<ShippingMethodType>? shippingMethods,
    /// List of warehouses for shipping zone.
    required List<Warehouse> warehouses,
  }) = _ShippingZone;

  factory ShippingZone.fromJson(Map<String, Object?> json) => _ShippingZoneFromJson(json);
}

/// Deletes shipping zones. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingZoneBulkDelete with _$ShippingZoneBulkDelete {
  const ShippingZoneBulkDelete._();

  /// Deletes shipping zones. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingZoneBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
  }) = _ShippingZoneBulkDelete;

  factory ShippingZoneBulkDelete.fromJson(Map<String, Object?> json) => _ShippingZoneBulkDeleteFromJson(json);
}

@freezed
class ShippingZoneCountableConnection with _$ShippingZoneCountableConnection {
  const ShippingZoneCountableConnection._();

  const factory ShippingZoneCountableConnection({
    required List<ShippingZoneCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _ShippingZoneCountableConnection;

  factory ShippingZoneCountableConnection.fromJson(Map<String, Object?> json) => _ShippingZoneCountableConnectionFromJson(json);
}

@freezed
class ShippingZoneCountableEdge with _$ShippingZoneCountableEdge {
  const ShippingZoneCountableEdge._();

  const factory ShippingZoneCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required ShippingZone node,
  }) = _ShippingZoneCountableEdge;

  factory ShippingZoneCountableEdge.fromJson(Map<String, Object?> json) => _ShippingZoneCountableEdgeFromJson(json);
}

/// Creates a new shipping zone. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingZoneCreate with _$ShippingZoneCreate {
  const ShippingZoneCreate._();

  /// Creates a new shipping zone. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingZoneCreate({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    ShippingZone? shippingZone,
  }) = _ShippingZoneCreate;

  factory ShippingZoneCreate.fromJson(Map<String, Object?> json) => _ShippingZoneCreateFromJson(json);
}

@unfreezed
class ShippingZoneCreateInput with _$ShippingZoneCreateInput {
  const ShippingZoneCreateInput._();

  const factory ShippingZoneCreateInput({
    /// List of channels to assign to the shipping zone.
    List<String>? addChannels,
    /// List of warehouses to assign to a shipping zone
    List<String>? addWarehouses,
    /// List of countries in this shipping zone.
    List<String>? countries,
    /// Default shipping zone will be used for countries not covered by other zones.
    bool? default,
    /// Description of the shipping zone.
    String? description,
    /// Shipping zone's name. Visible only to the staff.
    String? name,
  }) = _ShippingZoneCreateInput;

  factory ShippingZoneCreateInput.fromJson(Map<String, Object?> json) => _ShippingZoneCreateInputFromJson(json);
}

/// Event sent when new shipping zone is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingZoneCreated with _$ShippingZoneCreated {
  const ShippingZoneCreated._();

  /// Event sent when new shipping zone is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingZoneCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The shipping zone the event relates to.
    ShippingZone? shippingZone,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingZoneCreated;

  factory ShippingZoneCreated.fromJson(Map<String, Object?> json) => _ShippingZoneCreatedFromJson(json);
}

/// Deletes a shipping zone. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingZoneDelete with _$ShippingZoneDelete {
  const ShippingZoneDelete._();

  /// Deletes a shipping zone. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingZoneDelete({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    ShippingZone? shippingZone,
  }) = _ShippingZoneDelete;

  factory ShippingZoneDelete.fromJson(Map<String, Object?> json) => _ShippingZoneDeleteFromJson(json);
}

/// Event sent when shipping zone is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingZoneDeleted with _$ShippingZoneDeleted {
  const ShippingZoneDeleted._();

  /// Event sent when shipping zone is deleted.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingZoneDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The shipping zone the event relates to.
    ShippingZone? shippingZone,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingZoneDeleted;

  factory ShippingZoneDeleted.fromJson(Map<String, Object?> json) => _ShippingZoneDeletedFromJson(json);
}

@unfreezed
class ShippingZoneFilterInput with _$ShippingZoneFilterInput {
  const ShippingZoneFilterInput._();

  const factory ShippingZoneFilterInput({
    List<String>? channels,
    String? search,
  }) = _ShippingZoneFilterInput;

  factory ShippingZoneFilterInput.fromJson(Map<String, Object?> json) => _ShippingZoneFilterInputFromJson(json);
}

/// Updates a new shipping zone. 

Requires one of the following permissions: MANAGE_SHIPPING. 
@freezed
class ShippingZoneUpdate with _$ShippingZoneUpdate {
  const ShippingZoneUpdate._();

  /// Updates a new shipping zone. 

Requires one of the following permissions: MANAGE_SHIPPING. 
  const factory ShippingZoneUpdate({
    required List<ShippingError> errors,
    required List<ShippingError> shippingErrors,
    ShippingZone? shippingZone,
  }) = _ShippingZoneUpdate;

  factory ShippingZoneUpdate.fromJson(Map<String, Object?> json) => _ShippingZoneUpdateFromJson(json);
}

@unfreezed
class ShippingZoneUpdateInput with _$ShippingZoneUpdateInput {
  const ShippingZoneUpdateInput._();

  const factory ShippingZoneUpdateInput({
    /// List of channels to assign to the shipping zone.
    List<String>? addChannels,
    /// List of warehouses to assign to a shipping zone
    List<String>? addWarehouses,
    /// List of countries in this shipping zone.
    List<String>? countries,
    /// Default shipping zone will be used for countries not covered by other zones.
    bool? default,
    /// Description of the shipping zone.
    String? description,
    /// Shipping zone's name. Visible only to the staff.
    String? name,
    /// List of channels to unassign from the shipping zone.
    List<String>? removeChannels,
    /// List of warehouses to unassign from a shipping zone
    List<String>? removeWarehouses,
  }) = _ShippingZoneUpdateInput;

  factory ShippingZoneUpdateInput.fromJson(Map<String, Object?> json) => _ShippingZoneUpdateInputFromJson(json);
}

/// Event sent when shipping zone is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class ShippingZoneUpdated with _$ShippingZoneUpdated {
  const ShippingZoneUpdated._();

  /// Event sent when shipping zone is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory ShippingZoneUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The shipping zone the event relates to.
    ShippingZone? shippingZone,
    /// Saleor version that triggered the event.
    String? version,
  }) = _ShippingZoneUpdated;

  factory ShippingZoneUpdated.fromJson(Map<String, Object?> json) => _ShippingZoneUpdatedFromJson(json);
}

/// Represents a shop resource containing general shop data and configuration. 
@freezed
class Shop with _$Shop {
  const Shop._();

  /// Represents a shop resource containing general shop data and configuration. 
  const factory Shop({
    /// Enable automatic fulfillment for all digital products.

Requires one of the following permissions: MANAGE_SETTINGS.
    bool? automaticFulfillmentDigitalProducts,
    /// List of available external authentications.
    required List<ExternalAuthentication> availableExternalAuthentications,
    /// List of available payment gateways.
    required List<PaymentGateway> availablePaymentGateways,
    /// Shipping methods that are available for the shop.
    List<ShippingMethod>? availableShippingMethods,
    /// List of all currencies supported by shop's channels.

Added in Saleor 3.1.

Requires one of the following permissions: AUTHENTICATED_STAFF_USER, AUTHENTICATED_APP.
    required List<String> channelCurrencies,
    /// Charge taxes on shipping.
    required bool chargeTaxesOnShipping,
    /// Company address.
    Address? companyAddress,
    /// List of countries available in the shop.
    required List<CountryDisplay> countries,
    /// URL of a view where customers can set their password.
    String? customerSetPasswordUrl,
    /// Shop's default country.
    CountryDisplay? defaultCountry,
    /// Default number of max downloads per digital content URL.

Requires one of the following permissions: MANAGE_SETTINGS.
    int? defaultDigitalMaxDownloads,
    /// Default number of days which digital content URL will be valid.

Requires one of the following permissions: MANAGE_SETTINGS.
    int? defaultDigitalUrlValidDays,
    /// Default shop's email sender's address.

Requires one of the following permissions: MANAGE_SETTINGS.
    String? defaultMailSenderAddress,
    /// Default shop's email sender's name.

Requires one of the following permissions: MANAGE_SETTINGS.
    String? defaultMailSenderName,
    /// Default weight unit.
    WeightUnitsEnum? defaultWeightUnit,
    /// Shop's description.
    String? description,
    /// Display prices with tax in store.
    required bool displayGrossPrices,
    /// Shop's domain data.
    required Domain domain,
    /// Allow to approve fulfillments which are unpaid.

Added in Saleor 3.1.
    required bool fulfillmentAllowUnpaid,
    /// Automatically approve all new fulfillments.

Added in Saleor 3.1.
    required bool fulfillmentAutoApprove,
    /// Header text.
    String? headerText,
    /// Include taxes in prices.
    required bool includeTaxesInPrices,
    /// List of the shops's supported languages.
    required List<LanguageDisplay> languages,
    /// Default number of maximum line quantity in single checkout (per single checkout line).

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.

Requires one of the following permissions: MANAGE_SETTINGS.
    int? limitQuantityPerCheckout,
    /// Resource limitations and current usage if any set for a shop

Requires one of the following permissions: AUTHENTICATED_STAFF_USER.
    required LimitInfo limits,
    /// Shop's name.
    required String name,
    /// List of available permissions.
    required List<Permission> permissions,
    /// List of possible phone prefixes.
    required List<String> phonePrefixes,
    /// Default number of minutes stock will be reserved for anonymous checkout or null when stock reservation is disabled.

Added in Saleor 3.1.

Requires one of the following permissions: MANAGE_SETTINGS.
    int? reserveStockDurationAnonymousUser,
    /// Default number of minutes stock will be reserved for authenticated checkout or null when stock reservation is disabled.

Added in Saleor 3.1.

Requires one of the following permissions: MANAGE_SETTINGS.
    int? reserveStockDurationAuthenticatedUser,
    /// List of staff notification recipients.

Requires one of the following permissions: MANAGE_SETTINGS.
    List<StaffNotificationRecipient>? staffNotificationRecipients,
    /// Enable inventory tracking.
    bool? trackInventoryByDefault,
    /// Returns translated shop fields for the given language code.
    ShopTranslation? translation,
    /// Saleor API version.

Requires one of the following permissions: AUTHENTICATED_STAFF_USER, AUTHENTICATED_APP.
    required String version,
  }) = _Shop;

  factory Shop.fromJson(Map<String, Object?> json) => _ShopFromJson(json);
}

/// Update the shop's address. If the `null` value is passed, the currently selected address will be deleted. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class ShopAddressUpdate with _$ShopAddressUpdate {
  const ShopAddressUpdate._();

  /// Update the shop's address. If the `null` value is passed, the currently selected address will be deleted. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory ShopAddressUpdate({
    required List<ShopError> errors,
    /// Updated shop.
    Shop? shop,
    required List<ShopError> shopErrors,
  }) = _ShopAddressUpdate;

  factory ShopAddressUpdate.fromJson(Map<String, Object?> json) => _ShopAddressUpdateFromJson(json);
}

/// Updates site domain of the shop. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class ShopDomainUpdate with _$ShopDomainUpdate {
  const ShopDomainUpdate._();

  /// Updates site domain of the shop. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory ShopDomainUpdate({
    required List<ShopError> errors,
    /// Updated shop.
    Shop? shop,
    required List<ShopError> shopErrors,
  }) = _ShopDomainUpdate;

  factory ShopDomainUpdate.fromJson(Map<String, Object?> json) => _ShopDomainUpdateFromJson(json);
}

@freezed
class ShopError with _$ShopError {
  const ShopError._();

  const factory ShopError({
    /// The error code.
    required ShopErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _ShopError;

  factory ShopError.fromJson(Map<String, Object?> json) => _ShopErrorFromJson(json);
}

enum ShopErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: CANNOT_FETCH_TAX_RATES) cannot_fetch_tax_rates
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

/// Fetch tax rates. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class ShopFetchTaxRates with _$ShopFetchTaxRates {
  const ShopFetchTaxRates._();

  /// Fetch tax rates. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory ShopFetchTaxRates({
    required List<ShopError> errors,
    /// Updated shop.
    Shop? shop,
    required List<ShopError> shopErrors,
  }) = _ShopFetchTaxRates;

  factory ShopFetchTaxRates.fromJson(Map<String, Object?> json) => _ShopFetchTaxRatesFromJson(json);
}

@unfreezed
class ShopSettingsInput with _$ShopSettingsInput {
  const ShopSettingsInput._();

  const factory ShopSettingsInput({
    /// Enable automatic fulfillment for all digital products.
    bool? automaticFulfillmentDigitalProducts,
    /// Charge taxes on shipping.
    bool? chargeTaxesOnShipping,
    /// URL of a view where customers can set their password.
    String? customerSetPasswordUrl,
    /// Default number of max downloads per digital content URL.
    int? defaultDigitalMaxDownloads,
    /// Default number of days which digital content URL will be valid.
    int? defaultDigitalUrlValidDays,
    /// Default email sender's address.
    String? defaultMailSenderAddress,
    /// Default email sender's name.
    String? defaultMailSenderName,
    /// Default weight unit.
    WeightUnitsEnum? defaultWeightUnit,
    /// SEO description.
    String? description,
    /// Display prices with tax in store.
    bool? displayGrossPrices,
    /// Enable ability to approve fulfillments which are unpaid.

Added in Saleor 3.1.
    bool? fulfillmentAllowUnpaid,
    /// Enable automatic approval of all new fulfillments.

Added in Saleor 3.1.
    bool? fulfillmentAutoApprove,
    /// Header text.
    String? headerText,
    /// Include taxes in prices.
    bool? includeTaxesInPrices,
    /// Default number of maximum line quantity in single checkout. Minimum possible value is 1, default value is 50.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    int? limitQuantityPerCheckout,
    /// Default number of minutes stock will be reserved for anonymous checkout. Enter 0 or null to disable.

Added in Saleor 3.1.
    int? reserveStockDurationAnonymousUser,
    /// Default number of minutes stock will be reserved for authenticated checkout. Enter 0 or null to disable.

Added in Saleor 3.1.
    int? reserveStockDurationAuthenticatedUser,
    /// Enable inventory tracking.
    bool? trackInventoryByDefault,
  }) = _ShopSettingsInput;

  factory ShopSettingsInput.fromJson(Map<String, Object?> json) => _ShopSettingsInputFromJson(json);
}

/// Creates/updates translations for shop settings. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class ShopSettingsTranslate with _$ShopSettingsTranslate {
  const ShopSettingsTranslate._();

  /// Creates/updates translations for shop settings. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory ShopSettingsTranslate({
    required List<TranslationError> errors,
    /// Updated shop settings.
    Shop? shop,
    required List<TranslationError> translationErrors,
  }) = _ShopSettingsTranslate;

  factory ShopSettingsTranslate.fromJson(Map<String, Object?> json) => _ShopSettingsTranslateFromJson(json);
}

@unfreezed
class ShopSettingsTranslationInput with _$ShopSettingsTranslationInput {
  const ShopSettingsTranslationInput._();

  const factory ShopSettingsTranslationInput({
    String? description,
    String? headerText,
  }) = _ShopSettingsTranslationInput;

  factory ShopSettingsTranslationInput.fromJson(Map<String, Object?> json) => _ShopSettingsTranslationInputFromJson(json);
}

/// Updates shop settings. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class ShopSettingsUpdate with _$ShopSettingsUpdate {
  const ShopSettingsUpdate._();

  /// Updates shop settings. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory ShopSettingsUpdate({
    required List<ShopError> errors,
    /// Updated shop.
    Shop? shop,
    required List<ShopError> shopErrors,
  }) = _ShopSettingsUpdate;

  factory ShopSettingsUpdate.fromJson(Map<String, Object?> json) => _ShopSettingsUpdateFromJson(json);
}

@freezed
class ShopTranslation with _$ShopTranslation {
  const ShopTranslation._();

  const factory ShopTranslation({
    required String description,
    required String headerText,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
  }) = _ShopTranslation;

  factory ShopTranslation.fromJson(Map<String, Object?> json) => _ShopTranslationFromJson(json);
}

@unfreezed
class SiteDomainInput with _$SiteDomainInput {
  const SiteDomainInput._();

  const factory SiteDomainInput({
    /// Domain name for shop.
    String? domain,
    /// Shop site name.
    String? name,
  }) = _SiteDomainInput;

  factory SiteDomainInput.fromJson(Map<String, Object?> json) => _SiteDomainInputFromJson(json);
}

/// Deletes staff users. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class StaffBulkDelete with _$StaffBulkDelete {
  const StaffBulkDelete._();

  /// Deletes staff users. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory StaffBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<StaffError> errors,
    required List<StaffError> staffErrors,
  }) = _StaffBulkDelete;

  factory StaffBulkDelete.fromJson(Map<String, Object?> json) => _StaffBulkDeleteFromJson(json);
}

/// Creates a new staff user. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class StaffCreate with _$StaffCreate {
  const StaffCreate._();

  /// Creates a new staff user. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory StaffCreate({
    required List<StaffError> errors,
    required List<StaffError> staffErrors,
    User? user,
  }) = _StaffCreate;

  factory StaffCreate.fromJson(Map<String, Object?> json) => _StaffCreateFromJson(json);
}

@unfreezed
class StaffCreateInput with _$StaffCreateInput {
  const StaffCreateInput._();

  const factory StaffCreateInput({
    /// List of permission group IDs to which user should be assigned.
    List<String>? addGroups,
    /// The unique email address of the user.
    String? email,
    /// Given name.
    String? firstName,
    /// User account is active.
    bool? isActive,
    /// Family name.
    String? lastName,
    /// A note about the user.
    String? note,
    /// URL of a view where users should be redirected to set the password. URL in RFC 1808 format.
    String? redirectUrl,
  }) = _StaffCreateInput;

  factory StaffCreateInput.fromJson(Map<String, Object?> json) => _StaffCreateInputFromJson(json);
}

/// Event sent when new staff user is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class StaffCreated with _$StaffCreated {
  const StaffCreated._();

  /// Event sent when new staff user is created.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory StaffCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The user the event relates to.
    User? user,
    /// Saleor version that triggered the event.
    String? version,
  }) = _StaffCreated;

  factory StaffCreated.fromJson(Map<String, Object?> json) => _StaffCreatedFromJson(json);
}

/// Deletes a staff user. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class StaffDelete with _$StaffDelete {
  const StaffDelete._();

  /// Deletes a staff user. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory StaffDelete({
    required List<StaffError> errors,
    required List<StaffError> staffErrors,
    User? user,
  }) = _StaffDelete;

  factory StaffDelete.fromJson(Map<String, Object?> json) => _StaffDeleteFromJson(json);
}

/// Event sent when staff user is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class StaffDeleted with _$StaffDeleted {
  const StaffDeleted._();

  /// Event sent when staff user is deleted.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory StaffDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The user the event relates to.
    User? user,
    /// Saleor version that triggered the event.
    String? version,
  }) = _StaffDeleted;

  factory StaffDeleted.fromJson(Map<String, Object?> json) => _StaffDeletedFromJson(json);
}

@freezed
class StaffError with _$StaffError {
  const StaffError._();

  const factory StaffError({
    /// A type of address that causes the error.
    AddressTypeEnum? addressType,
    /// The error code.
    required AccountErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// List of permission group IDs which cause the error.
    List<String>? groups,
    /// The error message.
    String? message,
    /// List of permissions which causes the error.
    List<PermissionEnum>? permissions,
    /// List of user IDs which causes the error.
    List<String>? users,
  }) = _StaffError;

  factory StaffError.fromJson(Map<String, Object?> json) => _StaffErrorFromJson(json);
}

enum StaffMemberStatus{
  /// User account has been activated. 
@JsonKey(name: ACTIVE) active
  /// User account has not been activated yet. 
@JsonKey(name: DEACTIVATED) deactivated
}

/// Represents a recipient of email notifications send by Saleor, such as notifications about new orders. Notifications can be assigned to staff users or arbitrary email addresses. 
@freezed
class StaffNotificationRecipient with _$StaffNotificationRecipient {
  const StaffNotificationRecipient._();

  /// Represents a recipient of email notifications send by Saleor, such as notifications about new orders. Notifications can be assigned to staff users or arbitrary email addresses. 
  const factory StaffNotificationRecipient({
    /// Determines if a notification active.
    bool? active,
    /// Returns email address of a user subscribed to email notifications.
    String? email,
    required String id,
    /// Returns a user subscribed to email notifications.
    User? user,
  }) = _StaffNotificationRecipient;

  factory StaffNotificationRecipient.fromJson(Map<String, Object?> json) => _StaffNotificationRecipientFromJson(json);
}

/// Creates a new staff notification recipient. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class StaffNotificationRecipientCreate with _$StaffNotificationRecipientCreate {
  const StaffNotificationRecipientCreate._();

  /// Creates a new staff notification recipient. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory StaffNotificationRecipientCreate({
    required List<ShopError> errors,
    required List<ShopError> shopErrors,
    StaffNotificationRecipient? staffNotificationRecipient,
  }) = _StaffNotificationRecipientCreate;

  factory StaffNotificationRecipientCreate.fromJson(Map<String, Object?> json) => _StaffNotificationRecipientCreateFromJson(json);
}

/// Delete staff notification recipient. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class StaffNotificationRecipientDelete with _$StaffNotificationRecipientDelete {
  const StaffNotificationRecipientDelete._();

  /// Delete staff notification recipient. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory StaffNotificationRecipientDelete({
    required List<ShopError> errors,
    required List<ShopError> shopErrors,
    StaffNotificationRecipient? staffNotificationRecipient,
  }) = _StaffNotificationRecipientDelete;

  factory StaffNotificationRecipientDelete.fromJson(Map<String, Object?> json) => _StaffNotificationRecipientDeleteFromJson(json);
}

@unfreezed
class StaffNotificationRecipientInput with _$StaffNotificationRecipientInput {
  const StaffNotificationRecipientInput._();

  const factory StaffNotificationRecipientInput({
    /// Determines if a notification active.
    bool? active,
    /// Email address of a user subscribed to email notifications.
    String? email,
    /// The ID of the user subscribed to email notifications..
    String? user,
  }) = _StaffNotificationRecipientInput;

  factory StaffNotificationRecipientInput.fromJson(Map<String, Object?> json) => _StaffNotificationRecipientInputFromJson(json);
}

/// Updates a staff notification recipient. 

Requires one of the following permissions: MANAGE_SETTINGS. 
@freezed
class StaffNotificationRecipientUpdate with _$StaffNotificationRecipientUpdate {
  const StaffNotificationRecipientUpdate._();

  /// Updates a staff notification recipient. 

Requires one of the following permissions: MANAGE_SETTINGS. 
  const factory StaffNotificationRecipientUpdate({
    required List<ShopError> errors,
    required List<ShopError> shopErrors,
    StaffNotificationRecipient? staffNotificationRecipient,
  }) = _StaffNotificationRecipientUpdate;

  factory StaffNotificationRecipientUpdate.fromJson(Map<String, Object?> json) => _StaffNotificationRecipientUpdateFromJson(json);
}

/// Updates an existing staff user. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
@freezed
class StaffUpdate with _$StaffUpdate {
  const StaffUpdate._();

  /// Updates an existing staff user. Apps are not allowed to perform this mutation. 

Requires one of the following permissions: MANAGE_STAFF. 
  const factory StaffUpdate({
    required List<StaffError> errors,
    required List<StaffError> staffErrors,
    User? user,
  }) = _StaffUpdate;

  factory StaffUpdate.fromJson(Map<String, Object?> json) => _StaffUpdateFromJson(json);
}

@unfreezed
class StaffUpdateInput with _$StaffUpdateInput {
  const StaffUpdateInput._();

  const factory StaffUpdateInput({
    /// List of permission group IDs to which user should be assigned.
    List<String>? addGroups,
    /// The unique email address of the user.
    String? email,
    /// Given name.
    String? firstName,
    /// User account is active.
    bool? isActive,
    /// Family name.
    String? lastName,
    /// A note about the user.
    String? note,
    /// List of permission group IDs from which user should be unassigned.
    List<String>? removeGroups,
  }) = _StaffUpdateInput;

  factory StaffUpdateInput.fromJson(Map<String, Object?> json) => _StaffUpdateInputFromJson(json);
}

/// Event sent when staff user is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class StaffUpdated with _$StaffUpdated {
  const StaffUpdated._();

  /// Event sent when staff user is updated.

Added in Saleor 3.5.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory StaffUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The user the event relates to.
    User? user,
    /// Saleor version that triggered the event.
    String? version,
  }) = _StaffUpdated;

  factory StaffUpdated.fromJson(Map<String, Object?> json) => _StaffUpdatedFromJson(json);
}

@unfreezed
class StaffUserInput with _$StaffUserInput {
  const StaffUserInput._();

  const factory StaffUserInput({
    List<String>? ids,
    String? search,
    StaffMemberStatus? status,
  }) = _StaffUserInput;

  factory StaffUserInput.fromJson(Map<String, Object?> json) => _StaffUserInputFromJson(json);
}

/// Represents stock. 
@freezed
class Stock with _$Stock {
  const Stock._();

  /// Represents stock. 
  const factory Stock({
    required String id,
    required ProductVariant productVariant,
    /// Quantity of a product in the warehouse's possession, including the allocated stock that is waiting for shipment.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    required int quantity,
    /// Quantity allocated for orders.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    required int quantityAllocated,
    /// Quantity reserved for checkouts.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    required int quantityReserved,
    required Warehouse warehouse,
  }) = _Stock;

  factory Stock.fromJson(Map<String, Object?> json) => _StockFromJson(json);
}

enum StockAvailability{
  @JsonKey(name: IN_STOCK) in_stock
  @JsonKey(name: OUT_OF_STOCK) out_of_stock
}

@freezed
class StockCountableConnection with _$StockCountableConnection {
  const StockCountableConnection._();

  const factory StockCountableConnection({
    required List<StockCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _StockCountableConnection;

  factory StockCountableConnection.fromJson(Map<String, Object?> json) => _StockCountableConnectionFromJson(json);
}

@freezed
class StockCountableEdge with _$StockCountableEdge {
  const StockCountableEdge._();

  const factory StockCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Stock node,
  }) = _StockCountableEdge;

  factory StockCountableEdge.fromJson(Map<String, Object?> json) => _StockCountableEdgeFromJson(json);
}

@freezed
class StockError with _$StockError {
  const StockError._();

  const factory StockError({
    /// The error code.
    required StockErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _StockError;

  factory StockError.fromJson(Map<String, Object?> json) => _StockErrorFromJson(json);
}

enum StockErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class StockFilterInput with _$StockFilterInput {
  const StockFilterInput._();

  const factory StockFilterInput({
    double? quantity,
    String? search,
  }) = _StockFilterInput;

  factory StockFilterInput.fromJson(Map<String, Object?> json) => _StockFilterInputFromJson(json);
}

@unfreezed
class StockInput with _$StockInput {
  const StockInput._();

  const factory StockInput({
    /// Quantity of items available for sell.
    required int quantity,
    /// Warehouse in which stock is located.
    required String warehouse,
  }) = _StockInput;

  factory StockInput.fromJson(Map<String, Object?> json) => _StockInputFromJson(json);
}

/// Represents the channel stock settings.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class StockSettings with _$StockSettings {
  const StockSettings._();

  /// Represents the channel stock settings.

Added in Saleor 3.7.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory StockSettings({
    /// Allocation strategy defines the preference of warehouses for allocations and reservations.
    required AllocationStrategyEnum allocationStrategy,
  }) = _StockSettings;

  factory StockSettings.fromJson(Map<String, Object?> json) => _StockSettingsFromJson(json);
}

@unfreezed
class StockSettingsInput with _$StockSettingsInput {
  const StockSettingsInput._();

  const factory StockSettingsInput({
    /// Allocation strategy options. Strategy defines the preference of warehouses for allocations and reservations.
    required AllocationStrategyEnum allocationStrategy,
  }) = _StockSettingsInput;

  factory StockSettingsInput.fromJson(Map<String, Object?> json) => _StockSettingsInputFromJson(json);
}

enum StorePaymentMethodEnum{
  /// Storage is disabled. The payment is not stored. 
@JsonKey(name: NONE) none
  /// Off session storage type. The payment is stored to be reused even if the customer is absent. 
@JsonKey(name: OFF_SESSION) off_session
  /// On session storage type. The payment is stored only to be reused when the customer is present in the checkout flow. 
@JsonKey(name: ON_SESSION) on_session
}

/// Representation of tax types fetched from tax gateway. 
@freezed
class TaxType with _$TaxType {
  const TaxType._();

  /// Representation of tax types fetched from tax gateway. 
  const factory TaxType({
    /// Description of the tax type.
    String? description,
    /// External tax code used to identify given tax group.
    String? taxCode,
  }) = _TaxType;

  factory TaxType.fromJson(Map<String, Object?> json) => _TaxTypeFromJson(json);
}

/// Represents a monetary value with taxes. In cases where taxes were not applied, net and gross values will be equal. 
@freezed
class TaxedMoney with _$TaxedMoney {
  const TaxedMoney._();

  /// Represents a monetary value with taxes. In cases where taxes were not applied, net and gross values will be equal. 
  const factory TaxedMoney({
    /// Currency code.
    required String currency,
    /// Amount of money including taxes.
    required Money gross,
    /// Amount of money without taxes.
    required Money net,
    /// Amount of taxes.
    required Money tax,
  }) = _TaxedMoney;

  factory TaxedMoney.fromJson(Map<String, Object?> json) => _TaxedMoneyFromJson(json);
}

/// Represents a range of monetary values. 
@freezed
class TaxedMoneyRange with _$TaxedMoneyRange {
  const TaxedMoneyRange._();

  /// Represents a range of monetary values. 
  const factory TaxedMoneyRange({
    /// Lower bound of a price range.
    TaxedMoney? start,
    /// Upper bound of a price range.
    TaxedMoney? stop,
  }) = _TaxedMoneyRange;

  factory TaxedMoneyRange.fromJson(Map<String, Object?> json) => _TaxedMoneyRangeFromJson(json);
}

enum ThumbnailFormatEnum{
  @JsonKey(name: WEBP) webp
}

@freezed
class TimePeriod with _$TimePeriod {
  const TimePeriod._();

  const factory TimePeriod({
    /// The length of the period.
    required int amount,
    /// The type of the period.
    required TimePeriodTypeEnum type,
  }) = _TimePeriod;

  factory TimePeriod.fromJson(Map<String, Object?> json) => _TimePeriodFromJson(json);
}

@unfreezed
class TimePeriodInputType with _$TimePeriodInputType {
  const TimePeriodInputType._();

  const factory TimePeriodInputType({
    /// The length of the period.
    required int amount,
    /// The type of the period.
    required TimePeriodTypeEnum type,
  }) = _TimePeriodInputType;

  factory TimePeriodInputType.fromJson(Map<String, Object?> json) => _TimePeriodInputTypeFromJson(json);
}

enum TimePeriodTypeEnum{
  @JsonKey(name: DAY) day
  @JsonKey(name: MONTH) month
  @JsonKey(name: WEEK) week
  @JsonKey(name: YEAR) year
}

/// An object representing a single payment. 
@freezed
class Transaction with _$Transaction {
  const Transaction._();

  /// An object representing a single payment. 
  const factory Transaction({
    /// Total amount of the transaction.
    Money? amount,
    required DateTime created,
    String? error,
    required JSONString gatewayResponse,
    required String id,
    required bool isSuccess,
    required TransactionKind kind,
    required Payment payment,
    required String token,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, Object?> json) => _TransactionFromJson(json);
}

@freezed
class TransactionAction with _$TransactionAction {
  const TransactionAction._();

  const factory TransactionAction({
    /// Determines the action type.
    required TransactionActionEnum actionType,
    /// Transaction request amount. Null when action type is VOID.
    PositiveDecimal? amount,
  }) = _TransactionAction;

  factory TransactionAction.fromJson(Map<String, Object?> json) => _TransactionActionFromJson(json);
}

enum TransactionActionEnum{
  @JsonKey(name: CHARGE) charge
  @JsonKey(name: REFUND) refund
  @JsonKey(name: VOID) void
}

/// Event sent when transaction action is requested.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class TransactionActionRequest with _$TransactionActionRequest {
  const TransactionActionRequest._();

  /// Event sent when transaction action is requested.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory TransactionActionRequest({
    /// Requested action data.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required TransactionAction action,
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Look up a transaction.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    TransactionItem? transaction,
    /// Saleor version that triggered the event.
    String? version,
  }) = _TransactionActionRequest;

  factory TransactionActionRequest.fromJson(Map<String, Object?> json) => _TransactionActionRequestFromJson(json);
}

/// Create transaction for checkout or order. Requires the following permissions: AUTHENTICATED_APP and HANDLE_PAYMENTS.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class TransactionCreate with _$TransactionCreate {
  const TransactionCreate._();

  /// Create transaction for checkout or order. Requires the following permissions: AUTHENTICATED_APP and HANDLE_PAYMENTS.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory TransactionCreate({
    required List<TransactionCreateError> errors,
    TransactionItem? transaction,
  }) = _TransactionCreate;

  factory TransactionCreate.fromJson(Map<String, Object?> json) => _TransactionCreateFromJson(json);
}

@freezed
class TransactionCreateError with _$TransactionCreateError {
  const TransactionCreateError._();

  const factory TransactionCreateError({
    /// The error code.
    required TransactionCreateErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _TransactionCreateError;

  factory TransactionCreateError.fromJson(Map<String, Object?> json) => _TransactionCreateErrorFromJson(json);
}

enum TransactionCreateErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INCORRECT_CURRENCY) incorrect_currency
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: METADATA_KEY_REQUIRED) metadata_key_required
  @JsonKey(name: NOT_FOUND) not_found
}

@unfreezed
class TransactionCreateInput with _$TransactionCreateInput {
  const TransactionCreateInput._();

  const factory TransactionCreateInput({
    /// Amount authorized by this transaction.
    MoneyInput? amountAuthorized,
    /// Amount charged by this transaction.
    MoneyInput? amountCharged,
    /// Amount refunded by this transaction.
    MoneyInput? amountRefunded,
    /// Amount voided by this transaction.
    MoneyInput? amountVoided,
    /// List of all possible actions for the transaction
    List<TransactionActionEnum>? availableActions,
    /// Payment public metadata.
    List<MetadataInput>? metadata,
    /// Payment private metadata.
    List<MetadataInput>? privateMetadata,
    /// Reference of the transaction.
    String? reference,
    /// Status of the transaction.
    required String status,
    /// Payment type used for this transaction.
    required String type,
  }) = _TransactionCreateInput;

  factory TransactionCreateInput.fromJson(Map<String, Object?> json) => _TransactionCreateInputFromJson(json);
}

/// Represents transaction's event. 
@freezed
class TransactionEvent with _$TransactionEvent {
  const TransactionEvent._();

  /// Represents transaction's event. 
  const factory TransactionEvent({
    required DateTime createdAt,
    /// The ID of the object.
    required String id,
    /// Name of the transaction's event.
    String? name,
    /// Reference of transaction's event.
    required String reference,
    /// Status of transaction's event.
    required TransactionStatus status,
  }) = _TransactionEvent;

  factory TransactionEvent.fromJson(Map<String, Object?> json) => _TransactionEventFromJson(json);
}

@unfreezed
class TransactionEventInput with _$TransactionEventInput {
  const TransactionEventInput._();

  const factory TransactionEventInput({
    /// Name of the transaction.
    String? name,
    /// Reference of the transaction.
    String? reference,
    /// Current status of the payment transaction.
    required TransactionStatus status,
  }) = _TransactionEventInput;

  factory TransactionEventInput.fromJson(Map<String, Object?> json) => _TransactionEventInputFromJson(json);
}

/// Represents a payment transaction.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class TransactionItem with _$TransactionItem {
  const TransactionItem._();

  /// Represents a payment transaction.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory TransactionItem({
    /// List of actions that can be performed in the current state of a payment.
    required List<TransactionActionEnum> actions,
    /// Total amount authorized for this payment.
    required Money authorizedAmount,
    /// Total amount charged for this payment.
    required Money chargedAmount,
    required DateTime createdAt,
    /// List of all transaction's events.
    required List<TransactionEvent> events,
    /// The ID of the object.
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required DateTime modifiedAt,
    /// The related order.

Added in Saleor 3.6.
    Order? order,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Reference of transaction.
    required String reference,
    /// Total amount refunded for this payment.
    required Money refundedAmount,
    /// Status of transaction.
    required String status,
    /// Type of transaction.
    required String type,
    /// Total amount voided for this payment.
    required Money voidedAmount,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, Object?> json) => _TransactionItemFromJson(json);
}

enum TransactionKind{
  @JsonKey(name: ACTION_TO_CONFIRM) action_to_confirm
  @JsonKey(name: AUTH) auth
  @JsonKey(name: CANCEL) cancel
  @JsonKey(name: CAPTURE) capture
  @JsonKey(name: CONFIRM) confirm
  @JsonKey(name: EXTERNAL) external
  @JsonKey(name: PENDING) pending
  @JsonKey(name: REFUND) refund
  @JsonKey(name: REFUND_ONGOING) refund_ongoing
  @JsonKey(name: VOID) void
}

/// Request an action for payment transaction.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: HANDLE_PAYMENTS, MANAGE_ORDERS. 
@freezed
class TransactionRequestAction with _$TransactionRequestAction {
  const TransactionRequestAction._();

  /// Request an action for payment transaction.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 

Requires one of the following permissions: HANDLE_PAYMENTS, MANAGE_ORDERS. 
  const factory TransactionRequestAction({
    required List<TransactionRequestActionError> errors,
    TransactionItem? transaction,
  }) = _TransactionRequestAction;

  factory TransactionRequestAction.fromJson(Map<String, Object?> json) => _TransactionRequestActionFromJson(json);
}

@freezed
class TransactionRequestActionError with _$TransactionRequestActionError {
  const TransactionRequestActionError._();

  const factory TransactionRequestActionError({
    /// The error code.
    required TransactionRequestActionErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _TransactionRequestActionError;

  factory TransactionRequestActionError.fromJson(Map<String, Object?> json) => _TransactionRequestActionErrorFromJson(json);
}

enum TransactionRequestActionErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: MISSING_TRANSACTION_ACTION_REQUEST_WEBHOOK) missing_transaction_action_request_webhook
  @JsonKey(name: NOT_FOUND) not_found
}

enum TransactionStatus{
  @JsonKey(name: FAILURE) failure
  @JsonKey(name: PENDING) pending
  @JsonKey(name: SUCCESS) success
}

/// Create transaction for checkout or order. Requires the following permissions: AUTHENTICATED_APP and HANDLE_PAYMENTS.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class TransactionUpdate with _$TransactionUpdate {
  const TransactionUpdate._();

  /// Create transaction for checkout or order. Requires the following permissions: AUTHENTICATED_APP and HANDLE_PAYMENTS.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory TransactionUpdate({
    required List<TransactionUpdateError> errors,
    TransactionItem? transaction,
  }) = _TransactionUpdate;

  factory TransactionUpdate.fromJson(Map<String, Object?> json) => _TransactionUpdateFromJson(json);
}

@freezed
class TransactionUpdateError with _$TransactionUpdateError {
  const TransactionUpdateError._();

  const factory TransactionUpdateError({
    /// The error code.
    required TransactionUpdateErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _TransactionUpdateError;

  factory TransactionUpdateError.fromJson(Map<String, Object?> json) => _TransactionUpdateErrorFromJson(json);
}

enum TransactionUpdateErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INCORRECT_CURRENCY) incorrect_currency
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: METADATA_KEY_REQUIRED) metadata_key_required
  @JsonKey(name: NOT_FOUND) not_found
}

@unfreezed
class TransactionUpdateInput with _$TransactionUpdateInput {
  const TransactionUpdateInput._();

  const factory TransactionUpdateInput({
    /// Amount authorized by this transaction.
    MoneyInput? amountAuthorized,
    /// Amount charged by this transaction.
    MoneyInput? amountCharged,
    /// Amount refunded by this transaction.
    MoneyInput? amountRefunded,
    /// Amount voided by this transaction.
    MoneyInput? amountVoided,
    /// List of all possible actions for the transaction
    List<TransactionActionEnum>? availableActions,
    /// Payment public metadata.
    List<MetadataInput>? metadata,
    /// Payment private metadata.
    List<MetadataInput>? privateMetadata,
    /// Reference of the transaction.
    String? reference,
    /// Status of the transaction.
    String? status,
    /// Payment type used for this transaction.
    String? type,
  }) = _TransactionUpdateInput;

  factory TransactionUpdateInput.fromJson(Map<String, Object?> json) => _TransactionUpdateInputFromJson(json);
}

@freezed
class TranslatableItem with _$TranslatableItem {
  const TranslatableItem._();

  const factory TranslatableItem() = _TranslatableItem;

  const factory TranslatableItem.attributeTranslatableContent({
    /// Custom attribute of a product.
    Attribute? attribute,
    required String id,
    required String name,
    /// Returns translated attribute fields for the given language code.
    AttributeTranslation? translation,
  }) = AttributeTranslatableContent;

  const factory TranslatableItem.attributeValueTranslatableContent({
    /// Represents a value of an attribute.
    AttributeValue? attributeValue,
    required String id,
    required String name,
    /// Attribute plain text value.
    String? plainText,
    /// Attribute value.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
    /// Returns translated attribute value fields for the given language code.
    AttributeValueTranslation? translation,
  }) = AttributeValueTranslatableContent;

  const factory TranslatableItem.categoryTranslatableContent({
    /// Represents a single category of products.
    Category? category,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required String name,
    String? seoDescription,
    String? seoTitle,
    /// Returns translated category fields for the given language code.
    CategoryTranslation? translation,
  }) = CategoryTranslatableContent;

  const factory TranslatableItem.collectionTranslatableContent({
    /// Represents a collection of products.
    Collection? collection,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required String name,
    String? seoDescription,
    String? seoTitle,
    /// Returns translated collection fields for the given language code.
    CollectionTranslation? translation,
  }) = CollectionTranslatableContent;

  const factory TranslatableItem.menuItemTranslatableContent({
    required String id,
    /// Represents a single item of the related menu. Can store categories, collection or pages.
    MenuItem? menuItem,
    required String name,
    /// Returns translated menu item fields for the given language code.
    MenuItemTranslation? translation,
  }) = MenuItemTranslatableContent;

  const factory TranslatableItem.pageTranslatableContent({
    /// List of page content attribute values that can be translated.
    required List<AttributeValueTranslatableContent> attributeValues,
    /// Content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? contentJson,
    required String id,
    /// A static page that can be manually added by a shop operator through the dashboard.
    Page? page,
    String? seoDescription,
    String? seoTitle,
    required String title,
    /// Returns translated page fields for the given language code.
    PageTranslation? translation,
  }) = PageTranslatableContent;

  const factory TranslatableItem.productTranslatableContent({
    /// List of product attribute values that can be translated.
    required List<AttributeValueTranslatableContent> attributeValues,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required String name,
    /// Represents an individual item for sale in the storefront.
    Product? product,
    String? seoDescription,
    String? seoTitle,
    /// Returns translated product fields for the given language code.
    ProductTranslation? translation,
  }) = ProductTranslatableContent;

  const factory TranslatableItem.productVariantTranslatableContent({
    /// List of product variant attribute values that can be translated.
    required List<AttributeValueTranslatableContent> attributeValues,
    required String id,
    required String name,
    /// Represents a version of a product such as different size or color.
    ProductVariant? productVariant,
    /// Returns translated product variant fields for the given language code.
    ProductVariantTranslation? translation,
  }) = ProductVariantTranslatableContent;

  const factory TranslatableItem.saleTranslatableContent({
    required String id,
    required String name,
    /// Sales allow creating discounts for categories, collections or products and are visible to all the customers.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    Sale? sale,
    /// Returns translated sale fields for the given language code.
    SaleTranslation? translation,
  }) = SaleTranslatableContent;

  const factory TranslatableItem.shippingMethodTranslatableContent({
    /// Description of the shipping method.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    required String id,
    required String name,
    /// Shipping method are the methods you'll use to get customer's orders  to them. They are directly exposed to the customers.

Requires one of the following permissions: MANAGE_SHIPPING.
    ShippingMethodType? shippingMethod,
    /// Returns translated shipping method fields for the given language code.
    ShippingMethodTranslation? translation,
  }) = ShippingMethodTranslatableContent;

  const factory TranslatableItem.voucherTranslatableContent({
    required String id,
    String? name,
    /// Returns translated voucher fields for the given language code.
    VoucherTranslation? translation,
    /// Vouchers allow giving discounts to particular customers on categories, collections or specific products. They can be used during checkout by providing valid voucher codes.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    Voucher? voucher,
  }) = VoucherTranslatableContent;

  factory TranslatableItem.fromJson(Map<String, Object?> json) => _TranslatableItemFromJson(json);
}

@freezed
class TranslatableItemConnection with _$TranslatableItemConnection {
  const TranslatableItemConnection._();

  const factory TranslatableItemConnection({
    required List<TranslatableItemEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _TranslatableItemConnection;

  factory TranslatableItemConnection.fromJson(Map<String, Object?> json) => _TranslatableItemConnectionFromJson(json);
}

@freezed
class TranslatableItemEdge with _$TranslatableItemEdge {
  const TranslatableItemEdge._();

  const factory TranslatableItemEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required TranslatableItem node,
  }) = _TranslatableItemEdge;

  factory TranslatableItemEdge.fromJson(Map<String, Object?> json) => _TranslatableItemEdgeFromJson(json);
}

enum TranslatableKinds{
  @JsonKey(name: ATTRIBUTE) attribute
  @JsonKey(name: ATTRIBUTE_VALUE) attribute_value
  @JsonKey(name: CATEGORY) category
  @JsonKey(name: COLLECTION) collection
  @JsonKey(name: MENU_ITEM) menu_item
  @JsonKey(name: PAGE) page
  @JsonKey(name: PRODUCT) product
  @JsonKey(name: SALE) sale
  @JsonKey(name: SHIPPING_METHOD) shipping_method
  @JsonKey(name: VARIANT) variant
  @JsonKey(name: VOUCHER) voucher
}

/// Event sent when new translation is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class TranslationCreated with _$TranslationCreated {
  const TranslationCreated._();

  /// Event sent when new translation is created.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory TranslationCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The translation the event relates to.
    TranslationTypes? translation,
    /// Saleor version that triggered the event.
    String? version,
  }) = _TranslationCreated;

  factory TranslationCreated.fromJson(Map<String, Object?> json) => _TranslationCreatedFromJson(json);
}

@freezed
class TranslationError with _$TranslationError {
  const TranslationError._();

  const factory TranslationError({
    /// The error code.
    required TranslationErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _TranslationError;

  factory TranslationError.fromJson(Map<String, Object?> json) => _TranslationErrorFromJson(json);
}

enum TranslationErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
}

@unfreezed
class TranslationInput with _$TranslationInput {
  const TranslationInput._();

  const factory TranslationInput({
    /// Translated description.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = _TranslationInput;

  factory TranslationInput.fromJson(Map<String, Object?> json) => _TranslationInputFromJson(json);
}

@freezed
class TranslationTypes with _$TranslationTypes {
  const TranslationTypes._();

  const factory TranslationTypes() = _TranslationTypes;

  const factory TranslationTypes.attributeTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
  }) = AttributeTranslation;

  const factory TranslationTypes.attributeValueTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
    /// Attribute plain text value.
    String? plainText,
    /// Attribute value.

Rich text format. For reference see https://editorjs.io/
    JSONString? richText,
  }) = AttributeValueTranslation;

  const factory TranslationTypes.categoryTranslation({
    /// Translated description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Translated description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = CategoryTranslation;

  const factory TranslationTypes.collectionTranslation({
    /// Translated description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Translated description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = CollectionTranslation;

  const factory TranslationTypes.menuItemTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
  }) = MenuItemTranslation;

  const factory TranslationTypes.pageTranslation({
    /// Translated content of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? content,
    /// Translated description of the page.

Rich text format. For reference see https://editorjs.io/
    JSONString? contentJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? seoDescription,
    String? seoTitle,
    String? title,
  }) = PageTranslation;

  const factory TranslationTypes.productTranslation({
    /// Translated description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Translated description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
    String? seoDescription,
    String? seoTitle,
  }) = ProductTranslation;

  const factory TranslationTypes.productVariantTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    required String name,
  }) = ProductVariantTranslation;

  const factory TranslationTypes.saleTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
  }) = SaleTranslation;

  const factory TranslationTypes.shippingMethodTranslation({
    /// Translated description of the shipping method.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
  }) = ShippingMethodTranslation;

  const factory TranslationTypes.voucherTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
  }) = VoucherTranslation;

  factory TranslationTypes.fromJson(Map<String, Object?> json) => _TranslationTypesFromJson(json);
}

/// Event sent when translation is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class TranslationUpdated with _$TranslationUpdated {
  const TranslationUpdated._();

  /// Event sent when translation is updated.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory TranslationUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// The translation the event relates to.
    TranslationTypes? translation,
    /// Saleor version that triggered the event.
    String? version,
  }) = _TranslationUpdated;

  factory TranslationUpdated.fromJson(Map<String, Object?> json) => _TranslationUpdatedFromJson(json);
}

@unfreezed
class UpdateInvoiceInput with _$UpdateInvoiceInput {
  const UpdateInvoiceInput._();

  const factory UpdateInvoiceInput({
    /// Invoice number
    String? number,
    /// URL of an invoice to download.
    String? url,
  }) = _UpdateInvoiceInput;

  factory UpdateInvoiceInput.fromJson(Map<String, Object?> json) => _UpdateInvoiceInputFromJson(json);
}

/// Updates metadata of an object. To use it, you need to have access to the modified object. 
@freezed
class UpdateMetadata with _$UpdateMetadata {
  const UpdateMetadata._();

  /// Updates metadata of an object. To use it, you need to have access to the modified object. 
  const factory UpdateMetadata({
    required List<MetadataError> errors,
    ObjectWithMetadata? item,
    required List<MetadataError> metadataErrors,
  }) = _UpdateMetadata;

  factory UpdateMetadata.fromJson(Map<String, Object?> json) => _UpdateMetadataFromJson(json);
}

/// Updates private metadata of an object. To use it, you need to be an authenticated staff user or an app and have access to the modified object. 
@freezed
class UpdatePrivateMetadata with _$UpdatePrivateMetadata {
  const UpdatePrivateMetadata._();

  /// Updates private metadata of an object. To use it, you need to be an authenticated staff user or an app and have access to the modified object. 
  const factory UpdatePrivateMetadata({
    required List<MetadataError> errors,
    ObjectWithMetadata? item,
    required List<MetadataError> metadataErrors,
  }) = _UpdatePrivateMetadata;

  factory UpdatePrivateMetadata.fromJson(Map<String, Object?> json) => _UpdatePrivateMetadataFromJson(json);
}

@freezed
class UploadError with _$UploadError {
  const UploadError._();

  const factory UploadError({
    /// The error code.
    required UploadErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _UploadError;

  factory UploadError.fromJson(Map<String, Object?> json) => _UploadErrorFromJson(json);
}

enum UploadErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
}

/// Represents user data. 
@freezed
class User with _$User {
  const User._();

  /// Represents user data. 
  const factory User.user({
    /// List of all user's addresses.
    required List<Address> addresses,
    Image? avatar,
    /// Returns the last open checkout of this user.
    Checkout? checkout,
    /// Returns the checkout ID's assigned to this user.
    List<String>? checkoutIds,
    /// Returns the checkout UUID's assigned to this user.
    List<UUID>? checkoutTokens,
    required DateTime dateJoined,
    Address? defaultBillingAddress,
    Address? defaultShippingAddress,
    /// List of user's permission groups which user can manage.
    List<Group>? editableGroups,
    required String email,
    /// List of events associated with the user.

Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF.
    List<CustomerEvent>? events,
    required String firstName,
    /// List of the user gift cards.
    GiftCardCountableConnection? giftCards,
    required String id,
    required bool isActive,
    required bool isStaff,
    /// User language code.
    required LanguageCodeEnum languageCode,
    DateTime? lastLogin,
    required String lastName,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// A note about the customer.

Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF.
    String? note,
    /// List of user's orders. Requires one of the following permissions: MANAGE_STAFF, OWNER.
    OrderCountableConnection? orders,
    /// List of user's permission groups.
    List<Group>? permissionGroups,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of stored payment sources.
    List<PaymentSource>? storedPaymentSources,
    required DateTime updatedAt,
    /// List of user's permissions.
    List<UserPermission>? userPermissions,
  }) = User;

  factory User.fromJson(Map<String, Object?> json) => _UserFromJson(json);
}

/// Deletes a user avatar. Only for staff members. 

Requires one of the following permissions: AUTHENTICATED_STAFF_USER. 
@freezed
class UserAvatarDelete with _$UserAvatarDelete {
  const UserAvatarDelete._();

  /// Deletes a user avatar. Only for staff members. 

Requires one of the following permissions: AUTHENTICATED_STAFF_USER. 
  const factory UserAvatarDelete({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// An updated user instance.
    User? user,
  }) = _UserAvatarDelete;

  factory UserAvatarDelete.fromJson(Map<String, Object?> json) => _UserAvatarDeleteFromJson(json);
}

/// Create a user avatar. Only for staff members. This mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: AUTHENTICATED_STAFF_USER. 
@freezed
class UserAvatarUpdate with _$UserAvatarUpdate {
  const UserAvatarUpdate._();

  /// Create a user avatar. Only for staff members. This mutation must be sent as a `multipart` request. More detailed specs of the upload format can be found here: https://github.com/jaydenseric/graphql-multipart-request-spec 

Requires one of the following permissions: AUTHENTICATED_STAFF_USER. 
  const factory UserAvatarUpdate({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// An updated user instance.
    User? user,
  }) = _UserAvatarUpdate;

  factory UserAvatarUpdate.fromJson(Map<String, Object?> json) => _UserAvatarUpdateFromJson(json);
}

/// Activate or deactivate users. 

Requires one of the following permissions: MANAGE_USERS. 
@freezed
class UserBulkSetActive with _$UserBulkSetActive {
  const UserBulkSetActive._();

  /// Activate or deactivate users. 

Requires one of the following permissions: MANAGE_USERS. 
  const factory UserBulkSetActive({
    required List<AccountError> accountErrors,
    /// Returns how many objects were affected.
    required int count,
    required List<AccountError> errors,
  }) = _UserBulkSetActive;

  factory UserBulkSetActive.fromJson(Map<String, Object?> json) => _UserBulkSetActiveFromJson(json);
}

@freezed
class UserCountableConnection with _$UserCountableConnection {
  const UserCountableConnection._();

  const factory UserCountableConnection({
    required List<UserCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _UserCountableConnection;

  factory UserCountableConnection.fromJson(Map<String, Object?> json) => _UserCountableConnectionFromJson(json);
}

@freezed
class UserCountableEdge with _$UserCountableEdge {
  const UserCountableEdge._();

  const factory UserCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required User node,
  }) = _UserCountableEdge;

  factory UserCountableEdge.fromJson(Map<String, Object?> json) => _UserCountableEdgeFromJson(json);
}

@unfreezed
class UserCreateInput with _$UserCreateInput {
  const UserCreateInput._();

  const factory UserCreateInput({
    /// Slug of a channel which will be used for notify user. Optional when only one channel exists.
    String? channel,
    /// Billing address of the customer.
    AddressInput? defaultBillingAddress,
    /// Shipping address of the customer.
    AddressInput? defaultShippingAddress,
    /// The unique email address of the user.
    String? email,
    /// Given name.
    String? firstName,
    /// User account is active.
    bool? isActive,
    /// User language code.
    LanguageCodeEnum? languageCode,
    /// Family name.
    String? lastName,
    /// A note about the user.
    String? note,
    /// URL of a view where users should be redirected to set the password. URL in RFC 1808 format.
    String? redirectUrl,
  }) = _UserCreateInput;

  factory UserCreateInput.fromJson(Map<String, Object?> json) => _UserCreateInputFromJson(json);
}

@freezed
class UserPermission with _$UserPermission {
  const UserPermission._();

  const factory UserPermission({
    /// Internal code for permission.
    required PermissionEnum code,
    /// Describe action(s) allowed to do by permission.
    required String name,
    /// List of user permission groups which contains this permission.
    List<Group>? sourcePermissionGroups,
  }) = _UserPermission;

  factory UserPermission.fromJson(Map<String, Object?> json) => _UserPermissionFromJson(json);
}

enum UserSortField{
  /// Sort users by created at. 
@JsonKey(name: CREATED_AT) created_at
  /// Sort users by email. 
@JsonKey(name: EMAIL) email
  /// Sort users by first name. 
@JsonKey(name: FIRST_NAME) first_name
  /// Sort users by last modified at. 
@JsonKey(name: LAST_MODIFIED_AT) last_modified_at
  /// Sort users by last name. 
@JsonKey(name: LAST_NAME) last_name
  /// Sort users by order count. 
@JsonKey(name: ORDER_COUNT) order_count
}

@unfreezed
class UserSortingInput with _$UserSortingInput {
  const UserSortingInput._();

  const factory UserSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort users by the selected field.
    required UserSortField field,
  }) = _UserSortingInput;

  factory UserSortingInput.fromJson(Map<String, Object?> json) => _UserSortingInputFromJson(json);
}

/// Represents a VAT rate for a country. 
@freezed
class Vat with _$Vat {
  const Vat._();

  /// Represents a VAT rate for a country. 
  const factory Vat({
    /// Country code.
    required String countryCode,
    /// Country's VAT rate exceptions for specific types of goods.
    required List<ReducedRate> reducedRates,
    /// Standard VAT rate in percent.
    double? standardRate,
  }) = _Vat;

  factory Vat.fromJson(Map<String, Object?> json) => _VatFromJson(json);
}

enum VariantAttributeScope{
  @JsonKey(name: ALL) all
  @JsonKey(name: NOT_VARIANT_SELECTION) not_variant_selection
  @JsonKey(name: VARIANT_SELECTION) variant_selection
}

/// Assign an media to a product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class VariantMediaAssign with _$VariantMediaAssign {
  const VariantMediaAssign._();

  /// Assign an media to a product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory VariantMediaAssign({
    required List<ProductError> errors,
    ProductMedia? media,
    required List<ProductError> productErrors,
    ProductVariant? productVariant,
  }) = _VariantMediaAssign;

  factory VariantMediaAssign.fromJson(Map<String, Object?> json) => _VariantMediaAssignFromJson(json);
}

/// Unassign an media from a product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class VariantMediaUnassign with _$VariantMediaUnassign {
  const VariantMediaUnassign._();

  /// Unassign an media from a product variant. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory VariantMediaUnassign({
    required List<ProductError> errors,
    ProductMedia? media,
    required List<ProductError> productErrors,
    ProductVariant? productVariant,
  }) = _VariantMediaUnassign;

  factory VariantMediaUnassign.fromJson(Map<String, Object?> json) => _VariantMediaUnassignFromJson(json);
}

/// Represents availability of a variant in the storefront. 
@freezed
class VariantPricingInfo with _$VariantPricingInfo {
  const VariantPricingInfo._();

  /// Represents availability of a variant in the storefront. 
  const factory VariantPricingInfo({
    /// The discount amount if in sale (null otherwise).
    TaxedMoney? discount,
    /// The discount amount in the local currency.
    TaxedMoney? discountLocalCurrency,
    /// Whether it is in sale or not.
    bool? onSale,
    /// The price, with any discount subtracted.
    TaxedMoney? price,
    /// The discounted price in the local currency.
    TaxedMoney? priceLocalCurrency,
    /// The price without any discount.
    TaxedMoney? priceUndiscounted,
  }) = _VariantPricingInfo;

  factory VariantPricingInfo.fromJson(Map<String, Object?> json) => _VariantPricingInfoFromJson(json);
}

/// Verify JWT token. 
@freezed
class VerifyToken with _$VerifyToken {
  const VerifyToken._();

  /// Verify JWT token. 
  const factory VerifyToken({
    required List<AccountError> accountErrors,
    required List<AccountError> errors,
    /// Determine if token is valid or not.
    required bool isValid,
    /// JWT payload.
    GenericScalar? payload,
    /// User assigned to token.
    User? user,
  }) = _VerifyToken;

  factory VerifyToken.fromJson(Map<String, Object?> json) => _VerifyTokenFromJson(json);
}

enum VolumeUnitsEnum{
  @JsonKey(name: ACRE_FT) acre_ft
  @JsonKey(name: ACRE_IN) acre_in
  @JsonKey(name: CUBIC_CENTIMETER) cubic_centimeter
  @JsonKey(name: CUBIC_DECIMETER) cubic_decimeter
  @JsonKey(name: CUBIC_FOOT) cubic_foot
  @JsonKey(name: CUBIC_INCH) cubic_inch
  @JsonKey(name: CUBIC_METER) cubic_meter
  @JsonKey(name: CUBIC_MILLIMETER) cubic_millimeter
  @JsonKey(name: CUBIC_YARD) cubic_yard
  @JsonKey(name: FL_OZ) fl_oz
  @JsonKey(name: LITER) liter
  @JsonKey(name: PINT) pint
  @JsonKey(name: QT) qt
}

/// Vouchers allow giving discounts to particular customers on categories, collections or specific products. They can be used during checkout by providing valid voucher codes. 
@freezed
class Voucher with _$Voucher {
  const Voucher._();

  /// Vouchers allow giving discounts to particular customers on categories, collections or specific products. They can be used during checkout by providing valid voucher codes. 
  const factory Voucher({
    required bool applyOncePerCustomer,
    required bool applyOncePerOrder,
    /// List of categories this voucher applies to.
    CategoryCountableConnection? categories,
    /// List of availability in channels for the voucher.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    List<VoucherChannelListing>? channelListings,
    required String code,
    /// List of collections this voucher applies to.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    CollectionCountableConnection? collections,
    /// List of countries available for the shipping voucher.
    List<CountryDisplay>? countries,
    /// Currency code for voucher.
    String? currency,
    /// Voucher value.
    double? discountValue,
    /// Determines a type of discount for voucher - value or percentage
    required DiscountValueTypeEnum discountValueType,
    DateTime? endDate,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    int? minCheckoutItemsQuantity,
    /// Minimum order value to apply voucher.
    Money? minSpent,
    String? name,
    required bool onlyForStaff,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of products this voucher applies to.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    ProductCountableConnection? products,
    required DateTime startDate,
    /// Returns translated voucher fields for the given language code.
    VoucherTranslation? translation,
    /// Determines a type of voucher.
    required VoucherTypeEnum type,
    int? usageLimit,
    required int used,
    /// List of product variants this voucher applies to.

Added in Saleor 3.1.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    ProductVariantCountableConnection? variants,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, Object?> json) => _VoucherFromJson(json);
}

/// Adds products, categories, collections to a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherAddCatalogues with _$VoucherAddCatalogues {
  const VoucherAddCatalogues._();

  /// Adds products, categories, collections to a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherAddCatalogues({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    /// Voucher of which catalogue IDs will be modified.
    Voucher? voucher,
  }) = _VoucherAddCatalogues;

  factory VoucherAddCatalogues.fromJson(Map<String, Object?> json) => _VoucherAddCataloguesFromJson(json);
}

/// Deletes vouchers. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherBulkDelete with _$VoucherBulkDelete {
  const VoucherBulkDelete._();

  /// Deletes vouchers. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherBulkDelete({
    /// Returns how many objects were affected.
    required int count,
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
  }) = _VoucherBulkDelete;

  factory VoucherBulkDelete.fromJson(Map<String, Object?> json) => _VoucherBulkDeleteFromJson(json);
}

/// Represents voucher channel listing. 
@freezed
class VoucherChannelListing with _$VoucherChannelListing {
  const VoucherChannelListing._();

  /// Represents voucher channel listing. 
  const factory VoucherChannelListing({
    required Channel channel,
    required String currency,
    required double discountValue,
    required String id,
    Money? minSpent,
  }) = _VoucherChannelListing;

  factory VoucherChannelListing.fromJson(Map<String, Object?> json) => _VoucherChannelListingFromJson(json);
}

@unfreezed
class VoucherChannelListingAddInput with _$VoucherChannelListingAddInput {
  const VoucherChannelListingAddInput._();

  const factory VoucherChannelListingAddInput({
    /// ID of a channel.
    required String channelId,
    /// Value of the voucher.
    PositiveDecimal? discountValue,
    /// Min purchase amount required to apply the voucher.
    PositiveDecimal? minAmountSpent,
  }) = _VoucherChannelListingAddInput;

  factory VoucherChannelListingAddInput.fromJson(Map<String, Object?> json) => _VoucherChannelListingAddInputFromJson(json);
}

@unfreezed
class VoucherChannelListingInput with _$VoucherChannelListingInput {
  const VoucherChannelListingInput._();

  const factory VoucherChannelListingInput({
    /// List of channels to which the voucher should be assigned.
    List<VoucherChannelListingAddInput>? addChannels,
    /// List of channels from which the voucher should be unassigned.
    List<String>? removeChannels,
  }) = _VoucherChannelListingInput;

  factory VoucherChannelListingInput.fromJson(Map<String, Object?> json) => _VoucherChannelListingInputFromJson(json);
}

/// Manage voucher's availability in channels. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherChannelListingUpdate with _$VoucherChannelListingUpdate {
  const VoucherChannelListingUpdate._();

  /// Manage voucher's availability in channels. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherChannelListingUpdate({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    /// An updated voucher instance.
    Voucher? voucher,
  }) = _VoucherChannelListingUpdate;

  factory VoucherChannelListingUpdate.fromJson(Map<String, Object?> json) => _VoucherChannelListingUpdateFromJson(json);
}

@freezed
class VoucherCountableConnection with _$VoucherCountableConnection {
  const VoucherCountableConnection._();

  const factory VoucherCountableConnection({
    required List<VoucherCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _VoucherCountableConnection;

  factory VoucherCountableConnection.fromJson(Map<String, Object?> json) => _VoucherCountableConnectionFromJson(json);
}

@freezed
class VoucherCountableEdge with _$VoucherCountableEdge {
  const VoucherCountableEdge._();

  const factory VoucherCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Voucher node,
  }) = _VoucherCountableEdge;

  factory VoucherCountableEdge.fromJson(Map<String, Object?> json) => _VoucherCountableEdgeFromJson(json);
}

/// Creates a new voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherCreate with _$VoucherCreate {
  const VoucherCreate._();

  /// Creates a new voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherCreate({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    Voucher? voucher,
  }) = _VoucherCreate;

  factory VoucherCreate.fromJson(Map<String, Object?> json) => _VoucherCreateFromJson(json);
}

/// Event sent when new voucher is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class VoucherCreated with _$VoucherCreated {
  const VoucherCreated._();

  /// Event sent when new voucher is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory VoucherCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// The voucher the event relates to.
    Voucher? voucher,
  }) = _VoucherCreated;

  factory VoucherCreated.fromJson(Map<String, Object?> json) => _VoucherCreatedFromJson(json);
}

/// Deletes a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherDelete with _$VoucherDelete {
  const VoucherDelete._();

  /// Deletes a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherDelete({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    Voucher? voucher,
  }) = _VoucherDelete;

  factory VoucherDelete.fromJson(Map<String, Object?> json) => _VoucherDeleteFromJson(json);
}

/// Event sent when voucher is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class VoucherDeleted with _$VoucherDeleted {
  const VoucherDeleted._();

  /// Event sent when voucher is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory VoucherDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// The voucher the event relates to.
    Voucher? voucher,
  }) = _VoucherDeleted;

  factory VoucherDeleted.fromJson(Map<String, Object?> json) => _VoucherDeletedFromJson(json);
}

enum VoucherDiscountType{
  @JsonKey(name: FIXED) fixed
  @JsonKey(name: PERCENTAGE) percentage
  @JsonKey(name: SHIPPING) shipping
}

@unfreezed
class VoucherFilterInput with _$VoucherFilterInput {
  const VoucherFilterInput._();

  const factory VoucherFilterInput({
    List<VoucherDiscountType>? discountType,
    List<String>? ids,
    List<MetadataFilter>? metadata,
    String? search,
    DateTimeRangeInput? started,
    List<DiscountStatusEnum>? status,
    IntRangeInput? timesUsed,
  }) = _VoucherFilterInput;

  factory VoucherFilterInput.fromJson(Map<String, Object?> json) => _VoucherFilterInputFromJson(json);
}

@unfreezed
class VoucherInput with _$VoucherInput {
  const VoucherInput._();

  const factory VoucherInput({
    /// Voucher should be applied once per customer.
    bool? applyOncePerCustomer,
    /// Voucher should be applied to the cheapest item or entire order.
    bool? applyOncePerOrder,
    /// Categories discounted by the voucher.
    List<String>? categories,
    /// Code to use the voucher.
    String? code,
    /// Collections discounted by the voucher.
    List<String>? collections,
    /// Country codes that can be used with the shipping voucher.
    List<String>? countries,
    /// Choices: fixed or percentage.
    DiscountValueTypeEnum? discountValueType,
    /// End date of the voucher in ISO 8601 format.
    DateTime? endDate,
    /// Minimal quantity of checkout items required to apply the voucher.
    int? minCheckoutItemsQuantity,
    /// Voucher name.
    String? name,
    /// Voucher can be used only by staff user.
    bool? onlyForStaff,
    /// Products discounted by the voucher.
    List<String>? products,
    /// Start date of the voucher in ISO 8601 format.
    DateTime? startDate,
    /// Voucher type: PRODUCT, CATEGORY SHIPPING or ENTIRE_ORDER.
    VoucherTypeEnum? type,
    /// Limit number of times this voucher can be used in total.
    int? usageLimit,
    /// Variants discounted by the voucher.

Added in Saleor 3.1.
    List<String>? variants,
  }) = _VoucherInput;

  factory VoucherInput.fromJson(Map<String, Object?> json) => _VoucherInputFromJson(json);
}

/// Removes products, categories, collections from a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherRemoveCatalogues with _$VoucherRemoveCatalogues {
  const VoucherRemoveCatalogues._();

  /// Removes products, categories, collections from a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherRemoveCatalogues({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    /// Voucher of which catalogue IDs will be modified.
    Voucher? voucher,
  }) = _VoucherRemoveCatalogues;

  factory VoucherRemoveCatalogues.fromJson(Map<String, Object?> json) => _VoucherRemoveCataloguesFromJson(json);
}

enum VoucherSortField{
  /// Sort vouchers by code. 
@JsonKey(name: CODE) code
  /// Sort vouchers by end date. 
@JsonKey(name: END_DATE) end_date
  /// Sort vouchers by minimum spent amount.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: MINIMUM_SPENT_AMOUNT) minimum_spent_amount
  /// Sort vouchers by start date. 
@JsonKey(name: START_DATE) start_date
  /// Sort vouchers by type. 
@JsonKey(name: TYPE) type
  /// Sort vouchers by usage limit. 
@JsonKey(name: USAGE_LIMIT) usage_limit
  /// Sort vouchers by value.

This option requires a channel filter to work as the values can vary between channels. 
@JsonKey(name: VALUE) value
}

@unfreezed
class VoucherSortingInput with _$VoucherSortingInput {
  const VoucherSortingInput._();

  const factory VoucherSortingInput({
    /// Specifies the channel in which to sort the data.

DEPRECATED: this field will be removed in Saleor 4.0. Use root-level channel argument instead.
    String? channel,
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort vouchers by the selected field.
    required VoucherSortField field,
  }) = _VoucherSortingInput;

  factory VoucherSortingInput.fromJson(Map<String, Object?> json) => _VoucherSortingInputFromJson(json);
}

@freezed
class VoucherTranslatableContent with _$VoucherTranslatableContent {
  const VoucherTranslatableContent._();

  const factory VoucherTranslatableContent.voucherTranslatableContent({
    required String id,
    String? name,
    /// Returns translated voucher fields for the given language code.
    VoucherTranslation? translation,
    /// Vouchers allow giving discounts to particular customers on categories, collections or specific products. They can be used during checkout by providing valid voucher codes.

Requires one of the following permissions: MANAGE_DISCOUNTS.
    Voucher? voucher,
  }) = VoucherTranslatableContent;

  factory VoucherTranslatableContent.fromJson(Map<String, Object?> json) => _VoucherTranslatableContentFromJson(json);
}

/// Creates/updates translations for a voucher. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
@freezed
class VoucherTranslate with _$VoucherTranslate {
  const VoucherTranslate._();

  /// Creates/updates translations for a voucher. 

Requires one of the following permissions: MANAGE_TRANSLATIONS. 
  const factory VoucherTranslate({
    required List<TranslationError> errors,
    required List<TranslationError> translationErrors,
    Voucher? voucher,
  }) = _VoucherTranslate;

  factory VoucherTranslate.fromJson(Map<String, Object?> json) => _VoucherTranslateFromJson(json);
}

@freezed
class VoucherTranslation with _$VoucherTranslation {
  const VoucherTranslation._();

  const factory VoucherTranslation.voucherTranslation({
    required String id,
    /// Translation language.
    required LanguageDisplay language,
    String? name,
  }) = VoucherTranslation;

  factory VoucherTranslation.fromJson(Map<String, Object?> json) => _VoucherTranslationFromJson(json);
}

enum VoucherTypeEnum{
  @JsonKey(name: ENTIRE_ORDER) entire_order
  @JsonKey(name: SHIPPING) shipping
  @JsonKey(name: SPECIFIC_PRODUCT) specific_product
}

/// Updates a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
@freezed
class VoucherUpdate with _$VoucherUpdate {
  const VoucherUpdate._();

  /// Updates a voucher. 

Requires one of the following permissions: MANAGE_DISCOUNTS. 
  const factory VoucherUpdate({
    required List<DiscountError> discountErrors,
    required List<DiscountError> errors,
    Voucher? voucher,
  }) = _VoucherUpdate;

  factory VoucherUpdate.fromJson(Map<String, Object?> json) => _VoucherUpdateFromJson(json);
}

/// Event sent when voucher is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class VoucherUpdated with _$VoucherUpdated {
  const VoucherUpdated._();

  /// Event sent when voucher is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory VoucherUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// The voucher the event relates to.
    Voucher? voucher,
  }) = _VoucherUpdated;

  factory VoucherUpdated.fromJson(Map<String, Object?> json) => _VoucherUpdatedFromJson(json);
}

/// Represents warehouse. 
@freezed
class Warehouse with _$Warehouse {
  const Warehouse._();

  /// Represents warehouse. 
  const factory Warehouse.warehouse({
    required Address address,
    /// Click and collect options: local, all or disabled.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required WarehouseClickAndCollectOptionEnum clickAndCollectOption,
    /// Warehouse company name.
    required String companyName,
    required String email,
    required String id,
    required bool isPrivate,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required ShippingZoneCountableConnection shippingZones,
    required String slug,
  }) = Warehouse;

  factory Warehouse.fromJson(Map<String, Object?> json) => _WarehouseFromJson(json);
}

enum WarehouseClickAndCollectOptionEnum{
  @JsonKey(name: ALL) all
  @JsonKey(name: DISABLED) disabled
  @JsonKey(name: LOCAL) local
}

@freezed
class WarehouseCountableConnection with _$WarehouseCountableConnection {
  const WarehouseCountableConnection._();

  const factory WarehouseCountableConnection({
    required List<WarehouseCountableEdge> edges,
    /// Pagination data for this connection.
    required PageInfo pageInfo,
    /// A total count of items in the collection.
    int? totalCount,
  }) = _WarehouseCountableConnection;

  factory WarehouseCountableConnection.fromJson(Map<String, Object?> json) => _WarehouseCountableConnectionFromJson(json);
}

@freezed
class WarehouseCountableEdge with _$WarehouseCountableEdge {
  const WarehouseCountableEdge._();

  const factory WarehouseCountableEdge({
    /// A cursor for use in pagination.
    required String cursor,
    /// The item at the end of the edge.
    required Warehouse node,
  }) = _WarehouseCountableEdge;

  factory WarehouseCountableEdge.fromJson(Map<String, Object?> json) => _WarehouseCountableEdgeFromJson(json);
}

/// Creates new warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class WarehouseCreate with _$WarehouseCreate {
  const WarehouseCreate._();

  /// Creates new warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory WarehouseCreate({
    required List<WarehouseError> errors,
    Warehouse? warehouse,
    required List<WarehouseError> warehouseErrors,
  }) = _WarehouseCreate;

  factory WarehouseCreate.fromJson(Map<String, Object?> json) => _WarehouseCreateFromJson(json);
}

@unfreezed
class WarehouseCreateInput with _$WarehouseCreateInput {
  const WarehouseCreateInput._();

  const factory WarehouseCreateInput({
    /// Address of the warehouse.
    required AddressInput address,
    /// The email address of the warehouse.
    String? email,
    /// Warehouse name.
    required String name,
    /// Shipping zones supported by the warehouse.

DEPRECATED: this field will be removed in Saleor 4.0. Providing the zone ids will raise a ValidationError.
    List<String>? shippingZones,
    /// Warehouse slug.
    String? slug,
  }) = _WarehouseCreateInput;

  factory WarehouseCreateInput.fromJson(Map<String, Object?> json) => _WarehouseCreateInputFromJson(json);
}

/// Event sent when new warehouse is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class WarehouseCreated with _$WarehouseCreated {
  const WarehouseCreated._();

  /// Event sent when new warehouse is created.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory WarehouseCreated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// The warehouse the event relates to.
    Warehouse? warehouse,
  }) = _WarehouseCreated;

  factory WarehouseCreated.fromJson(Map<String, Object?> json) => _WarehouseCreatedFromJson(json);
}

/// Deletes selected warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class WarehouseDelete with _$WarehouseDelete {
  const WarehouseDelete._();

  /// Deletes selected warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory WarehouseDelete({
    required List<WarehouseError> errors,
    Warehouse? warehouse,
    required List<WarehouseError> warehouseErrors,
  }) = _WarehouseDelete;

  factory WarehouseDelete.fromJson(Map<String, Object?> json) => _WarehouseDeleteFromJson(json);
}

/// Event sent when warehouse is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class WarehouseDeleted with _$WarehouseDeleted {
  const WarehouseDeleted._();

  /// Event sent when warehouse is deleted.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory WarehouseDeleted({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// The warehouse the event relates to.
    Warehouse? warehouse,
  }) = _WarehouseDeleted;

  factory WarehouseDeleted.fromJson(Map<String, Object?> json) => _WarehouseDeletedFromJson(json);
}

@freezed
class WarehouseError with _$WarehouseError {
  const WarehouseError._();

  const factory WarehouseError({
    /// The error code.
    required WarehouseErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
    /// List of shipping zones IDs which causes the error.
    List<String>? shippingZones,
  }) = _WarehouseError;

  factory WarehouseError.fromJson(Map<String, Object?> json) => _WarehouseErrorFromJson(json);
}

enum WarehouseErrorCode{
  @JsonKey(name: ALREADY_EXISTS) already_exists
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

@unfreezed
class WarehouseFilterInput with _$WarehouseFilterInput {
  const WarehouseFilterInput._();

  const factory WarehouseFilterInput({
    List<String>? channels,
    WarehouseClickAndCollectOptionEnum? clickAndCollectOption,
    List<String>? ids,
    bool? isPrivate,
    String? search,
  }) = _WarehouseFilterInput;

  factory WarehouseFilterInput.fromJson(Map<String, Object?> json) => _WarehouseFilterInputFromJson(json);
}

/// Add shipping zone to given warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class WarehouseShippingZoneAssign with _$WarehouseShippingZoneAssign {
  const WarehouseShippingZoneAssign._();

  /// Add shipping zone to given warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory WarehouseShippingZoneAssign({
    required List<WarehouseError> errors,
    Warehouse? warehouse,
    required List<WarehouseError> warehouseErrors,
  }) = _WarehouseShippingZoneAssign;

  factory WarehouseShippingZoneAssign.fromJson(Map<String, Object?> json) => _WarehouseShippingZoneAssignFromJson(json);
}

/// Remove shipping zone from given warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class WarehouseShippingZoneUnassign with _$WarehouseShippingZoneUnassign {
  const WarehouseShippingZoneUnassign._();

  /// Remove shipping zone from given warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory WarehouseShippingZoneUnassign({
    required List<WarehouseError> errors,
    Warehouse? warehouse,
    required List<WarehouseError> warehouseErrors,
  }) = _WarehouseShippingZoneUnassign;

  factory WarehouseShippingZoneUnassign.fromJson(Map<String, Object?> json) => _WarehouseShippingZoneUnassignFromJson(json);
}

enum WarehouseSortField{
  /// Sort warehouses by name. 
@JsonKey(name: NAME) name
}

@unfreezed
class WarehouseSortingInput with _$WarehouseSortingInput {
  const WarehouseSortingInput._();

  const factory WarehouseSortingInput({
    /// Specifies the direction in which to sort products.
    required OrderDirection direction,
    /// Sort warehouses by the selected field.
    required WarehouseSortField field,
  }) = _WarehouseSortingInput;

  factory WarehouseSortingInput.fromJson(Map<String, Object?> json) => _WarehouseSortingInputFromJson(json);
}

/// Updates given warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
@freezed
class WarehouseUpdate with _$WarehouseUpdate {
  const WarehouseUpdate._();

  /// Updates given warehouse. 

Requires one of the following permissions: MANAGE_PRODUCTS. 
  const factory WarehouseUpdate({
    required List<WarehouseError> errors,
    Warehouse? warehouse,
    required List<WarehouseError> warehouseErrors,
  }) = _WarehouseUpdate;

  factory WarehouseUpdate.fromJson(Map<String, Object?> json) => _WarehouseUpdateFromJson(json);
}

@unfreezed
class WarehouseUpdateInput with _$WarehouseUpdateInput {
  const WarehouseUpdateInput._();

  const factory WarehouseUpdateInput({
    /// Address of the warehouse.
    AddressInput? address,
    /// Click and collect options: local, all or disabled.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    WarehouseClickAndCollectOptionEnum? clickAndCollectOption,
    /// The email address of the warehouse.
    String? email,
    /// Visibility of warehouse stocks.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    bool? isPrivate,
    /// Warehouse name.
    String? name,
    /// Warehouse slug.
    String? slug,
  }) = _WarehouseUpdateInput;

  factory WarehouseUpdateInput.fromJson(Map<String, Object?> json) => _WarehouseUpdateInputFromJson(json);
}

/// Event sent when warehouse is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@freezed
class WarehouseUpdated with _$WarehouseUpdated {
  const WarehouseUpdated._();

  /// Event sent when warehouse is updated.

Added in Saleor 3.4.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
  const factory WarehouseUpdated({
    /// Time of the event.
    DateTime? issuedAt,
    /// The user or application that triggered the event.
    IssuingPrincipal? issuingPrincipal,
    /// The application receiving the webhook.
    App? recipient,
    /// Saleor version that triggered the event.
    String? version,
    /// The warehouse the event relates to.
    Warehouse? warehouse,
  }) = _WarehouseUpdated;

  factory WarehouseUpdated.fromJson(Map<String, Object?> json) => _WarehouseUpdatedFromJson(json);
}

/// Webhook. 
@freezed
class Webhook with _$Webhook {
  const Webhook._();

  /// Webhook. 
  const factory Webhook({
    required App app,
    /// List of asynchronous webhook events.
    required List<WebhookEventAsync> asyncEvents,
    /// Event deliveries.
    EventDeliveryCountableConnection? eventDeliveries,
    /// List of webhook events.
    required List<WebhookEvent> events,
    required String id,
    /// Informs if webhook is activated.
    required bool isActive,
    required String name,
    /// Used to create a hash signature for each payload.
    String? secretKey,
    /// Used to define payloads for specific events.
    String? subscriptionQuery,
    /// List of synchronous webhook events.
    required List<WebhookEventSync> syncEvents,
    /// Target URL for webhook.
    required String targetUrl,
  }) = _Webhook;

  factory Webhook.fromJson(Map<String, Object?> json) => _WebhookFromJson(json);
}

/// Creates a new webhook subscription. 

Requires one of the following permissions: MANAGE_APPS, AUTHENTICATED_APP. 
@freezed
class WebhookCreate with _$WebhookCreate {
  const WebhookCreate._();

  /// Creates a new webhook subscription. 

Requires one of the following permissions: MANAGE_APPS, AUTHENTICATED_APP. 
  const factory WebhookCreate({
    required List<WebhookError> errors,
    Webhook? webhook,
    required List<WebhookError> webhookErrors,
  }) = _WebhookCreate;

  factory WebhookCreate.fromJson(Map<String, Object?> json) => _WebhookCreateFromJson(json);
}

@unfreezed
class WebhookCreateInput with _$WebhookCreateInput {
  const WebhookCreateInput._();

  const factory WebhookCreateInput({
    /// ID of the app to which webhook belongs.
    String? app,
    /// The asynchronous events that webhook wants to subscribe.
    List<WebhookEventTypeAsyncEnum>? asyncEvents,
    /// The events that webhook wants to subscribe. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `asyncEvents` or `syncEvents` instead.
    List<WebhookEventTypeEnum>? events,
    /// Determine if webhook will be set active or not.
    bool? isActive,
    /// The name of the webhook.
    String? name,
    /// Subscription query used to define a webhook payload.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? query,
    /// The secret key used to create a hash signature with each payload.

DEPRECATED: this field will be removed in Saleor 4.0. As of Saleor 3.5, webhook payloads default to signing using a verifiable JWS.
    String? secretKey,
    /// The synchronous events that webhook wants to subscribe.
    List<WebhookEventTypeSyncEnum>? syncEvents,
    /// The url to receive the payload.
    String? targetUrl,
  }) = _WebhookCreateInput;

  factory WebhookCreateInput.fromJson(Map<String, Object?> json) => _WebhookCreateInputFromJson(json);
}

/// Deletes a webhook subscription. 

Requires one of the following permissions: MANAGE_APPS, AUTHENTICATED_APP. 
@freezed
class WebhookDelete with _$WebhookDelete {
  const WebhookDelete._();

  /// Deletes a webhook subscription. 

Requires one of the following permissions: MANAGE_APPS, AUTHENTICATED_APP. 
  const factory WebhookDelete({
    required List<WebhookError> errors,
    Webhook? webhook,
    required List<WebhookError> webhookErrors,
  }) = _WebhookDelete;

  factory WebhookDelete.fromJson(Map<String, Object?> json) => _WebhookDeleteFromJson(json);
}

@freezed
class WebhookError with _$WebhookError {
  const WebhookError._();

  const factory WebhookError({
    /// The error code.
    required WebhookErrorCode code,
    /// Name of a field that caused the error. A value of `null` indicates that the error isn't associated with a particular field.
    String? field,
    /// The error message.
    String? message,
  }) = _WebhookError;

  factory WebhookError.fromJson(Map<String, Object?> json) => _WebhookErrorFromJson(json);
}

enum WebhookErrorCode{
  @JsonKey(name: GRAPHQL_ERROR) graphql_error
  @JsonKey(name: INVALID) invalid
  @JsonKey(name: NOT_FOUND) not_found
  @JsonKey(name: REQUIRED) required
  @JsonKey(name: UNIQUE) unique
}

/// Webhook event. 
@freezed
class WebhookEvent with _$WebhookEvent {
  const WebhookEvent._();

  /// Webhook event. 
  const factory WebhookEvent({
    /// Internal name of the event type.
    required WebhookEventTypeEnum eventType,
    /// Display name of the event.
    required String name,
  }) = _WebhookEvent;

  factory WebhookEvent.fromJson(Map<String, Object?> json) => _WebhookEventFromJson(json);
}

/// Asynchronous webhook event. 
@freezed
class WebhookEventAsync with _$WebhookEventAsync {
  const WebhookEventAsync._();

  /// Asynchronous webhook event. 
  const factory WebhookEventAsync({
    /// Internal name of the event type.
    required WebhookEventTypeAsyncEnum eventType,
    /// Display name of the event.
    required String name,
  }) = _WebhookEventAsync;

  factory WebhookEventAsync.fromJson(Map<String, Object?> json) => _WebhookEventAsyncFromJson(json);
}

/// Synchronous webhook event. 
@freezed
class WebhookEventSync with _$WebhookEventSync {
  const WebhookEventSync._();

  /// Synchronous webhook event. 
  const factory WebhookEventSync({
    /// Internal name of the event type.
    required WebhookEventTypeSyncEnum eventType,
    /// Display name of the event.
    required String name,
  }) = _WebhookEventSync;

  factory WebhookEventSync.fromJson(Map<String, Object?> json) => _WebhookEventSyncFromJson(json);
}

enum WebhookEventTypeAsyncEnum{
  /// A new address created. 
@JsonKey(name: ADDRESS_CREATED) address_created
  /// An address deleted. 
@JsonKey(name: ADDRESS_DELETED) address_deleted
  /// An address updated. 
@JsonKey(name: ADDRESS_UPDATED) address_updated
  /// All the events. 
@JsonKey(name: ANY_EVENTS) any_events
  /// An app deleted. 
@JsonKey(name: APP_DELETED) app_deleted
  /// A new app installed. 
@JsonKey(name: APP_INSTALLED) app_installed
  /// An app status is changed. 
@JsonKey(name: APP_STATUS_CHANGED) app_status_changed
  /// An app updated. 
@JsonKey(name: APP_UPDATED) app_updated
  /// A new attribute is created. 
@JsonKey(name: ATTRIBUTE_CREATED) attribute_created
  /// An attribute is deleted. 
@JsonKey(name: ATTRIBUTE_DELETED) attribute_deleted
  /// An attribute is updated. 
@JsonKey(name: ATTRIBUTE_UPDATED) attribute_updated
  /// A new attribute value is created. 
@JsonKey(name: ATTRIBUTE_VALUE_CREATED) attribute_value_created
  /// An attribute value is deleted. 
@JsonKey(name: ATTRIBUTE_VALUE_DELETED) attribute_value_deleted
  /// An attribute value is updated. 
@JsonKey(name: ATTRIBUTE_VALUE_UPDATED) attribute_value_updated
  /// A new category created. 
@JsonKey(name: CATEGORY_CREATED) category_created
  /// A category is deleted. 
@JsonKey(name: CATEGORY_DELETED) category_deleted
  /// A category is updated. 
@JsonKey(name: CATEGORY_UPDATED) category_updated
  /// A new channel created. 
@JsonKey(name: CHANNEL_CREATED) channel_created
  /// A channel is deleted. 
@JsonKey(name: CHANNEL_DELETED) channel_deleted
  /// A channel status is changed. 
@JsonKey(name: CHANNEL_STATUS_CHANGED) channel_status_changed
  /// A channel is updated. 
@JsonKey(name: CHANNEL_UPDATED) channel_updated
  /// A new checkout is created. 
@JsonKey(name: CHECKOUT_CREATED) checkout_created
  /// A checkout is updated. It also triggers all updates related to the checkout. 
@JsonKey(name: CHECKOUT_UPDATED) checkout_updated
  /// A new collection is created. 
@JsonKey(name: COLLECTION_CREATED) collection_created
  /// A collection is deleted. 
@JsonKey(name: COLLECTION_DELETED) collection_deleted
  /// A collection is updated. 
@JsonKey(name: COLLECTION_UPDATED) collection_updated
  /// A new customer account is created. 
@JsonKey(name: CUSTOMER_CREATED) customer_created
  /// A customer account is deleted. 
@JsonKey(name: CUSTOMER_DELETED) customer_deleted
  /// A customer account is updated. 
@JsonKey(name: CUSTOMER_UPDATED) customer_updated
  /// A draft order is created. 
@JsonKey(name: DRAFT_ORDER_CREATED) draft_order_created
  /// A draft order is deleted. 
@JsonKey(name: DRAFT_ORDER_DELETED) draft_order_deleted
  /// A draft order is updated. 
@JsonKey(name: DRAFT_ORDER_UPDATED) draft_order_updated
  /// A fulfillment is approved. 
@JsonKey(name: FULFILLMENT_APPROVED) fulfillment_approved
  /// A fulfillment is cancelled. 
@JsonKey(name: FULFILLMENT_CANCELED) fulfillment_canceled
  /// A new fulfillment is created. 
@JsonKey(name: FULFILLMENT_CREATED) fulfillment_created
  /// A new gift card created. 
@JsonKey(name: GIFT_CARD_CREATED) gift_card_created
  /// A gift card is deleted. 
@JsonKey(name: GIFT_CARD_DELETED) gift_card_deleted
  /// A gift card status is changed. 
@JsonKey(name: GIFT_CARD_STATUS_CHANGED) gift_card_status_changed
  /// A gift card is updated. 
@JsonKey(name: GIFT_CARD_UPDATED) gift_card_updated
  /// An invoice is deleted. 
@JsonKey(name: INVOICE_DELETED) invoice_deleted
  /// An invoice for order requested. 
@JsonKey(name: INVOICE_REQUESTED) invoice_requested
  /// Invoice has been sent. 
@JsonKey(name: INVOICE_SENT) invoice_sent
  /// A new menu created. 
@JsonKey(name: MENU_CREATED) menu_created
  /// A menu is deleted. 
@JsonKey(name: MENU_DELETED) menu_deleted
  /// A new menu item created. 
@JsonKey(name: MENU_ITEM_CREATED) menu_item_created
  /// A menu item is deleted. 
@JsonKey(name: MENU_ITEM_DELETED) menu_item_deleted
  /// A menu item is updated. 
@JsonKey(name: MENU_ITEM_UPDATED) menu_item_updated
  /// A menu is updated. 
@JsonKey(name: MENU_UPDATED) menu_updated
  /// User notification triggered. 
@JsonKey(name: NOTIFY_USER) notify_user
  /// An observability event is created. 
@JsonKey(name: OBSERVABILITY) observability
  /// An order is cancelled. 
@JsonKey(name: ORDER_CANCELLED) order_cancelled
  /// An order is confirmed (status change unconfirmed -> unfulfilled) by a staff user using the OrderConfirm mutation. It also triggers when the user completes the checkout and the shop setting `automatically_confirm_all_new_orders` is enabled. 
@JsonKey(name: ORDER_CONFIRMED) order_confirmed
  /// A new order is placed. 
@JsonKey(name: ORDER_CREATED) order_created
  /// An order is fulfilled. 
@JsonKey(name: ORDER_FULFILLED) order_fulfilled
  /// Payment is made and an order is fully paid. 
@JsonKey(name: ORDER_FULLY_PAID) order_fully_paid
  /// An order is updated; triggered for all changes related to an order; covers all other order webhooks, except for ORDER_CREATED. 
@JsonKey(name: ORDER_UPDATED) order_updated
  /// A new page is created. 
@JsonKey(name: PAGE_CREATED) page_created
  /// A page is deleted. 
@JsonKey(name: PAGE_DELETED) page_deleted
  /// A new page type is created. 
@JsonKey(name: PAGE_TYPE_CREATED) page_type_created
  /// A page type is deleted. 
@JsonKey(name: PAGE_TYPE_DELETED) page_type_deleted
  /// A page type is updated. 
@JsonKey(name: PAGE_TYPE_UPDATED) page_type_updated
  /// A page is updated. 
@JsonKey(name: PAGE_UPDATED) page_updated
  /// A new permission group is created. 
@JsonKey(name: PERMISSION_GROUP_CREATED) permission_group_created
  /// A permission group is deleted. 
@JsonKey(name: PERMISSION_GROUP_DELETED) permission_group_deleted
  /// A permission group is updated. 
@JsonKey(name: PERMISSION_GROUP_UPDATED) permission_group_updated
  /// A new product is created. 
@JsonKey(name: PRODUCT_CREATED) product_created
  /// A product is deleted. 
@JsonKey(name: PRODUCT_DELETED) product_deleted
  /// A product is updated. 
@JsonKey(name: PRODUCT_UPDATED) product_updated
  /// A product variant is back in stock. 
@JsonKey(name: PRODUCT_VARIANT_BACK_IN_STOCK) product_variant_back_in_stock
  /// A new product variant is created. 
@JsonKey(name: PRODUCT_VARIANT_CREATED) product_variant_created
  /// A product variant is deleted. 
@JsonKey(name: PRODUCT_VARIANT_DELETED) product_variant_deleted
  /// A product variant is out of stock. 
@JsonKey(name: PRODUCT_VARIANT_OUT_OF_STOCK) product_variant_out_of_stock
  /// A product variant is updated. 
@JsonKey(name: PRODUCT_VARIANT_UPDATED) product_variant_updated
  /// A sale is created. 
@JsonKey(name: SALE_CREATED) sale_created
  /// A sale is deleted. 
@JsonKey(name: SALE_DELETED) sale_deleted
  /// A sale is activated or deactivated. 
@JsonKey(name: SALE_TOGGLE) sale_toggle
  /// A sale is updated. 
@JsonKey(name: SALE_UPDATED) sale_updated
  /// A new shipping price is created. 
@JsonKey(name: SHIPPING_PRICE_CREATED) shipping_price_created
  /// A shipping price is deleted. 
@JsonKey(name: SHIPPING_PRICE_DELETED) shipping_price_deleted
  /// A shipping price is updated. 
@JsonKey(name: SHIPPING_PRICE_UPDATED) shipping_price_updated
  /// A new shipping zone is created. 
@JsonKey(name: SHIPPING_ZONE_CREATED) shipping_zone_created
  /// A shipping zone is deleted. 
@JsonKey(name: SHIPPING_ZONE_DELETED) shipping_zone_deleted
  /// A shipping zone is updated. 
@JsonKey(name: SHIPPING_ZONE_UPDATED) shipping_zone_updated
  /// A new staff user is created. 
@JsonKey(name: STAFF_CREATED) staff_created
  /// A staff user is deleted. 
@JsonKey(name: STAFF_DELETED) staff_deleted
  /// A staff user is updated. 
@JsonKey(name: STAFF_UPDATED) staff_updated
  /// An action requested for transaction. 
@JsonKey(name: TRANSACTION_ACTION_REQUEST) transaction_action_request
  /// A new translation is created. 
@JsonKey(name: TRANSLATION_CREATED) translation_created
  /// A translation is updated. 
@JsonKey(name: TRANSLATION_UPDATED) translation_updated
  /// A new voucher created. 
@JsonKey(name: VOUCHER_CREATED) voucher_created
  /// A voucher is deleted. 
@JsonKey(name: VOUCHER_DELETED) voucher_deleted
  /// A voucher is updated. 
@JsonKey(name: VOUCHER_UPDATED) voucher_updated
  /// A new warehouse created. 
@JsonKey(name: WAREHOUSE_CREATED) warehouse_created
  /// A warehouse is deleted. 
@JsonKey(name: WAREHOUSE_DELETED) warehouse_deleted
  /// A warehouse is updated. 
@JsonKey(name: WAREHOUSE_UPDATED) warehouse_updated
}

enum WebhookEventTypeEnum{
  /// A new address created. 
@JsonKey(name: ADDRESS_CREATED) address_created
  /// An address deleted. 
@JsonKey(name: ADDRESS_DELETED) address_deleted
  /// An address updated. 
@JsonKey(name: ADDRESS_UPDATED) address_updated
  /// All the events. 
@JsonKey(name: ANY_EVENTS) any_events
  /// An app deleted. 
@JsonKey(name: APP_DELETED) app_deleted
  /// A new app installed. 
@JsonKey(name: APP_INSTALLED) app_installed
  /// An app status is changed. 
@JsonKey(name: APP_STATUS_CHANGED) app_status_changed
  /// An app updated. 
@JsonKey(name: APP_UPDATED) app_updated
  /// A new attribute is created. 
@JsonKey(name: ATTRIBUTE_CREATED) attribute_created
  /// An attribute is deleted. 
@JsonKey(name: ATTRIBUTE_DELETED) attribute_deleted
  /// An attribute is updated. 
@JsonKey(name: ATTRIBUTE_UPDATED) attribute_updated
  /// A new attribute value is created. 
@JsonKey(name: ATTRIBUTE_VALUE_CREATED) attribute_value_created
  /// An attribute value is deleted. 
@JsonKey(name: ATTRIBUTE_VALUE_DELETED) attribute_value_deleted
  /// An attribute value is updated. 
@JsonKey(name: ATTRIBUTE_VALUE_UPDATED) attribute_value_updated
  /// A new category created. 
@JsonKey(name: CATEGORY_CREATED) category_created
  /// A category is deleted. 
@JsonKey(name: CATEGORY_DELETED) category_deleted
  /// A category is updated. 
@JsonKey(name: CATEGORY_UPDATED) category_updated
  /// A new channel created. 
@JsonKey(name: CHANNEL_CREATED) channel_created
  /// A channel is deleted. 
@JsonKey(name: CHANNEL_DELETED) channel_deleted
  /// A channel status is changed. 
@JsonKey(name: CHANNEL_STATUS_CHANGED) channel_status_changed
  /// A channel is updated. 
@JsonKey(name: CHANNEL_UPDATED) channel_updated
  /// Event called for checkout tax calculation.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@JsonKey(name: CHECKOUT_CALCULATE_TAXES) checkout_calculate_taxes
  /// A new checkout is created. 
@JsonKey(name: CHECKOUT_CREATED) checkout_created
  /// Filter shipping methods for checkout. 
@JsonKey(name: CHECKOUT_FILTER_SHIPPING_METHODS) checkout_filter_shipping_methods
  /// A checkout is updated. It also triggers all updates related to the checkout. 
@JsonKey(name: CHECKOUT_UPDATED) checkout_updated
  /// A new collection is created. 
@JsonKey(name: COLLECTION_CREATED) collection_created
  /// A collection is deleted. 
@JsonKey(name: COLLECTION_DELETED) collection_deleted
  /// A collection is updated. 
@JsonKey(name: COLLECTION_UPDATED) collection_updated
  /// A new customer account is created. 
@JsonKey(name: CUSTOMER_CREATED) customer_created
  /// A customer account is deleted. 
@JsonKey(name: CUSTOMER_DELETED) customer_deleted
  /// A customer account is updated. 
@JsonKey(name: CUSTOMER_UPDATED) customer_updated
  /// A draft order is created. 
@JsonKey(name: DRAFT_ORDER_CREATED) draft_order_created
  /// A draft order is deleted. 
@JsonKey(name: DRAFT_ORDER_DELETED) draft_order_deleted
  /// A draft order is updated. 
@JsonKey(name: DRAFT_ORDER_UPDATED) draft_order_updated
  /// A fulfillment is approved. 
@JsonKey(name: FULFILLMENT_APPROVED) fulfillment_approved
  /// A fulfillment is cancelled. 
@JsonKey(name: FULFILLMENT_CANCELED) fulfillment_canceled
  /// A new fulfillment is created. 
@JsonKey(name: FULFILLMENT_CREATED) fulfillment_created
  /// A new gift card created. 
@JsonKey(name: GIFT_CARD_CREATED) gift_card_created
  /// A gift card is deleted. 
@JsonKey(name: GIFT_CARD_DELETED) gift_card_deleted
  /// A gift card status is changed. 
@JsonKey(name: GIFT_CARD_STATUS_CHANGED) gift_card_status_changed
  /// A gift card is updated. 
@JsonKey(name: GIFT_CARD_UPDATED) gift_card_updated
  /// An invoice is deleted. 
@JsonKey(name: INVOICE_DELETED) invoice_deleted
  /// An invoice for order requested. 
@JsonKey(name: INVOICE_REQUESTED) invoice_requested
  /// Invoice has been sent. 
@JsonKey(name: INVOICE_SENT) invoice_sent
  /// A new menu created. 
@JsonKey(name: MENU_CREATED) menu_created
  /// A menu is deleted. 
@JsonKey(name: MENU_DELETED) menu_deleted
  /// A new menu item created. 
@JsonKey(name: MENU_ITEM_CREATED) menu_item_created
  /// A menu item is deleted. 
@JsonKey(name: MENU_ITEM_DELETED) menu_item_deleted
  /// A menu item is updated. 
@JsonKey(name: MENU_ITEM_UPDATED) menu_item_updated
  /// A menu is updated. 
@JsonKey(name: MENU_UPDATED) menu_updated
  /// User notification triggered. 
@JsonKey(name: NOTIFY_USER) notify_user
  /// An observability event is created. 
@JsonKey(name: OBSERVABILITY) observability
  /// Event called for order tax calculation.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@JsonKey(name: ORDER_CALCULATE_TAXES) order_calculate_taxes
  /// An order is cancelled. 
@JsonKey(name: ORDER_CANCELLED) order_cancelled
  /// An order is confirmed (status change unconfirmed -> unfulfilled) by a staff user using the OrderConfirm mutation. It also triggers when the user completes the checkout and the shop setting `automatically_confirm_all_new_orders` is enabled. 
@JsonKey(name: ORDER_CONFIRMED) order_confirmed
  /// A new order is placed. 
@JsonKey(name: ORDER_CREATED) order_created
  /// Filter shipping methods for order. 
@JsonKey(name: ORDER_FILTER_SHIPPING_METHODS) order_filter_shipping_methods
  /// An order is fulfilled. 
@JsonKey(name: ORDER_FULFILLED) order_fulfilled
  /// Payment is made and an order is fully paid. 
@JsonKey(name: ORDER_FULLY_PAID) order_fully_paid
  /// An order is updated; triggered for all changes related to an order; covers all other order webhooks, except for ORDER_CREATED. 
@JsonKey(name: ORDER_UPDATED) order_updated
  /// A new page is created. 
@JsonKey(name: PAGE_CREATED) page_created
  /// A page is deleted. 
@JsonKey(name: PAGE_DELETED) page_deleted
  /// A new page type is created. 
@JsonKey(name: PAGE_TYPE_CREATED) page_type_created
  /// A page type is deleted. 
@JsonKey(name: PAGE_TYPE_DELETED) page_type_deleted
  /// A page type is updated. 
@JsonKey(name: PAGE_TYPE_UPDATED) page_type_updated
  /// A page is updated. 
@JsonKey(name: PAGE_UPDATED) page_updated
  /// Authorize payment. 
@JsonKey(name: PAYMENT_AUTHORIZE) payment_authorize
  /// Capture payment. 
@JsonKey(name: PAYMENT_CAPTURE) payment_capture
  /// Confirm payment. 
@JsonKey(name: PAYMENT_CONFIRM) payment_confirm
  /// Listing available payment gateways. 
@JsonKey(name: PAYMENT_LIST_GATEWAYS) payment_list_gateways
  /// Process payment. 
@JsonKey(name: PAYMENT_PROCESS) payment_process
  /// Refund payment. 
@JsonKey(name: PAYMENT_REFUND) payment_refund
  /// Void payment. 
@JsonKey(name: PAYMENT_VOID) payment_void
  /// A new permission group is created. 
@JsonKey(name: PERMISSION_GROUP_CREATED) permission_group_created
  /// A permission group is deleted. 
@JsonKey(name: PERMISSION_GROUP_DELETED) permission_group_deleted
  /// A permission group is updated. 
@JsonKey(name: PERMISSION_GROUP_UPDATED) permission_group_updated
  /// A new product is created. 
@JsonKey(name: PRODUCT_CREATED) product_created
  /// A product is deleted. 
@JsonKey(name: PRODUCT_DELETED) product_deleted
  /// A product is updated. 
@JsonKey(name: PRODUCT_UPDATED) product_updated
  /// A product variant is back in stock. 
@JsonKey(name: PRODUCT_VARIANT_BACK_IN_STOCK) product_variant_back_in_stock
  /// A new product variant is created. 
@JsonKey(name: PRODUCT_VARIANT_CREATED) product_variant_created
  /// A product variant is deleted. 
@JsonKey(name: PRODUCT_VARIANT_DELETED) product_variant_deleted
  /// A product variant is out of stock. 
@JsonKey(name: PRODUCT_VARIANT_OUT_OF_STOCK) product_variant_out_of_stock
  /// A product variant is updated. 
@JsonKey(name: PRODUCT_VARIANT_UPDATED) product_variant_updated
  /// A sale is created. 
@JsonKey(name: SALE_CREATED) sale_created
  /// A sale is deleted. 
@JsonKey(name: SALE_DELETED) sale_deleted
  /// A sale is activated or deactivated. 
@JsonKey(name: SALE_TOGGLE) sale_toggle
  /// A sale is updated. 
@JsonKey(name: SALE_UPDATED) sale_updated
  /// Fetch external shipping methods for checkout. 
@JsonKey(name: SHIPPING_LIST_METHODS_FOR_CHECKOUT) shipping_list_methods_for_checkout
  /// A new shipping price is created. 
@JsonKey(name: SHIPPING_PRICE_CREATED) shipping_price_created
  /// A shipping price is deleted. 
@JsonKey(name: SHIPPING_PRICE_DELETED) shipping_price_deleted
  /// A shipping price is updated. 
@JsonKey(name: SHIPPING_PRICE_UPDATED) shipping_price_updated
  /// A new shipping zone is created. 
@JsonKey(name: SHIPPING_ZONE_CREATED) shipping_zone_created
  /// A shipping zone is deleted. 
@JsonKey(name: SHIPPING_ZONE_DELETED) shipping_zone_deleted
  /// A shipping zone is updated. 
@JsonKey(name: SHIPPING_ZONE_UPDATED) shipping_zone_updated
  /// A new staff user is created. 
@JsonKey(name: STAFF_CREATED) staff_created
  /// A staff user is deleted. 
@JsonKey(name: STAFF_DELETED) staff_deleted
  /// A staff user is updated. 
@JsonKey(name: STAFF_UPDATED) staff_updated
  /// An action requested for transaction. 
@JsonKey(name: TRANSACTION_ACTION_REQUEST) transaction_action_request
  /// A new translation is created. 
@JsonKey(name: TRANSLATION_CREATED) translation_created
  /// A translation is updated. 
@JsonKey(name: TRANSLATION_UPDATED) translation_updated
  /// A new voucher created. 
@JsonKey(name: VOUCHER_CREATED) voucher_created
  /// A voucher is deleted. 
@JsonKey(name: VOUCHER_DELETED) voucher_deleted
  /// A voucher is updated. 
@JsonKey(name: VOUCHER_UPDATED) voucher_updated
  /// A new warehouse created. 
@JsonKey(name: WAREHOUSE_CREATED) warehouse_created
  /// A warehouse is deleted. 
@JsonKey(name: WAREHOUSE_DELETED) warehouse_deleted
  /// A warehouse is updated. 
@JsonKey(name: WAREHOUSE_UPDATED) warehouse_updated
}

enum WebhookEventTypeSyncEnum{
  /// Event called for checkout tax calculation.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@JsonKey(name: CHECKOUT_CALCULATE_TAXES) checkout_calculate_taxes
  /// Filter shipping methods for checkout. 
@JsonKey(name: CHECKOUT_FILTER_SHIPPING_METHODS) checkout_filter_shipping_methods
  /// Event called for order tax calculation.

Added in Saleor 3.6.

Note: this API is currently in Feature Preview and can be subject to changes at later point. 
@JsonKey(name: ORDER_CALCULATE_TAXES) order_calculate_taxes
  /// Filter shipping methods for order. 
@JsonKey(name: ORDER_FILTER_SHIPPING_METHODS) order_filter_shipping_methods
  /// Authorize payment. 
@JsonKey(name: PAYMENT_AUTHORIZE) payment_authorize
  /// Capture payment. 
@JsonKey(name: PAYMENT_CAPTURE) payment_capture
  /// Confirm payment. 
@JsonKey(name: PAYMENT_CONFIRM) payment_confirm
  /// Listing available payment gateways. 
@JsonKey(name: PAYMENT_LIST_GATEWAYS) payment_list_gateways
  /// Process payment. 
@JsonKey(name: PAYMENT_PROCESS) payment_process
  /// Refund payment. 
@JsonKey(name: PAYMENT_REFUND) payment_refund
  /// Void payment. 
@JsonKey(name: PAYMENT_VOID) payment_void
  /// Fetch external shipping methods for checkout. 
@JsonKey(name: SHIPPING_LIST_METHODS_FOR_CHECKOUT) shipping_list_methods_for_checkout
}

enum WebhookSampleEventTypeEnum{
  @JsonKey(name: ADDRESS_CREATED) address_created
  @JsonKey(name: ADDRESS_DELETED) address_deleted
  @JsonKey(name: ADDRESS_UPDATED) address_updated
  @JsonKey(name: APP_DELETED) app_deleted
  @JsonKey(name: APP_INSTALLED) app_installed
  @JsonKey(name: APP_STATUS_CHANGED) app_status_changed
  @JsonKey(name: APP_UPDATED) app_updated
  @JsonKey(name: ATTRIBUTE_CREATED) attribute_created
  @JsonKey(name: ATTRIBUTE_DELETED) attribute_deleted
  @JsonKey(name: ATTRIBUTE_UPDATED) attribute_updated
  @JsonKey(name: ATTRIBUTE_VALUE_CREATED) attribute_value_created
  @JsonKey(name: ATTRIBUTE_VALUE_DELETED) attribute_value_deleted
  @JsonKey(name: ATTRIBUTE_VALUE_UPDATED) attribute_value_updated
  @JsonKey(name: CATEGORY_CREATED) category_created
  @JsonKey(name: CATEGORY_DELETED) category_deleted
  @JsonKey(name: CATEGORY_UPDATED) category_updated
  @JsonKey(name: CHANNEL_CREATED) channel_created
  @JsonKey(name: CHANNEL_DELETED) channel_deleted
  @JsonKey(name: CHANNEL_STATUS_CHANGED) channel_status_changed
  @JsonKey(name: CHANNEL_UPDATED) channel_updated
  @JsonKey(name: CHECKOUT_CREATED) checkout_created
  @JsonKey(name: CHECKOUT_UPDATED) checkout_updated
  @JsonKey(name: COLLECTION_CREATED) collection_created
  @JsonKey(name: COLLECTION_DELETED) collection_deleted
  @JsonKey(name: COLLECTION_UPDATED) collection_updated
  @JsonKey(name: CUSTOMER_CREATED) customer_created
  @JsonKey(name: CUSTOMER_DELETED) customer_deleted
  @JsonKey(name: CUSTOMER_UPDATED) customer_updated
  @JsonKey(name: DRAFT_ORDER_CREATED) draft_order_created
  @JsonKey(name: DRAFT_ORDER_DELETED) draft_order_deleted
  @JsonKey(name: DRAFT_ORDER_UPDATED) draft_order_updated
  @JsonKey(name: FULFILLMENT_APPROVED) fulfillment_approved
  @JsonKey(name: FULFILLMENT_CANCELED) fulfillment_canceled
  @JsonKey(name: FULFILLMENT_CREATED) fulfillment_created
  @JsonKey(name: GIFT_CARD_CREATED) gift_card_created
  @JsonKey(name: GIFT_CARD_DELETED) gift_card_deleted
  @JsonKey(name: GIFT_CARD_STATUS_CHANGED) gift_card_status_changed
  @JsonKey(name: GIFT_CARD_UPDATED) gift_card_updated
  @JsonKey(name: INVOICE_DELETED) invoice_deleted
  @JsonKey(name: INVOICE_REQUESTED) invoice_requested
  @JsonKey(name: INVOICE_SENT) invoice_sent
  @JsonKey(name: MENU_CREATED) menu_created
  @JsonKey(name: MENU_DELETED) menu_deleted
  @JsonKey(name: MENU_ITEM_CREATED) menu_item_created
  @JsonKey(name: MENU_ITEM_DELETED) menu_item_deleted
  @JsonKey(name: MENU_ITEM_UPDATED) menu_item_updated
  @JsonKey(name: MENU_UPDATED) menu_updated
  @JsonKey(name: NOTIFY_USER) notify_user
  @JsonKey(name: OBSERVABILITY) observability
  @JsonKey(name: ORDER_CANCELLED) order_cancelled
  @JsonKey(name: ORDER_CONFIRMED) order_confirmed
  @JsonKey(name: ORDER_CREATED) order_created
  @JsonKey(name: ORDER_FULFILLED) order_fulfilled
  @JsonKey(name: ORDER_FULLY_PAID) order_fully_paid
  @JsonKey(name: ORDER_UPDATED) order_updated
  @JsonKey(name: PAGE_CREATED) page_created
  @JsonKey(name: PAGE_DELETED) page_deleted
  @JsonKey(name: PAGE_TYPE_CREATED) page_type_created
  @JsonKey(name: PAGE_TYPE_DELETED) page_type_deleted
  @JsonKey(name: PAGE_TYPE_UPDATED) page_type_updated
  @JsonKey(name: PAGE_UPDATED) page_updated
  @JsonKey(name: PERMISSION_GROUP_CREATED) permission_group_created
  @JsonKey(name: PERMISSION_GROUP_DELETED) permission_group_deleted
  @JsonKey(name: PERMISSION_GROUP_UPDATED) permission_group_updated
  @JsonKey(name: PRODUCT_CREATED) product_created
  @JsonKey(name: PRODUCT_DELETED) product_deleted
  @JsonKey(name: PRODUCT_UPDATED) product_updated
  @JsonKey(name: PRODUCT_VARIANT_BACK_IN_STOCK) product_variant_back_in_stock
  @JsonKey(name: PRODUCT_VARIANT_CREATED) product_variant_created
  @JsonKey(name: PRODUCT_VARIANT_DELETED) product_variant_deleted
  @JsonKey(name: PRODUCT_VARIANT_OUT_OF_STOCK) product_variant_out_of_stock
  @JsonKey(name: PRODUCT_VARIANT_UPDATED) product_variant_updated
  @JsonKey(name: SALE_CREATED) sale_created
  @JsonKey(name: SALE_DELETED) sale_deleted
  @JsonKey(name: SALE_TOGGLE) sale_toggle
  @JsonKey(name: SALE_UPDATED) sale_updated
  @JsonKey(name: SHIPPING_PRICE_CREATED) shipping_price_created
  @JsonKey(name: SHIPPING_PRICE_DELETED) shipping_price_deleted
  @JsonKey(name: SHIPPING_PRICE_UPDATED) shipping_price_updated
  @JsonKey(name: SHIPPING_ZONE_CREATED) shipping_zone_created
  @JsonKey(name: SHIPPING_ZONE_DELETED) shipping_zone_deleted
  @JsonKey(name: SHIPPING_ZONE_UPDATED) shipping_zone_updated
  @JsonKey(name: STAFF_CREATED) staff_created
  @JsonKey(name: STAFF_DELETED) staff_deleted
  @JsonKey(name: STAFF_UPDATED) staff_updated
  @JsonKey(name: TRANSACTION_ACTION_REQUEST) transaction_action_request
  @JsonKey(name: TRANSLATION_CREATED) translation_created
  @JsonKey(name: TRANSLATION_UPDATED) translation_updated
  @JsonKey(name: VOUCHER_CREATED) voucher_created
  @JsonKey(name: VOUCHER_DELETED) voucher_deleted
  @JsonKey(name: VOUCHER_UPDATED) voucher_updated
  @JsonKey(name: WAREHOUSE_CREATED) warehouse_created
  @JsonKey(name: WAREHOUSE_DELETED) warehouse_deleted
  @JsonKey(name: WAREHOUSE_UPDATED) warehouse_updated
}

/// Updates a webhook subscription. 

Requires one of the following permissions: MANAGE_APPS. 
@freezed
class WebhookUpdate with _$WebhookUpdate {
  const WebhookUpdate._();

  /// Updates a webhook subscription. 

Requires one of the following permissions: MANAGE_APPS. 
  const factory WebhookUpdate({
    required List<WebhookError> errors,
    Webhook? webhook,
    required List<WebhookError> webhookErrors,
  }) = _WebhookUpdate;

  factory WebhookUpdate.fromJson(Map<String, Object?> json) => _WebhookUpdateFromJson(json);
}

@unfreezed
class WebhookUpdateInput with _$WebhookUpdateInput {
  const WebhookUpdateInput._();

  const factory WebhookUpdateInput({
    /// ID of the app to which webhook belongs.
    String? app,
    /// The asynchronous events that webhook wants to subscribe.
    List<WebhookEventTypeAsyncEnum>? asyncEvents,
    /// The events that webhook wants to subscribe. 

DEPRECATED: this field will be removed in Saleor 4.0. Use `asyncEvents` or `syncEvents` instead.
    List<WebhookEventTypeEnum>? events,
    /// Determine if webhook will be set active or not.
    bool? isActive,
    /// The new name of the webhook.
    String? name,
    /// Subscription query used to define a webhook payload.

Added in Saleor 3.2.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? query,
    /// Use to create a hash signature with each payload.

DEPRECATED: this field will be removed in Saleor 4.0. As of Saleor 3.5, webhook payloads default to signing using a verifiable JWS.
    String? secretKey,
    /// The synchronous events that webhook wants to subscribe.
    List<WebhookEventTypeSyncEnum>? syncEvents,
    /// The url to receive the payload.
    String? targetUrl,
  }) = _WebhookUpdateInput;

  factory WebhookUpdateInput.fromJson(Map<String, Object?> json) => _WebhookUpdateInputFromJson(json);
}

/// Represents weight value in a specific weight unit. 
@freezed
class Weight with _$Weight {
  const Weight._();

  /// Represents weight value in a specific weight unit. 
  const factory Weight({
    /// Weight unit.
    required WeightUnitsEnum unit,
    /// Weight value.
    required double value,
  }) = _Weight;

  factory Weight.fromJson(Map<String, Object?> json) => _WeightFromJson(json);
}

enum WeightUnitsEnum{
  @JsonKey(name: G) g
  @JsonKey(name: KG) kg
  @JsonKey(name: LB) lb
  @JsonKey(name: OZ) oz
  @JsonKey(name: TONNE) tonne
}

/// _Entity union as defined by Federation spec. 
@freezed
class Entity with _$Entity {
  const Entity._();

  const factory Entity() = _Entity;

  /// Represents user address data. 
  const factory Entity.address({
    required String city,
    required String cityArea,
    required String companyName,
    /// Shop's default country.
    required CountryDisplay country,
    required String countryArea,
    required String firstName,
    required String id,
    /// Address is user's default billing address.
    bool? isDefaultBillingAddress,
    /// Address is user's default shipping address.
    bool? isDefaultShippingAddress,
    required String lastName,
    String? phone,
    required String postalCode,
    required String streetAddress1,
    required String streetAddress2,
  }) = Address;

  /// Represents app data. 
  const factory Entity.app({
    /// Description of this app.
    String? aboutApp,
    /// JWT token used to authenticate by thridparty app.
    String? accessToken,
    /// URL to iframe with the app.
    String? appUrl,
    /// URL to iframe with the configuration for the app.
    String? configurationUrl,
    /// The date and time when the app was created.
    DateTime? created,
    /// Description of the data privacy defined for this app.
    String? dataPrivacy,
    /// URL to details about the privacy policy on the app owner page.
    String? dataPrivacyUrl,
    /// App's dashboard extensions.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    required List<AppExtension> extensions,
    /// Homepage of the app.
    String? homepageUrl,
    required String id,
    /// Determine if app will be set active or not.
    bool? isActive,
    /// URL to manifest used during app's installation.

Added in Saleor 3.5.
    String? manifestUrl,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// Name of the app.
    String? name,
    /// List of the app's permissions.
    List<Permission>? permissions,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Support page for the app.
    String? supportUrl,
    /// Last 4 characters of the tokens.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    List<AppToken>? tokens,
    /// Type of the app.
    AppTypeEnum? type,
    /// Version number of the app.
    String? version,
    /// List of webhooks assigned to this app.

Requires one of the following permissions: MANAGE_APPS, OWNER.
    List<Webhook>? webhooks,
  }) = App;

  /// Represents a single category of products. Categories allow to organize products in a tree-hierarchies which can be used for navigation in the storefront. 
  const factory Entity.category({
    /// List of ancestors of the category.
    CategoryCountableConnection? ancestors,
    Image? backgroundImage,
    /// List of children of the category.
    CategoryCountableConnection? children,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the category.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    required int level,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    Category? parent,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of products in the category. Requires the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    ProductCountableConnection? products,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    /// Returns translated category fields for the given language code.
    CategoryTranslation? translation,
  }) = Category;

  /// Represents a collection of products. 
  const factory Entity.collection({
    Image? backgroundImage,
    /// Channel given to retrieve this collection. Also used by federation gateway to resolve this object in a federated query.
    String? channel,
    /// List of channels in which the collection is available.

Requires one of the following permissions: MANAGE_PRODUCTS.
    List<CollectionChannelListing>? channelListings,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the collection.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of products in this collection.
    ProductCountableConnection? products,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    /// Returns translated collection fields for the given language code.
    CollectionTranslation? translation,
  }) = Collection;

  /// Represents permission group data. 
  const factory Entity.group({
    required String id,
    required String name,
    /// List of group permissions
    List<Permission>? permissions,
    /// True, if the currently authenticated user has rights to manage a group.
    required bool userCanManage,
    /// List of group users

Requires one of the following permissions: MANAGE_STAFF.
    List<User>? users,
  }) = Group;

  /// Represents a type of page. It defines what attributes are available to pages of this type. 
  const factory Entity.pageType({
    /// Page attributes of that page type.
    List<Attribute>? attributes,
    /// Attributes that can be assigned to the page type.

Requires one of the following permissions: MANAGE_PAGES.
    AttributeCountableConnection? availableAttributes,
    /// Whether page type has pages assigned.

Requires one of the following permissions: MANAGE_PAGES.
    bool? hasPages,
    required String id,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required String slug,
  }) = PageType;

  /// Represents an individual item for sale in the storefront. 
  const factory Entity.product({
    /// List of attributes assigned to this product.
    required List<SelectedAttribute> attributes,
    /// Date when product is available for purchase.
    Date? availableForPurchase,
    /// Date when product is available for purchase.
    DateTime? availableForPurchaseAt,
    Category? category,
    /// Channel given to retrieve this product. Also used by federation gateway to resolve this object in a federated query.
    String? channel,
    /// List of availability in channels for the product.

Requires one of the following permissions: MANAGE_PRODUCTS.
    List<ProductChannelListing>? channelListings,
    required bool chargeTaxes,
    /// List of collections for the product. Requires the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    List<Collection>? collections,
    required DateTime created,
    ProductVariant? defaultVariant,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? description,
    /// Description of the product.

Rich text format. For reference see https://editorjs.io/
    JSONString? descriptionJson,
    required String id,
    /// Get a single product image by ID.
    ProductImage? imageById,
    /// List of images for the product.
    List<ProductImage>? images,
    /// Whether the product is in stock and visible or not.
    bool? isAvailable,
    /// Whether the product is available for purchase.
    bool? isAvailableForPurchase,
    /// List of media for the product.
    List<ProductMedia>? media,
    /// Get a single product media by ID.
    ProductMedia? mediaById,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// Lists the storefront product's pricing, the current price and discounts, only meant for displaying.
    ProductPricingInfo? pricing,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required ProductType productType,
    double? rating,
    String? seoDescription,
    String? seoTitle,
    required String slug,
    /// A type of tax. Assigned by enabled tax gateway
    TaxType? taxType,
    Image? thumbnail,
    /// Returns translated product fields for the given language code.
    ProductTranslation? translation,
    required DateTime updatedAt,
    /// List of variants for the product. Requires the following permissions to include the unpublished items: MANAGE_ORDERS, MANAGE_DISCOUNTS, MANAGE_PRODUCTS.
    List<ProductVariant>? variants,
    Weight? weight,
  }) = Product;

  /// Represents a product media. 
  const factory Entity.productMedia({
    required String alt,
    required String id,
    required JSONString oembedData,
    int? sortOrder,
    required ProductMediaType type,
    required String url,
  }) = ProductMedia;

  /// Represents a type of product. It defines what attributes are available to products of this type. 
  const factory Entity.productType({
    /// Variant attributes of that product type with attached variant selection.

Added in Saleor 3.1.
    List<AssignedVariantAttribute>? assignedVariantAttributes,
    /// List of attributes which can be assigned to this product type.

Requires one of the following permissions: MANAGE_PRODUCTS.
    AttributeCountableConnection? availableAttributes,
    required bool hasVariants,
    required String id,
    required bool isDigital,
    required bool isShippingRequired,
    /// The product type kind.
    required ProductTypeKindEnum kind,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// Product attributes of that product type.
    List<Attribute>? productAttributes,
    /// List of products of this type.
    ProductCountableConnection? products,
    required String slug,
    /// A type of tax. Assigned by enabled tax gateway
    TaxType? taxType,
    /// Variant attributes of that product type.
    List<Attribute>? variantAttributes,
    Weight? weight,
  }) = ProductType;

  /// Represents a version of a product such as different size or color. 
  const factory Entity.productVariant({
    /// List of attributes assigned to this variant.
    required List<SelectedAttribute> attributes,
    /// Channel given to retrieve this product variant. Also used by federation gateway to resolve this object in a federated query.
    String? channel,
    /// List of price information in channels for the product.

Requires one of the following permissions: AUTHENTICATED_APP, AUTHENTICATED_STAFF_USER.
    List<ProductVariantChannelListing>? channelListings,
    required DateTime created,
    /// Digital content for the product variant.

Requires one of the following permissions: MANAGE_PRODUCTS.
    DigitalContent? digitalContent,
    required String id,
    /// List of images for the product variant.
    List<ProductImage>? images,
    /// Gross margin percentage value.
    int? margin,
    /// List of media for the product variant.
    List<ProductMedia>? media,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    required String name,
    /// Preorder data for product variant.

Added in Saleor 3.1.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    PreorderData? preorder,
    /// Lists the storefront variant's pricing, the current price and discounts, only meant for displaying.
    VariantPricingInfo? pricing,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    required Product product,
    /// Quantity of a product available for sale in one checkout. Field value will be `null` when no `limitQuantityPerCheckout` in global settings has been set, and `productVariant` stocks are not tracked.
    int? quantityAvailable,
    int? quantityLimitPerCustomer,
    /// Total quantity ordered.

Requires one of the following permissions: MANAGE_PRODUCTS.
    int? quantityOrdered,
    /// Total revenue generated by a variant in given period of time. Note: this field should be queried using `reportProductSales` query as it uses optimizations suitable for such calculations.

Requires one of the following permissions: MANAGE_PRODUCTS.
    TaxedMoney? revenue,
    String? sku,
    /// Stocks for the product variant.

Requires one of the following permissions: MANAGE_PRODUCTS, MANAGE_ORDERS.
    List<Stock>? stocks,
    required bool trackInventory,
    /// Returns translated product variant fields for the given language code.
    ProductVariantTranslation? translation,
    required DateTime updatedAt,
    Weight? weight,
  }) = ProductVariant;

  /// Represents user data. 
  const factory Entity.user({
    /// List of all user's addresses.
    required List<Address> addresses,
    Image? avatar,
    /// Returns the last open checkout of this user.
    Checkout? checkout,
    /// Returns the checkout ID's assigned to this user.
    List<String>? checkoutIds,
    /// Returns the checkout UUID's assigned to this user.
    List<UUID>? checkoutTokens,
    required DateTime dateJoined,
    Address? defaultBillingAddress,
    Address? defaultShippingAddress,
    /// List of user's permission groups which user can manage.
    List<Group>? editableGroups,
    required String email,
    /// List of events associated with the user.

Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF.
    List<CustomerEvent>? events,
    required String firstName,
    /// List of the user gift cards.
    GiftCardCountableConnection? giftCards,
    required String id,
    required bool isActive,
    required bool isStaff,
    /// User language code.
    required LanguageCodeEnum languageCode,
    DateTime? lastLogin,
    required String lastName,
    /// List of public metadata items. Can be accessed without permissions.
    required List<MetadataItem> metadata,
    /// A single key from public metadata.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? metafield,
    /// Public metadata. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? metafields,
    /// A note about the customer.

Requires one of the following permissions: MANAGE_USERS, MANAGE_STAFF.
    String? note,
    /// List of user's orders. Requires one of the following permissions: MANAGE_STAFF, OWNER.
    OrderCountableConnection? orders,
    /// List of user's permission groups.
    List<Group>? permissionGroups,
    /// List of private metadata items. Requires staff permissions to access.
    required List<MetadataItem> privateMetadata,
    /// A single key from private metadata. Requires staff permissions to access.

Tip: Use GraphQL aliases to fetch multiple keys.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    String? privateMetafield,
    /// Private metadata. Requires staff permissions to access. Use `keys` to control which fields you want to include. The default is to include everything.

Added in Saleor 3.3.

Note: this API is currently in Feature Preview and can be subject to changes at later point.
    Metadata? privateMetafields,
    /// List of stored payment sources.
    List<PaymentSource>? storedPaymentSources,
    required DateTime updatedAt,
    /// List of user's permissions.
    List<UserPermission>? userPermissions,
  }) = User;

  factory Entity.fromJson(Map<String, Object?> json) => _EntityFromJson(json);
}

/// _Service manifest as defined by Federation spec. 
@freezed
class Service with _$Service {
  const Service._();

  /// _Service manifest as defined by Federation spec. 
  const factory Service({
    String? sdl,
  }) = _Service;

  factory Service.fromJson(Map<String, Object?> json) => _ServiceFromJson(json);
}