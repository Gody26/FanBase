import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Settings", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: EdgeInsets.all(50.0),
        child: Center( child: Column(
          children: [
            CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS167rCp9mKFPIQo0E5lfr9p2OIqZ2XpU9wgbDkoUC5tQ&s"),
                      radius: 70,
                    ),

                    SizedBox(height: 15,),

                    Text("Sean.M.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                    SizedBox(height: 30,),

                    Divider(height: 10,),

                     ListTile(
              leading:  Icon(Icons.account_box_rounded, ),
              title:  Text("Account"),),

              Divider(height: 10,),

                    ListTile(
              leading:  Icon(Icons.display_settings, ),
              title:  Text("Display"),),

               Divider(height: 10,),

                    ListTile(
              leading:  Icon(Icons.privacy_tip, ),
              title:  Text("Privacy"),),

               Divider(height: 10,),

                    ListTile(
              leading:  Icon(Icons.help, ),
              title:  Text("Help"),),

               Divider(height: 10,),


              

              
              
              
              
            
          ],
        ),),
      ),
    ));
  }
}