class UserModel {
  User user;

  UserModel({this.user});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['User'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int userId;
  int tenantId;
  Null parentUserId;
  String userName;
  String phoneNumber;
  String email;
  bool phoneVerified;
  bool emailVerified;
  String firstName;
  Null middleName;
  String lastName;
  String userImageURL;
  Null thumbnailImageURL;
  bool activeFlag;
  Null effectiveStartDate;
  Null effectiveEndDate;
  String createdBy;
  String createdDate;
  String lastUpdatedBy;
  String lastUpdatedDate;
  int referenceId;
  bool verified;
  String referenceTypeLKP;
  Null password;
  Null roleCode;
  List<Roles> roles;
  List<Null> natAusExternalIdentity;
  List<NatAusPrivilege> natAusPrivilege;

  User(
      {this.userId,
      this.tenantId,
      this.parentUserId,
      this.userName,
      this.phoneNumber,
      this.email,
      this.phoneVerified,
      this.emailVerified,
      this.firstName,
      this.middleName,
      this.lastName,
      this.userImageURL,
      this.thumbnailImageURL,
      this.activeFlag,
      this.effectiveStartDate,
      this.effectiveEndDate,
      this.createdBy,
      this.createdDate,
      this.lastUpdatedBy,
      this.lastUpdatedDate,
      this.referenceId,
      this.verified,
      this.referenceTypeLKP,
      this.password,
      this.roleCode,
      this.roles,
      this.natAusExternalIdentity,
      this.natAusPrivilege});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    tenantId = json['TenantId'];
    parentUserId = json['ParentUserId'];
    userName = json['UserName'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    phoneVerified = json['PhoneVerified'];
    emailVerified = json['EmailVerified'];
    firstName = json['FirstName'];
    middleName = json['MiddleName'];
    lastName = json['LastName'];
    userImageURL = json['UserImageURL'];
    thumbnailImageURL = json['ThumbnailImageURL'];
    activeFlag = json['ActiveFlag'];
    effectiveStartDate = json['EffectiveStartDate'];
    effectiveEndDate = json['EffectiveEndDate'];
    createdBy = json['CreatedBy'];
    createdDate = json['CreatedDate'];
    lastUpdatedBy = json['LastUpdatedBy'];
    lastUpdatedDate = json['LastUpdatedDate'];
    referenceId = json['ReferenceId'];
    verified = json['Verified'];
    referenceTypeLKP = json['ReferenceTypeLKP'];
    password = json['Password'];
    roleCode = json['RoleCode'];
    if (json['Roles'] != null) {
      roles = new List<Roles>();
      json['Roles'].forEach((v) {
        roles.add(new Roles.fromJson(v));
      });
    }
    // if (json['NatAusExternalIdentity'] != null) {
    //   natAusExternalIdentity = new List<Null>();
    //   json['NatAusExternalIdentity'].forEach((v) {
    //     natAusExternalIdentity.add(new Null.fromJson(v));
    //   });
    // }
    if (json['NatAusPrivilege'] != null) {
      natAusPrivilege = new List<NatAusPrivilege>();
      json['NatAusPrivilege'].forEach((v) {
        natAusPrivilege.add(new NatAusPrivilege.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserId'] = this.userId;
    data['TenantId'] = this.tenantId;
    data['ParentUserId'] = this.parentUserId;
    data['UserName'] = this.userName;
    data['PhoneNumber'] = this.phoneNumber;
    data['Email'] = this.email;
    data['PhoneVerified'] = this.phoneVerified;
    data['EmailVerified'] = this.emailVerified;
    data['FirstName'] = this.firstName;
    data['MiddleName'] = this.middleName;
    data['LastName'] = this.lastName;
    data['UserImageURL'] = this.userImageURL;
    data['ThumbnailImageURL'] = this.thumbnailImageURL;
    data['ActiveFlag'] = this.activeFlag;
    data['EffectiveStartDate'] = this.effectiveStartDate;
    data['EffectiveEndDate'] = this.effectiveEndDate;
    data['CreatedBy'] = this.createdBy;
    data['CreatedDate'] = this.createdDate;
    data['LastUpdatedBy'] = this.lastUpdatedBy;
    data['LastUpdatedDate'] = this.lastUpdatedDate;
    data['ReferenceId'] = this.referenceId;
    data['Verified'] = this.verified;
    data['ReferenceTypeLKP'] = this.referenceTypeLKP;
    data['Password'] = this.password;
    data['RoleCode'] = this.roleCode;
    if (this.roles != null) {
      data['Roles'] = this.roles.map((v) => v.toJson()).toList();
    }
    // if (this.natAusExternalIdentity != null) {
    //   data['NatAusExternalIdentity'] =
    //       this.natAusExternalIdentity.map((v) => v.toJson()).toList();
    // }
    if (this.natAusPrivilege != null) {
      data['NatAusPrivilege'] =
          this.natAusPrivilege.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Roles {
  int roleId;
  int tenantId;
  String roleCode;
  String roleName;
  String roleDescription;
  String roleType;
  bool activeFlag;
  Null effectiveStartDate;
  Null effectiveEndDate;
  Null createdBy;
  Null createdDate;
  Null lastUpdatedBy;
  Null lastUpdatedDate;
  Null natAusUserRoleMapping;
  Null natAusRolePrivilegeMapping;

  Roles(
      {this.roleId,
      this.tenantId,
      this.roleCode,
      this.roleName,
      this.roleDescription,
      this.roleType,
      this.activeFlag,
      this.effectiveStartDate,
      this.effectiveEndDate,
      this.createdBy,
      this.createdDate,
      this.lastUpdatedBy,
      this.lastUpdatedDate,
      this.natAusUserRoleMapping,
      this.natAusRolePrivilegeMapping});

  Roles.fromJson(Map<String, dynamic> json) {
    roleId = json['RoleId'];
    tenantId = json['TenantId'];
    roleCode = json['RoleCode'];
    roleName = json['RoleName'];
    roleDescription = json['RoleDescription'];
    roleType = json['RoleType'];
    activeFlag = json['ActiveFlag'];
    effectiveStartDate = json['EffectiveStartDate'];
    effectiveEndDate = json['EffectiveEndDate'];
    createdBy = json['CreatedBy'];
    createdDate = json['CreatedDate'];
    lastUpdatedBy = json['LastUpdatedBy'];
    lastUpdatedDate = json['LastUpdatedDate'];
    natAusUserRoleMapping = json['NatAusUserRoleMapping'];
    natAusRolePrivilegeMapping = json['NatAusRolePrivilegeMapping'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RoleId'] = this.roleId;
    data['TenantId'] = this.tenantId;
    data['RoleCode'] = this.roleCode;
    data['RoleName'] = this.roleName;
    data['RoleDescription'] = this.roleDescription;
    data['RoleType'] = this.roleType;
    data['ActiveFlag'] = this.activeFlag;
    data['EffectiveStartDate'] = this.effectiveStartDate;
    data['EffectiveEndDate'] = this.effectiveEndDate;
    data['CreatedBy'] = this.createdBy;
    data['CreatedDate'] = this.createdDate;
    data['LastUpdatedBy'] = this.lastUpdatedBy;
    data['LastUpdatedDate'] = this.lastUpdatedDate;
    data['NatAusUserRoleMapping'] = this.natAusUserRoleMapping;
    data['NatAusRolePrivilegeMapping'] = this.natAusRolePrivilegeMapping;
    return data;
  }
}

class NatAusPrivilege {
  int privilegeId;
  int tenantId;
  String privilegeName;
  Null privilegeDescription;
  bool activeFlag;
  Null natAusRolePrivilegeMapping;
  int objectState;

  NatAusPrivilege(
      {this.privilegeId,
      this.tenantId,
      this.privilegeName,
      this.privilegeDescription,
      this.activeFlag,
      this.natAusRolePrivilegeMapping,
      this.objectState});

  NatAusPrivilege.fromJson(Map<String, dynamic> json) {
    privilegeId = json['PrivilegeId'];
    tenantId = json['TenantId'];
    privilegeName = json['PrivilegeName'];
    privilegeDescription = json['PrivilegeDescription'];
    activeFlag = json['ActiveFlag'];
    natAusRolePrivilegeMapping = json['NatAusRolePrivilegeMapping'];
    objectState = json['ObjectState'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PrivilegeId'] = this.privilegeId;
    data['TenantId'] = this.tenantId;
    data['PrivilegeName'] = this.privilegeName;
    data['PrivilegeDescription'] = this.privilegeDescription;
    data['ActiveFlag'] = this.activeFlag;
    data['NatAusRolePrivilegeMapping'] = this.natAusRolePrivilegeMapping;
    data['ObjectState'] = this.objectState;
    return data;
  }
}
