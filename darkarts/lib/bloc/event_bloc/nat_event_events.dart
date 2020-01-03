// import 'package:flutter/material.dart';
// import 'package:darkarts/models/event_model.dart';

import 'package:flutter/cupertino.dart';

abstract class EventListingEvent{}

// class EventSelectedEvent extends EventListingEvent{
//   final Events event;
//   EventSelectedEvent({@required this.event}) : assert(event!=null);
// }
class GetAllEventsEvent extends EventListingEvent {
  GetAllEventsEvent();
}

class ToggleEventLike extends EventListingEvent {
  final String eventCode;
  final int customerId;
  ToggleEventLike({@required this.eventCode, @required this.customerId});
}
