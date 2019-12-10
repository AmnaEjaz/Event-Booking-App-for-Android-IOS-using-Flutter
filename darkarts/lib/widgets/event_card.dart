import 'package:darkarts/models/event_model.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({this.event});

  @override
  Widget build(BuildContext context) {
  return Container(
    height: 250,
    child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            event.paintingImage,
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        )
  );
}
}