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

       body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child:  Padding( 
          padding: const EdgeInsets.all(20.0), 
          child: Column(
            children: [const Text("What would you like?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column( children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.grey,
                      ),
                    ),
              
                    const SizedBox(width: 20,),
              
                    Expanded(
                        child: Container(
                         height: 100,
                         color: Colors.grey,
                         
                                        
                       ),
                    )
                  ],
                ),
              ],),
            ),


           const Padding(
             padding: EdgeInsets.all(15.0),
             child: Center(
               child: Row( 
                children: [
                  Column( 
                    children: [
                      Card( 
                            color: Colors.white,
                            child: SizedBox( 
                              height: 100,
                              width: 100,
                              child: Icon(Icons.sports_soccer, color: Colors.black,) 
                            ),
                          ),
                          Text("Soccer"),
                    ],
                  ),
               
                  SizedBox(height: 5,),
               
                   Column(
                    children: [
                      Card(
                            
                            color: Colors.white,
                            child: SizedBox( 
                              height: 100,
                              width: 100,
                              child: Icon(Icons.sports_basketball, color: Colors.black,) 
                              
                              
                            ),
                          ),
                          Text("Basketball"),
                    ],
                  ),
               
                  SizedBox(height: 5,),
               
                   Column(
                    children: [
                      Card(
                            
                            color: Colors.white,
                            child: SizedBox( 
                              height: 100,
                              width: 100,
                              child: Icon(Icons.sports_tennis, color: Colors.black,) 
                              
                            ),
                          ),
                          Text("Tennis"),
                    ],
                  ),
               
                  SizedBox(height: 5,),
               
                  
                      
               
                     
                ],
               ),
             ),
           )
            ],
          ),
        ),
     
    ));
  }
}
