// import 'dart:convert';

// import 'package:flutter_bloc_example/models/api_models.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

// class PlayerApiProvider {

//   String baseUrl = "https://www.easports.com/fifa/ultimate-team/api/fut/item?";
//   final successCode = 200;

//   Future<List<Players>> fetchPlayersByCountry(String countryId) async {
//     final response = await http.get(baseUrl + "country=" + countryId);

//     return parseResponse(response);
//   }

//   Future<List<Players>> fetchPlayersByName(String name) async {
//     final response = await http.get(baseUrl+"name="+name);

//     return parseResponse(response);
//   }

//   List<Players> parseResponse(http.Response response) {
//     final responseString = jsonDecode(response.body);

//     if (response.statusCode == successCode) {
//       return ApiResult.fromJson(responseString).items;
//     } else {
//       throw Exception('failed to load players');
//     }
//   }
// }

import "dart:async";

class UserApiProvider {
  final successCode = 200;






// for home
    Future<String> userLogin(String username, String password) async {
     return Future.delayed(Duration(seconds: 0), () => mockUser.toString());
  }




  String parseResponse(http.Response response) {
    final responseString = jsonDecode(response.body);
    if (response.statusCode == successCode) {
      print(responseString["data"]);
      String json = jsonEncode(responseString["data"]);
      return json;
    } else {
      throw Exception('failed to load events');
    }
  }

//  <AuthModel> parseMockResponse(obj) {
//     if (obj != null) {
//       obj.forEach((v) => {events.add(Event.fromJson(v))});
//       return events;
//     } else {
//       throw Exception('Empty');
//     }
//   }
}

var mockUser = {
"User": {
"UserId": 9,
"TenantId": 1,
"ParentUserId": null,
"UserName": "usman5@nat.com",
"PhoneNumber": null,
"Email": "usman5@nat.com",
"PhoneVerified": null,
"EmailVerified": true,
"FirstName": "Usman",
"MiddleName": null,
"LastName": "Shaikh",
"UserImageURL": "http://i0.wp.com/zblogged.com/wp-content/uploads/2019/02/FakeDP.jpeg?resize=200%2C200",
"ThumbnailImageURL": null,
"ActiveFlag": true,
"EffectiveStartDate": null,
"EffectiveEndDate": null,
"CreatedBy": "not found in Thread.CurrentPrincipal.Identity",
"CreatedDate": "2019-08-02T07:22:13.56Z",
"LastUpdatedBy": "not found in Thread.CurrentPrincipal.Identity",
"LastUpdatedDate": "2019-09-23T06:54:23.13Z",
"ReferenceId": 1,
"Verified": true,
"ReferenceTypeLKP": "admin",
"Password": null,
"RoleCode": null,
"Roles": [
{
"RoleId": 1,
"TenantId": 1,
"RoleCode": "ADMIN",
"RoleName": "Admin",
"RoleDescription": "System Administrator",
"RoleType": "system",
"ActiveFlag": true,
"EffectiveStartDate": null,
"EffectiveEndDate": null,
"CreatedBy": null,
"CreatedDate": null,
"LastUpdatedBy": null,
"LastUpdatedDate": null,
"NatAusUserRoleMapping": null,
"NatAusRolePrivilegeMapping": null
},
{
"RoleId": 2,
"TenantId": 1,
"RoleCode": "ARTIST",
"RoleName": "Artist",
"RoleDescription": "Artist",
"RoleType": "system",
"ActiveFlag": true,
"EffectiveStartDate": null,
"EffectiveEndDate": null,
"CreatedBy": null,
"CreatedDate": null,
"LastUpdatedBy": null,
"LastUpdatedDate": null,
"NatAusUserRoleMapping": null,
"NatAusRolePrivilegeMapping": null
}
],
"NatAusExternalIdentity": [],
"NatAusPrivilege": [
{
"PrivilegeId": 1,
"TenantId": 1,
"PrivilegeName": "Artist.Add",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 2,
"TenantId": 1,
"PrivilegeName": "Artist.Edit",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 3,
"TenantId": 1,
"PrivilegeName": "Event.Add",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 4,
"TenantId": 1,
"PrivilegeName": "Event.Cancel",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 5,
"TenantId": 1,
"PrivilegeName": "Artist.Approve",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 6,
"TenantId": 1,
"PrivilegeName": "Venue.Add",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 7,
"TenantId": 1,
"PrivilegeName": "Venue.Edit",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 8,
"TenantId": 1,
"PrivilegeName": "Venue.Approve",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 9,
"TenantId": 1,
"PrivilegeName": "Painting.Add",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10,
"TenantId": 1,
"PrivilegeName": "Painting.Edit",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 11,
"TenantId": 1,
"PrivilegeName": "Painting.Approve",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 12,
"TenantId": 1,
"PrivilegeName": "Venue.List",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 13,
"TenantId": 1,
"PrivilegeName": "Artist.List",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 14,
"TenantId": 1,
"PrivilegeName": "Painting.List",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10015,
"TenantId": 1,
"PrivilegeName": "Event.List",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10016,
"TenantId": 1,
"PrivilegeName": "Artist.Checkin",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10019,
"TenantId": 1,
"PrivilegeName": "Event.Edit",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10020,
"TenantId": 1,
"PrivilegeName": "Coupon.Add",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10021,
"TenantId": 1,
"PrivilegeName": "Coupon.Edit",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
},
{
"PrivilegeId": 10022,
"TenantId": 1,
"PrivilegeName": "Coupon.List",
"PrivilegeDescription": null,
"ActiveFlag": true,
"NatAusRolePrivilegeMapping": null,
"ObjectState": 0
}
]
}
};
