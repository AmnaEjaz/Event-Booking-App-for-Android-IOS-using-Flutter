class Event {
  int eventId;
  String eventName;

  Event({this.eventId, this.eventName});

  Event.fromJson(Map<String, dynamic> json) {
    eventId = json['EventId'];
    eventName = json['EventName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EventId'] = this.eventId;
    data['EventName'] = this.eventName;
    return data;
  }
}