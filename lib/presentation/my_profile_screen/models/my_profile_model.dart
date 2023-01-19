class MyProfileModel {
  int? _id;
  String? _firstname;
  String? _lastname;
  String? _email;
  String? _emailVerifiedAt;
  Null? _twoFactorSecret;
  Null? _twoFactorRecoveryCodes;
  Null? _twoFactorConfirmedAt;
  Null? _currentTeamId;
  Null? _profilePhotoPath;
  String? _createdAt;
  String? _updatedAt;
  Null? _fbId;
  Null? _verificationStatus;

  MyProfileModel(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      Null? emailVerifiedAt,
      Null? twoFactorSecret,
      Null? twoFactorRecoveryCodes,
      Null? twoFactorConfirmedAt,
      Null? currentTeamId,
      Null? profilePhotoPath,
      String? createdAt,
      String? updatedAt,
      Null? fbId,
      Null? verificationStatus}) {
    if (id != null) {
      this._id = id;
    }
    if (firstname != null) {
      this._firstname = firstname;
    }
    if (lastname != null) {
      this._lastname = lastname;
    }
    if (email != null) {
      this._email = email;
    }
    if (emailVerifiedAt != null) {
      this._emailVerifiedAt = emailVerifiedAt;
    }
    if (twoFactorSecret != null) {
      this._twoFactorSecret = twoFactorSecret;
    }
    if (twoFactorRecoveryCodes != null) {
      this._twoFactorRecoveryCodes = twoFactorRecoveryCodes;
    }
    if (twoFactorConfirmedAt != null) {
      this._twoFactorConfirmedAt = twoFactorConfirmedAt;
    }
    if (currentTeamId != null) {
      this._currentTeamId = currentTeamId;
    }
    if (profilePhotoPath != null) {
      this._profilePhotoPath = profilePhotoPath;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (fbId != null) {
      this._fbId = fbId;
    }
    if (verificationStatus != null) {
      this._verificationStatus = verificationStatus;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstname => _firstname;
  set firstname(String? firstname) => _firstname = firstname;
  String? get lastname => _lastname;
  set lastname(String? lastname) => _lastname = lastname;
  String? get email => _email;
  set email(String? email) => _email = email;
  Null? get emailVerifiedAt => _emailVerifiedAt;
  set emailVerifiedAt(Null? emailVerifiedAt) =>
      _emailVerifiedAt = emailVerifiedAt;
  Null? get twoFactorSecret => _twoFactorSecret;
  set twoFactorSecret(Null? twoFactorSecret) =>
      _twoFactorSecret = twoFactorSecret;
  Null? get twoFactorRecoveryCodes => _twoFactorRecoveryCodes;
  set twoFactorRecoveryCodes(Null? twoFactorRecoveryCodes) =>
      _twoFactorRecoveryCodes = twoFactorRecoveryCodes;
  Null? get twoFactorConfirmedAt => _twoFactorConfirmedAt;
  set twoFactorConfirmedAt(Null? twoFactorConfirmedAt) =>
      _twoFactorConfirmedAt = twoFactorConfirmedAt;
  Null? get currentTeamId => _currentTeamId;
  set currentTeamId(Null? currentTeamId) => _currentTeamId = currentTeamId;
  Null? get profilePhotoPath => _profilePhotoPath;
  set profilePhotoPath(Null? profilePhotoPath) =>
      _profilePhotoPath = profilePhotoPath;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  Null? get fbId => _fbId;
  set fbId(Null? fbId) => _fbId = fbId;
  Null? get verificationStatus => _verificationStatus;
  set verificationStatus(Null? verificationStatus) =>
      _verificationStatus = verificationStatus;

  MyProfileModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _twoFactorSecret = json['two_factor_secret'];
    _twoFactorRecoveryCodes = json['two_factor_recovery_codes'];
    _twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    _currentTeamId = json['current_team_id'];
    _profilePhotoPath = json['profile_photo_path'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _fbId = json['fb_id'];
    _verificationStatus = json['verificationStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['firstname'] = this._firstname;
    data['lastname'] = this._lastname;
    data['email'] = this._email;
    data['email_verified_at'] = this._emailVerifiedAt;
    data['two_factor_secret'] = this._twoFactorSecret;
    data['two_factor_recovery_codes'] = this._twoFactorRecoveryCodes;
    data['two_factor_confirmed_at'] = this._twoFactorConfirmedAt;
    data['current_team_id'] = this._currentTeamId;
    data['profile_photo_path'] = this._profilePhotoPath;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['fb_id'] = this._fbId;
    data['verificationStatus'] = this._verificationStatus;
    return data;
  }
}
