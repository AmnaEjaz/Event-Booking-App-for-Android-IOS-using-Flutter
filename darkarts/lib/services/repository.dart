import 'package:darkarts/models/event_model.dart';
import 'package:darkarts/services/nat_event_api_provider.dart';

class EventRepository {
  EventsApiProvider _EventsApiProvider = EventsApiProvider();

  Future<List<Event>> getAllEvents() =>
      _EventsApiProvider.getAllEvents();

}
