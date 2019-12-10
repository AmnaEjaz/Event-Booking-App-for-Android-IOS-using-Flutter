// import 'dart:convert';
import "dart:async";
import 'package:darkarts/models/event_model.dart';
// import 'package:http/http.dart' as http;

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
  return Future.delayed(Duration(seconds: 0), () => parseArray(mockEvents));
}

// Future<List<Event>> getEventByEventCode(String eventCode) {
//   return Future.delayed(Duration(seconds: 4),
  
//   );
// }



    List<Event> parseArray(List<Object> obj) {
    // final responseString = jsonDecode(obj);

    var events = new List<Event>();
    obj.forEach( (v) => {
     events.add(Event.fromJson(v) )
    });
    return events;
    // if (obj!=null) {
    //   return Event.fromJson(obj);
    // } else {
    //   throw Exception('Empty');
    // }
  }
  

}



  // var eventsmock = new GetEvents.fromJson(test);
var mockEvents = [
   {
      "EventId": 1004,
      "EventName": "Water Art Galleria",

    },
    {
      "EventId": 104,
      "EventName": "Water A=a",

    }];

