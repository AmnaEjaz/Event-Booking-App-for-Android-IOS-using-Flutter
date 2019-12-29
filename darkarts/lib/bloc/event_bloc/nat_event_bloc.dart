import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:darkarts/bloc/event_bloc/nat_event_states.dart';
import 'package:darkarts/bloc/event_bloc/nat_event_events.dart';
import 'package:darkarts/models/event_model.dart';
import 'package:darkarts/services/event_repository.dart';

class EventListingBloc extends Bloc<EventListingEvent, EventListingState> {
  
  final EventRepository eventRepository;
  EventListingBloc({this.eventRepository}) : assert(eventRepository != null);
   @override
  void onTransition(Transition<EventListingEvent, EventListingState> transition) {
    super.onTransition(transition);
    print(transition);
  }
  @override
  EventListingState get initialState => EventUninitializedState();

  @override
  Stream<EventListingState> mapEventToState(EventListingEvent event) async* {
     yield EventFetchingState();
      List<Event> events;
      try {
        // if (event is EventSelectedEvent) {
        //   events = await eventRepository
        //       .fetchEventsByCountry(event);
        // } 
        
        if (event is GetAllEventsEvent) {
          events = await eventRepository.getAllEvents();
        }
        if (events.length == 0) {
          yield EventEmptyState();
        } else {
          yield EventFetchedState(events: events);

        }
      } catch (_) {
        yield EventErrorState();
      }
    }
  }

