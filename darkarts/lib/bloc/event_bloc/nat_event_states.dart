import 'package:flutter/material.dart';
import 'package:darkarts/models/event_model.dart';

abstract class EventListingState {}

class EventUninitializedState extends EventListingState {}

class EventFetchingState extends EventListingState {}

class EventFetchedState extends EventListingState {
  final List<Event> events;
  EventFetchedState({@required this.events});
}

class EventErrorState extends EventListingState {}

class EventEmptyState extends EventListingState {}
