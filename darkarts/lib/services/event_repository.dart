import 'package:darkarts/models/event_model.dart';
import 'package:darkarts/services/nat_event_api_provider.dart';
import 'package:meta/meta.dart';

class EventRepository {
  EventsApiProvider _eventsApiProvider = EventsApiProvider();

  Future<List<Event>> getAllEvents() =>
      _eventsApiProvider.getAllEvents();

  // Future<bool> toggleEventLike({
  //   @required String eventCode,
  //   @required int customerId,
  // }) =>
  //     _eventsApiProvider.toggleEventLike(eventCode, customerId);
}
