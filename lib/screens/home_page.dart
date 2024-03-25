import 'package:fan_base/screens/air.dart';
import 'package:fan_base/screens/events_calendar.dart';
import 'package:fan_base/screens/settings.dart';
import 'package:fan_base/screens/shop.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children:  [

            const ListTile(
              leading: Icon(Icons.person_2_rounded),
              title: Text("Sean .M."),
              subtitle: Text("My Account"),
            ),

           const Row(children: [
            Icon(Icons.shield_moon,),
            Text("My Rating")
           ],),

             const Divider(height: 50,),

            ListTile(
              leading: const Icon(Icons.air_sharp),
              title: const Text("Air"),
              tileColor: Colors.white,
              iconColor: Colors.blueAccent,
              onTap: () => {
                Navigator.push(
                  context, 
                   MaterialPageRoute<void>(
                      builder: (BuildContext context) => const AirPage(),)
             ) },
            ),
             ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
               onTap: () => {
                Navigator.push(
                  context, 
                   MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Settings(),)
             ) },
            ),
            ListTile(
              leading: const Icon(Icons.app_registration_rounded),
              title: const Text("Events Calendar"),
              tileColor: Colors.amber,
               onTap: () => {
                Navigator.push(
                  context, 
                   MaterialPageRoute<void>(
                      builder: (BuildContext context) => const EventsCalendar(),)
             ) },
            ),
             ListTile(
              leading: const Icon(Icons.add_shopping_cart),
              title: const Text("Shop"),
               onTap: () => {
                Navigator.push(
                  context, 
                   MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ShopPage(),)
             ) },
            )
            
          ],

        ),
       ),
       appBar: AppBar(
        title: const Text("FanBase", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),

       body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(children: [

         Padding(
          padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
          hintText: "I am a child of Column",
          border: OutlineInputBorder(),
        ),),),

         SizedBox(height: 10),

         Padding(
          padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
          hintText: "I am a child of Column",
          border: OutlineInputBorder(),
        ),),),
      

      Padding(padding: EdgeInsets.all(10), 
      child: Image(image: NetworkImage(
        'https://images.ctfassets.net/c9t6u0qhbv9e/0VMDjyffUuWwyCP3eOJuP/e060dc1d4be602ecfc64baed026ca3ce/2023_BMW_M4_Review_Lead_In.jpeg'))
         

    ),],),
     
    ));
  }
}
