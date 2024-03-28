import 'package:fan_base/screens/air.dart';
import 'package:fan_base/screens/arena_one.dart';
import 'package:fan_base/screens/events_calendar.dart';
import 'package:fan_base/screens/freedom_heights.dart';
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
        backgroundColor:const Color.fromARGB(255, 237, 230, 230),
       ),

       body:   SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child:  Padding( 
          padding:  const EdgeInsets.all(20.0), 
          child: Column(
            children: [ const Text("What we offer", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

          

           

       const  Padding(
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
                              child: Icon(Icons.sports_soccer, color: Colors.blue,) 
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
                              child: Icon(Icons.sports_basketball, color: Colors.blue,) 
                              
                              
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
                              child: Icon(Icons.sports_tennis, color: Colors.blue,) 
                            ),
                          ),
                          Text("Tennis"),
                    ],
                  ),
               
                  SizedBox(height: 5,)
                ],
                
               ),
             ), 
           ),
        Padding(padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Football boot.jpeg', ),
               
               const Positioned(
      top: 0, 
      left: 0, 
      right: 0,
      bottom: 0,
      child: Center(
        child: Text(
          'Begin your journey!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    ),
              ],
            ),

            const SizedBox(height: 20,),

            const Text('Suggestions', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

            Row(
              children: [
                Expanded(
                  
                    child: Column(
                      children: [ Stack( children: [
                        Image.asset('assets/images/Football boot.jpeg'),
                         ElevatedButton(onPressed: (){
                    
                    Navigator.push(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ArenaOne(),
                      ));
                  }, 
                  
                  child: const Text("Book", style: TextStyle(color: Colors.black),),)
                        ]),
                        const Text('Arena1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  
                ),

                const SizedBox( width: 20,),

                  Expanded(
                  
                    child: Column(
                      children: [ Stack( children: [
                        Image.asset('assets/images/Football boot.jpeg', ),
                         ElevatedButton(onPressed: (){
                    
                    Navigator.push(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const FreedomHeights(),
                      ));
                  }, 
                  
                  child: const Text("Book", style: TextStyle(color: Colors.black),),)
                        ]),
                        const Text('Freedom heights', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  
                ),
              ],
            ),

            Row(
              children: [
                  Expanded(
                    child: Column(
                      children: [ Stack( children: [
                        Image.asset('assets/images/Bear with glasses pic.jpg'),

                         ElevatedButton(onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ArenaOne(),
                      ));}, 
                  child: const Text("Book", style: TextStyle(color: Colors.black),),)
                        ]),
                        const Text('Arena1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  
                ),

                const SizedBox( width: 20,),

                 Expanded(        
                    child: Column(
                      children: [ Stack( children: [
                        Image.asset('assets/images/Bear with glasses pic.jpg'),
                        
                         ElevatedButton(onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const FreedomHeights(),
                      ));}, 
                  child: const Text("Book", style: TextStyle(color: Colors.black),),)
                        ]),
                        const Text('Freedom Heights', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  
                ),
              ],
            ),

            const SizedBox(height: 30,),

            const Text('Favourites',  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],
        ),)    ],
          ),
        ),
     
    ));
  }
}
