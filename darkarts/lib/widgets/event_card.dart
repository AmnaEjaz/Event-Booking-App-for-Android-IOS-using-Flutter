import 'package:darkarts/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  final Event event;
  EventCard({this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 370,
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL, // default
          front: Container(
            child: cardFront(context),
          ),
          back: Container(
            child: cardBack(context),
          ),
        ));
  }

  Widget cardFront(BuildContext context) {
    var parsedDate = DateTime.parse(event.eventDate);

    var eventMonth = new DateFormat("MMM").format(parsedDate);
    var eventDate = new DateFormat("d").format(parsedDate);
    var eventTime = new DateFormat("KK:mm a").format(parsedDate);
    return Container(
        child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FadeInImage(
            image: NetworkImage(event.paintingImage),
            height: 250.0,
            fadeInDuration: Duration(milliseconds: 500),
            fit: BoxFit.fill,
            placeholder: AssetImage('images/loading.gif'),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            eventMonth.toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Oswald'),
                          ),
                          Text(
                            eventDate.toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Oswald',
                                color: Colors.lightGreen),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 215, // set this
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          event.eventName,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Oswald'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.lightGreen,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(event.venueName,
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'Oswald')),
                            )
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, top: 2),
                          child: Row(children: <Widget>[
                            Icon(
                              Icons.access_time,
                              color: Colors.lightGreen,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(eventTime.toString(),
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: 'Oswald')),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          '\$' + event.minTicketPrice.toString(),
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Oswald'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: new RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          color: Colors.lightGreen,
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            "Buy",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    ));
  }

  @override
  Widget cardBack(BuildContext context) {
    return Container(
        child: Card(
      semanticContainer: true,
      color: Colors.lightGreen.withOpacity(.8),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 90.0,
            backgroundImage: NetworkImage(event.artistImage),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                event.artistName,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oswald'),
              ),
              RatingBar.readOnly(
                initialRating: 3.5,
                isHalfAllowed: true,
                halfFilledIcon: Icons.star_half,
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                filledColor: Colors.amberAccent,
                emptyColor: Colors.amberAccent,
                halfFilledColor: Colors.amberAccent,
                size: 28,
              ),
            ],
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
