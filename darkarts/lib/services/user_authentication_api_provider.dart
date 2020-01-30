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

  //for office
  // Future<List<Event>> getAllEvents() async {
  //   final response =
  //       await http.get("http://172.17.40.196:6073/api/FeaturedEvents");
  //   return parseResponse(response);
  //   // return Future.delayed(Duration(seconds: 0), () => parseArray(mockEvents));
  // }

  //for office
  //     Future<String> userLogin(String username, String password) async {
  //     var params = {
  //     "username": username,
  //     "password": password
  //   };
  //   Uri uri = Uri.parse("http://172.17.40.196:6079/api/Token");
  //   final newURI = uri.replace(queryParameters: params);
  //      final response =
  //         await http.post(newURI,body: json.encode(params));
  //       return parseResponse(response);
  // }



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
"Token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VyIjoie1wiVXNlcklkXCI6OSxcIlRlbmFudElkXCI6MSxcIlBhcmVudFVzZXJJZFwiOm51bGwsXCJVc2VyTmFtZVwiOlwidXNtYW41QG5hdC5jb21cIixcIlBob25lTnVtYmVyXCI6bnVsbCxcIkVtYWlsXCI6XCJ1c21hbjVAbmF0LmNvbVwiLFwiUGhvbmVWZXJpZmllZFwiOm51bGwsXCJFbWFpbFZlcmlmaWVkXCI6dHJ1ZSxcIkZpcnN0TmFtZVwiOlwiVXNtYW5cIixcIk1pZGRsZU5hbWVcIjpudWxsLFwiTGFzdE5hbWVcIjpcIlNoYWlraFwiLFwiVXNlckltYWdlVVJMXCI6XCJodHRwOi8vaTAud3AuY29tL3pibG9nZ2VkLmNvbS93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wMi9GYWtlRFAuanBlZz9yZXNpemU9MjAwJTJDMjAwXCIsXCJUaHVtYm5haWxJbWFnZVVSTFwiOm51bGwsXCJBY3RpdmVGbGFnXCI6dHJ1ZSxcIkVmZmVjdGl2ZVN0YXJ0RGF0ZVwiOm51bGwsXCJFZmZlY3RpdmVFbmREYXRlXCI6bnVsbCxcIkNyZWF0ZWRCeVwiOlwibm90IGZvdW5kIGluIFRocmVhZC5DdXJyZW50UHJpbmNpcGFsLklkZW50aXR5XCIsXCJDcmVhdGVkRGF0ZVwiOlwiMjAxOS0wOC0wMlQwNzoyMjoxMy41NlpcIixcIkxhc3RVcGRhdGVkQnlcIjpcIm5vdCBmb3VuZCBpbiBUaHJlYWQuQ3VycmVudFByaW5jaXBhbC5JZGVudGl0eVwiLFwiTGFzdFVwZGF0ZWREYXRlXCI6XCIyMDE5LTA5LTIzVDA2OjU0OjIzLjEzWlwiLFwiUGFzc3dvcmRcIjpudWxsLFwiUGFzc3dvcmRIYXNoXCI6XCI4dDF3UEtOcHphY1NDTkV2WDZSbVVIbWUrMlNnci9Ibk5aOWk3Z3BiMmhsNnlvYm5cIixcIlBhc3N3b3JkU2FsdFwiOm51bGwsXCJSZWZlcmVuY2VJZFwiOjEsXCJWZXJpZmllZFwiOnRydWUsXCJSZWZlcmVuY2VUeXBlTEtQXCI6XCJhZG1pblwiLFwiUm9sZUNvZGVcIjpudWxsLFwiTmF0QXVzVXNlclJvbGVNYXBwaW5nXCI6W3tcIlVzZXJSb2xlTWFwcGluZ0lkXCI6NCxcIlJvbGVJZFwiOjEsXCJVc2VySWRcIjo5LFwiQWN0aXZlRmxhZ1wiOnRydWUsXCJFZmZlY3RpdmVTdGFydERhdGVcIjpudWxsLFwiRWZmZWN0aXZlRW5kRGF0ZVwiOm51bGwsXCJDcmVhdGVkQnlcIjpcIm5vdCBmb3VuZCBpbiBUaHJlYWQuQ3VycmVudFByaW5jaXBhbC5JZGVudGl0eVwiLFwiQ3JlYXRlZERhdGVcIjpcIjIwMTktMDgtMDJUMDc6MjI6MTMuNjEzWlwiLFwiTGFzdFVwZGF0ZWRCeVwiOlwibm90IGZvdW5kIGluIFRocmVhZC5DdXJyZW50UHJpbmNpcGFsLklkZW50aXR5XCIsXCJMYXN0VXBkYXRlZERhdGVcIjpcIjIwMTktMDgtMDJUMDc6MjI6MTMuNjEzWlwiLFwiTmF0QXVzUm9sZVwiOntcIlJvbGVJZFwiOjEsXCJUZW5hbnRJZFwiOjEsXCJSb2xlQ29kZVwiOlwiQURNSU5cIixcIlJvbGVOYW1lXCI6XCJBZG1pblwiLFwiUm9sZURlc2NyaXB0aW9uXCI6XCJTeXN0ZW0gQWRtaW5pc3RyYXRvclwiLFwiUm9sZVR5cGVcIjpcInN5c3RlbVwiLFwiQWN0aXZlRmxhZ1wiOnRydWUsXCJFZmZlY3RpdmVTdGFydERhdGVcIjpudWxsLFwiRWZmZWN0aXZlRW5kRGF0ZVwiOm51bGwsXCJDcmVhdGVkQnlcIjpudWxsLFwiQ3JlYXRlZERhdGVcIjpudWxsLFwiTGFzdFVwZGF0ZWRCeVwiOm51bGwsXCJMYXN0VXBkYXRlZERhdGVcIjpudWxsLFwiTmF0QXVzVXNlclJvbGVNYXBwaW5nXCI6bnVsbCxcIk5hdEF1c1JvbGVQcml2aWxlZ2VNYXBwaW5nXCI6bnVsbCxcIk9iamVjdFN0YXRlXCI6MH0sXCJOYXRBdXNVc2VyXCI6bnVsbCxcIk9iamVjdFN0YXRlXCI6MH0se1wiVXNlclJvbGVNYXBwaW5nSWRcIjo2MyxcIlJvbGVJZFwiOjIsXCJVc2VySWRcIjo5LFwiQWN0aXZlRmxhZ1wiOnRydWUsXCJFZmZlY3RpdmVTdGFydERhdGVcIjpudWxsLFwiRWZmZWN0aXZlRW5kRGF0ZVwiOm51bGwsXCJDcmVhdGVkQnlcIjpcIm5vdCBmb3VuZCBpbiBUaHJlYWQuQ3VycmVudFByaW5jaXBhbC5JZGVudGl0eVwiLFwiQ3JlYXRlZERhdGVcIjpcIjIwMTktMDgtMDJUMDc6MjI6MTMuNjEzWlwiLFwiTGFzdFVwZGF0ZWRCeVwiOlwibm90IGZvdW5kIGluIFRocmVhZC5DdXJyZW50UHJpbmNpcGFsLklkZW50aXR5XCIsXCJMYXN0VXBkYXRlZERhdGVcIjpcIjIwMTktMDgtMDJUMDc6MjI6MTMuNjEzWlwiLFwiTmF0QXVzUm9sZVwiOntcIlJvbGVJZFwiOjIsXCJUZW5hbnRJZFwiOjEsXCJSb2xlQ29kZVwiOlwiQVJUSVNUXCIsXCJSb2xlTmFtZVwiOlwiQXJ0aXN0XCIsXCJSb2xlRGVzY3JpcHRpb25cIjpcIkFydGlzdFwiLFwiUm9sZVR5cGVcIjpcInN5c3RlbVwiLFwiQWN0aXZlRmxhZ1wiOnRydWUsXCJFZmZlY3RpdmVTdGFydERhdGVcIjpudWxsLFwiRWZmZWN0aXZlRW5kRGF0ZVwiOm51bGwsXCJDcmVhdGVkQnlcIjpudWxsLFwiQ3JlYXRlZERhdGVcIjpudWxsLFwiTGFzdFVwZGF0ZWRCeVwiOm51bGwsXCJMYXN0VXBkYXRlZERhdGVcIjpudWxsLFwiTmF0QXVzVXNlclJvbGVNYXBwaW5nXCI6bnVsbCxcIk5hdEF1c1JvbGVQcml2aWxlZ2VNYXBwaW5nXCI6bnVsbCxcIk9iamVjdFN0YXRlXCI6MH0sXCJOYXRBdXNVc2VyXCI6bnVsbCxcIk9iamVjdFN0YXRlXCI6MH1dLFwiTmF0QXVzRXh0ZXJuYWxJZGVudGl0eVwiOltdLFwiTmF0QXVzUHJpdmlsZWdlXCI6bnVsbCxcIk9iamVjdFN0YXRlXCI6MH0iLCJuYmYiOjE1NzY4NDE2NTMsImV4cCI6MTU3NjkyODA1MywiaWF0IjoxNTc2ODQxNjUzfQ.FP5dDl0CGJBpMlD55F1CzdDa8AzysffEolnLKsgvNn4",
"RefreshToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VyIjoiXCJ1c21hbjVAbmF0LmNvbVwiIiwibmJmIjoxNTc2ODQxNjUzLCJleHAiOjE1Nzk1MjAwNTMsImlhdCI6MTU3Njg0MTY1M30.UbVrpiX55vLVd2688UYnc-HeT16V3D84737-An9kO3M",
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