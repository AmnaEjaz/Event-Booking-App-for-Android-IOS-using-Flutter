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

Future<List<Event>> getAllEvents() {
  return Future.delayed(Duration(seconds: 4), () => parseArray(mockEvents));
}

// Future<List<Event>> getEventByEventCode(String eventCode) {
//   return Future.delayed(Duration(seconds: 4),
  
//   );
// }



    List<Event> parseArray(obj) {
    final responseString = jsonDecode(obj);

    if (obj!=null) {
      return GetEvents.fromJson(responseString).event;
    } else {
      throw Exception('Empty');
    }
  }
  

}



  // var eventsmock = new GetEvents.fromJson(test);
var mockEvents =  [{
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
      "EventDescription": "Nils Frahm, the Berlin based, Hamburg born German pianist and composer parades before The Sydney Opera House Concert Hall audience with absolute panache. Arguably the perfect setting to witness his pioneering style of composition. ",
      "EventTags": "Brushes,Paintings",
      "GoldTicketsCount": 0,
      "SilverTicketsCount": 0,
      "BasicTicketsCount": 0,
      "EventLikesCount": 0,
      "NatEsEventWaitList": null,
      "NatEsEventImage": null,
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
      "ArtistImage": "http://172.17.40.196:10000/devstoreaccount1/as-artistcontainer/de1b7c53-3f16-4431-b902-9ad91f5b5d9b.png",
      "PaintingName": "cccccccccccccccccccccccccccc",
      "PaintingRating": 0.0,
      "PaintingImage": "https://total-event.com/wp-content/uploads/2018/01/event-planning-microsoft-ignite.jpg",
      "VenueAddress": "Test, Camrose",
      "VenueName": "Demo Venue",
      "VenueRating": 0.0,
      "LikeStatus": true
    }];
    

