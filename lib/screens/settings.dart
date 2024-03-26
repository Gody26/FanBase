import 'package:fan_base/screens/login.dart';
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
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding:const EdgeInsets.all(50.0),
        child: Center( child: Column(
          children: [
           const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS167rCp9mKFPIQo0E5lfr9p2OIqZ2XpU9wgbDkoUC5tQ&s"),
                      radius: 70,
                    ),

                    const SizedBox(height: 15,),

                   const Text("Sean.M.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                    const SizedBox(height: 30,),

                    const Divider(height: 10,),

                     const ListTile(
              leading:  Icon(Icons.account_box_rounded, ),
              title:  Text("Account"),),

              const Divider(height: 10,),

                  const  ListTile(
              leading:  Icon(Icons.display_settings, ),
              title:  Text("Display"),),

               const Divider(height: 10,),

                   const ListTile(
              leading:  Icon(Icons.privacy_tip, ),
              title:  Text("Privacy"),),

               const Divider(height: 10,),

                    const ListTile(
              leading:  Icon(Icons.help, ),
              title:  Text("Help"),),

               const Divider(height: 10,),

                ElevatedButton(onPressed: (){
                    
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Login(),
                      ));
                  }, 
                  
                  child: const Text("Log Out", style: TextStyle(color: Colors.black),),),


              

              
              
              
              
            
          ],
        ),),
      ),
    ));
  }
}