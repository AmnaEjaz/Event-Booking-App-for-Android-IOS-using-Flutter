import 'package:darkarts/models/event_model.dart';
import 'package:darkarts/services/nat_event_api_provider.dart';

class EventRepository {
  EventApiProvider _EventApiProvider = EventApiProvider();

  Future<List<Events>> fetchEventsByCountry(String countryId) =>
      _EventApiProvider.fetchEventsByCountry(countryId);
  Future<List<Events>> fetchEventsByName(String name) =>
      _EventApiProvider.fetchEventsByName(name);
}
