import 'package:flutter/material.dart';
import 'package:darkarts/models/event_model.dart';

abstract class EventListingEvent{}

// class EventSelectedEvent extends EventListingEvent{
//   final Events event;
//   EventSelectedEvent({@required this.event}) : assert(event!=null);
// }
class SearchTextChangedEvent extends EventListingEvent {
  final String searchTerm;
  SearchTextChangedEvent({@required this.searchTerm}) : assert(searchTerm != null);
}
