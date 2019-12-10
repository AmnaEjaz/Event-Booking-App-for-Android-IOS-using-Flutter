import 'package:darkarts/models/event_model.dart';
import 'package:darkarts/services/nat_event_api_provider.dart';

class EventRepository {
  EventsApiProvider _eventsApiProvider = EventsApiProvider();

  Future<List<Event>> getAllEvents() =>
      _eventsApiProvider.getAllEvents();

}
