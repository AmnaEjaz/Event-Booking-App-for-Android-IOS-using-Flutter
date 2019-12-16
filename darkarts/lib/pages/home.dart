import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darkarts/bloc/event_bloc/nat_event_bloc.dart';
import 'package:darkarts/bloc/event_bloc/nat_event_events.dart';
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
  int _cIndex = 2;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _eventListingBloc =
        EventListingBloc(eventRepository: widget.eventRepository);
    _eventListingBloc.add(GetAllEventsEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => _eventListingBloc,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/na-logo.png',
                    fit: BoxFit.cover,
                    height: 52,
                  )
                ],
              ),
            ),
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 0.0,
                ),
                SizedBox(
                  height: 0.0,
                ),
                EventListing(),
              ],
            ),
            bottomNavigationBar: new Theme(
                data: Theme.of(context).copyWith(
                    // sets the background color of the `BottomNavigationBar`
                    canvasColor: Colors.lightGreen,
                    // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                    primaryColor: Colors.red,
                    textTheme: Theme.of(context).textTheme.copyWith(
                        caption: new TextStyle(
                            color: Colors
                                .yellow))), // sets the inactive color of the `BottomNavigationBar`
                child: new BottomNavigationBar(
                  currentIndex: _cIndex,
                  type: BottomNavigationBarType.shifting,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: navbarText('Home')),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: navbarText('Search')),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.calendar_today,
                        color: Color.fromARGB(255, 0, 0, 0)),
                        title: navbarText('Events')),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: navbarText('Account')),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.more_vert,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        title: navbarText('More'))
                  ],
                  onTap: (index) {
                    _incrementTab(index);
                  },
                ))));
  }

  Widget navbarText(context){
    return new Text(context, style: TextStyle(
                                fontFamily: 'Oswald', color: Colors.black));
  }
}
