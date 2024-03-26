import 'package:flutter/material.dart';


class EventsCalendar extends StatefulWidget {
  const EventsCalendar({super.key});

  @override
  State<EventsCalendar> createState() => _EventsCalendarState();
}

class _EventsCalendarState extends State<EventsCalendar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Text("Calendar", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Padding(padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              
            
            ],
          ),
        ),),
      ),
      

      
    );
  }
}