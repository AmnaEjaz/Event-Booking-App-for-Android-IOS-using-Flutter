import 'package:flutter/material.dart';
import 'package:darkarts/models/event_model.dart';

abstract class EventListingState {}

class EventUninitializedState extends EventListingState {}

class EventFetchingState extends EventListingState {}

class EventFetchedState extends EventListingState {
  final List<Event> events;
  EventFetchedState({@required this.events});
}
class EventlikedUnlikedState extends EventListingState {
  final String eventCode;
  final int customerId;
  EventlikedUnlikedState({@required this.eventCode, @required this.customerId });
}

class EventErrorState extends EventListingState {}

class EventEmptyState extends EventListingState {}

class EventLikeToggledState extends EventListingState {}

class EventLikeToggledFailedState extends EventListingState {}