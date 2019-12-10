import 'package:flutter/material.dart';
import 'package:darkarts/services/repository.dart';
//pages import
import './pages/home.dart';

void main(){
  EventRepository _repository=EventRepository();
   runApp(MyApp(eventRepository:_repository));
   }

class MyApp extends StatelessWidget {
  final EventRepository eventRepository;
  MyApp({this.eventRepository});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nocturnal Arts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: "GoogleSans",
        primarySwatch: Colors.blue,
      ),
      home: HomePage(eventRepository:eventRepository),
    );
  }
}
