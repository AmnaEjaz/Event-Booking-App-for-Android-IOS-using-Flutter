import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darkarts/bloc/nat_event_bloc.dart';
import 'package:darkarts/bloc/nat_event_events.dart';
import 'package:darkarts/pages/event_listing.dart';
import 'package:darkarts/services/repository.dart';


class HomePage extends StatefulWidget {
  final EventRepository eventRepository;
  HomePage({this.eventRepository});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  EventListingBloc _eventListingBloc;


  @override
  void initState() {
    super.initState();
    _eventListingBloc=EventListingBloc(eventRepository: widget.eventRepository);
    _eventListingBloc.add(GetAllEventsEvent());
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (BuildContext context)=>_eventListingBloc,
          child: Scaffold(
          backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true, 
          elevation: 0.0,
          title: Image.asset('images/na-logo.png', fit: BoxFit.cover),
          backgroundColor: Colors.transparent,
        ),
         body: Column(
           children: <Widget>[
             SizedBox(height: 10.0,),
             SizedBox(height: 10.0,),
             EventListing(),
           ],
         ),
      ),
    );
  }
}