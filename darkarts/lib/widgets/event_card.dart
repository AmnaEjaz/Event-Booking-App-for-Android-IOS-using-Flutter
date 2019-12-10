import 'package:darkarts/models/event_model.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeInImage(
                image: NetworkImage(event.paintingImage),
                height: 250.0,
                fit: BoxFit.fill,
                placeholder: AssetImage('images/loading.gif'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 10,
                  right: 40,
                  bottom: 20,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            event.eventName,
                            softWrap: true,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Oswald'),
                          ),
                          Flexible(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                '|',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '\$' +
                                  event.minTicketPrice.toString() +
                                  '-' +
                                  event.minTicketPrice.toString(),
                              style: TextStyle(
                                  fontFamily: 'Oswald', color: Colors.grey),
                            ),
                          ),
                        ],
                      ),

                        Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            event.eventName,
                            softWrap: true,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Oswald'),
                          ),
                  
                        ],
                      ),

                    ]),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ));
  }
}
