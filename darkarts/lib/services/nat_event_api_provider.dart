// import 'dart:convert';

// import 'package:flutter_bloc_example/models/api_models.dart';
// import 'package:http/http.dart' as http;

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


import 'dart:convert';
import "dart:async";
import 'package:darkarts/models/event_model.dart';
import 'package:http/http.dart' as http;

class EventsApiProvider {
  String baseUrl = "https://www.easports.com/fifa/ultimate-team/api/fut/item?";
  final successCode = 200;

  //for Http calls
  // Future<List<Events>> fetchEventsById(String countryId) async {
  //   final response = await http.get(baseUrl + "country=" + countryId);

  //   return parseResponse(response);
  // }

  // Future<List<Events>> fetchEventsByName(String name) async {
  //   final response = await http.get(baseUrl+"name="+name);

  //   return parseResponse(response);
  // }

  //for http calls
  // List<Event> parseResponse(http.Response response) {
  //   final responseString = jsonDecode(response.body);

  //   if (response.statusCode == successCode) {
  //     return GetEvents.fromJson(responseString).event;
  //   } else {
  //     throw Exception('failed to load players');
  //   }
  // }

  Future<List<Event>> getAllEvents() async{
    final response = await http.get("http://172.17.40.196:6073/api/FeaturedEvents");
    return parseResponse(response); 
    // return Future.delayed(Duration(seconds: 0), () => parseArray(mockEvents));
  }

// Future<List<Event>> getEventByEventCode(String eventCode) {
//   return Future.delayed(Duration(seconds: 4),

//   );
// }

  List<Event> parseResponse(http.Response response) {
    final responseString = jsonDecode(response.body);
    var events = new List<Event>();
    // response.

    if (response.statusCode == successCode) {
      print(responseString);
      responseString["data"].forEach((v) => {

        events.add(Event.fromJson(v))
        
        });
      return events;
      // return Event.fromJson(responseString).data;
    } else {
      throw Exception('failed to load events');
    }
  }

  // List<Event> parseArray(obj) {
  //   // final responseString = jsonDecode(obj);

  //   var events = new List<Event>();

  //   if (obj.data != null) {
  //     obj.data.forEach((v) => {events.add(Event.fromJson(v))});
  //     return events;
  //   } else {
  //     throw Exception('Empty');
  //   }
  // }
}

