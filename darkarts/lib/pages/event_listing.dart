import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darkarts/bloc/event_bloc/nat_event_bloc.dart';
import 'package:darkarts/bloc/event_bloc/nat_event_states.dart';
import 'package:darkarts/models/event_model.dart';
import 'package:darkarts/widgets/message.dart';
import 'package:darkarts/widgets/event_card.dart';
// import 'package:darkarts/pages/event_detail.dart';

class EventListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<EventListingBloc>(context),
      builder: (context, state) {
        if (state is EventUninitializedState) {
          return Message(
              message: "Unintialised State");
        } else if (state is EventEmptyState) {
          return Message(message: "No Events found");
        } else if (state is EventErrorState) {
          return Message(message: "Something went wrong");
        } else if (state is EventFetchingState) {
          return Expanded(child: Center(child: CircularProgressIndicator()));
        } else {
          final stateAsEventFetchedState = state as EventFetchedState;
          final events = stateAsEventFetchedState.events;
          return buildEventsList(events);
        }
      },
    );
  }

  Widget buildEventsList(List<Event> events) {
    return Expanded(
      child: ListView.separated(
      itemBuilder: (BuildContext context, index) {
      Event event = events[index];
      return EventCard(event: event);
      // return Container(
      //   color: Colors.white30,
      //   child: ListTile(
      //     leading: CircleAvatar(
      //       child: Image.network(
      //          event.eventName,
      //       ),
      //       radius: 30.0,
      //       backgroundColor: Colors.blue[50],
      //     ),
      //     title: Text(
      //       event.eventName,
      //       style: TextStyle(fontSize: 22.0, color: Colors.black),
      //     ),
      //     subtitle: Text(
      //        "Date: " + event.eventName.toString(),
      //       style: TextStyle(fontSize: 16.0, color: Colors.black87),
      //     ),
      //     trailing: IconButton(
      //       icon: Icon(Icons.chevron_right),
      //        onPressed: () {
      //       //    Navigator.push(
      //       //       context,
      //       //       MaterialPageRoute(
      //       //           builder: (context) => EventDetail(event)));
      //        },
      //     ),
      //   ),
      // );
    },
    separatorBuilder: (BuildContext context, index) {
      return Divider(
        height: 5.0,
        color: Colors.transparent,
      );
    },
    itemCount: events.length,
        ),
      );
  }
}
