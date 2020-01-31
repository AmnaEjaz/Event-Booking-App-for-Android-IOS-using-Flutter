// import 'package:flutter/material.dart';

// class EventDetail extends StatelessWidget {
//   final String message;

//   EventDetail({this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Center(
//         child: Text(message, style: TextStyle(fontSize: 22.0,color: Colors.white), textAlign: TextAlign.center,),
//       ),
//     );
//   }
// }


import 'package:darkarts/models/event_model.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  final Event event;
  EventDetail(this.event);

  @override
  Widget build(BuildContext context) {

    final coursePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(5.0)),
      child: new Text(
        "\$" + event.minTicketPrice.round().toString(),
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child:   Text(
              event.eventName,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            ),)),
            Expanded(flex: 1, child: coursePrice)
          ],
        ),
        SizedBox(height: 10.0),
      ],
    );
    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new NetworkImage(event.paintingImage),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          // child: Center(
          //   child: topContentText,
          // ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      event.eventDescription,
      style: TextStyle(fontSize: 15.0),
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {},
          color: Colors.green,
          child:
              Text("View Seats", style: TextStyle(color: Colors.white)),
        ));
    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[topContentText, bottomContentText, readButton],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}