// var eventsmock = new GetEvents.fromJson(test);
var mockEvents = [
  {
    "EventId": 1004,
    "TenantId": 1,
    "ArtistId": 3234296,
    "EventTypeLKPId": 1,
    "EventStatusLKPId": 3,
    "PaintingId": 26,
    "SeatingPlanId": 1,
    "EventAgeGroupTypeLKPId": 1,
    "EventCategoryLKPId": 1,
    "VenueHallId": 1,
    "EventName": "Water Art Galleria",
    "EventCode": "RED_DEER-22",
    "ActiveFlag": true,
    "EffectiveStartDate": null,
    "EffectiveEndDate": null,
    "CreatedBy": "not found in Thread.CurrentPrincipal.Identity",
    "CreatedDate": "2019-08-08T05:45:43.02Z",
    "LastUpdatedBy": "not found in Thread.CurrentPrincipal.Identity",
    "LastUpdatedDate": "2019-08-09T08:40:35.007Z",
    "EventDate": "2020-08-23T03:45:00Z",
    "EventStartTime": "2020-08-23T03:45:00Z",
    "EventEndTime": "2020-08-23T03:50:00Z",
    "PrivateEventFlag": null,
    "FundraisingEventFlag": null,
    "MaxTicketPrice": 400.00,
    "MinTicketPrice": 600.00,
    "LocationCode": "RED_DEER",
    "VenueCityCode": "RED_DEER",
    "IsFeatured": true,
    "EventDescription":
        "Nils Frahm, the Berlin based, Hamburg born German pianist and composer parades before The Sydney Opera House Concert Hall audience with absolute panache. Arguably the perfect setting to witness his pioneering style of composition. ",
    "EventTags": "Brushes,Paintings",
    "GoldTicketsCount": 0,
    "SilverTicketsCount": 0,
    "BasicTicketsCount": 0,
    "EventLikesCount": 0,
    "NatEsEventWaitList": null,
    "NatEsEventImage": null,
    "NatEsEventFacility": [],
    "NatEsEventSeatingPlan": [],
    "NatEsEventTicketPrice": [],
    "VenueId": 63,
    "StartDate": null,
    "EndDate": null,
    "Categoryid": null,
    "Artistid": null,
    "Sortid": 0,
    "SortAsc": false,
    "ArtistRatingFilter": 0,
    "ArtistName": "Steven Rock",
    "ArtistRating": 4.0,
    "ArtistImage": "https://i.ytimg.com/vi/TVIZANIvhH0/maxresdefault.jpg",
    "PaintingName": "cccccccccccccccccccccccccccc",
    "PaintingRating": 0.0,
    "PaintingImage": "https://i.ytimg.com/vi/TVIZANIvhH0/maxresdefault.jpg",
    "VenueAddress": "Test, Camrose",
    "VenueName": "Demo Venue",
    "VenueRating": 0.0,
    "LikeStatus": true
  },
  {
    "EventId": 1004,
    "TenantId": 1,
    "ArtistId": 3234296,
    "EventTypeLKPId": 1,
    "EventStatusLKPId": 3,
    "PaintingId": 26,
    "SeatingPlanId": 1,
    "EventAgeGroupTypeLKPId": 1,
    "EventCategoryLKPId": 1,
    "VenueHallId": 1,
    "EventName": "Art Galleria",
    "EventCode": "RED_DEER-22",
    "ActiveFlag": true,
    "EffectiveStartDate": null,
    "EffectiveEndDate": null,
    "CreatedBy": "not found in Thread.CurrentPrincipal.Identity",
    "CreatedDate": "2019-08-08T05:45:43.02Z",
    "LastUpdatedBy": "not found in Thread.CurrentPrincipal.Identity",
    "LastUpdatedDate": "2019-08-09T08:40:35.007Z",
    "EventDate": "2020-08-23T03:45:00Z",
    "EventStartTime": "2020-08-23T03:45:00Z",
    "EventEndTime": "2020-08-23T03:50:00Z",
    "PrivateEventFlag": null,
    "FundraisingEventFlag": null,
    "MaxTicketPrice": 400.00,
    "MinTicketPrice": 600.00,
    "LocationCode": "RED_DEER",
    "VenueCityCode": "RED_DEER",
    "IsFeatured": true,
    "EventDescription":
        "Nils Frahm, the Berlin based, Hamburg born German pianist and composer parades before The Sydney Opera House Concert Hall audience with absolute panache. Arguably the perfect setting to witness his pioneering style of composition. ",
    "EventTags": "Brushes,Paintings",
    "GoldTicketsCount": 0,
    "SilverTicketsCount": 0,
    "BasicTicketsCount": 0,
    "EventLikesCount": 0,
    "NatEsEventWaitList": null,
    "NatEsEventImage": null,
    "NatEsEventFacility": [],
    "NatEsEventSeatingPlan": [],
    "NatEsEventTicketPrice": [],
    "VenueId": 63,
    "StartDate": null,
    "EndDate": null,
    "Categoryid": null,
    "Artistid": null,
    "Sortid": 0,
    "SortAsc": false,
    "ArtistRatingFilter": 0,
    "ArtistName": "Steven Rock",
    "ArtistRating": 4.0,
    "ArtistImage": "https://i.ytimg.com/vi/TVIZANIvhH0/maxresdefault.jpg",
    "PaintingName": "cccccccccccccccccccccccccccc",
    "PaintingRating": 0.0,
    "PaintingImage": "https://deepart-io.s3.amazonaws.com/img/result.jpg",
    "VenueAddress": "Test, Camrose",
    "VenueName": "Demo Venue",
    "VenueRating": 0.0,
    "LikeStatus": true
  }
];
