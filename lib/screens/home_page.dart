import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("FanBase"),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),

       body: const Column(children: [

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
     
      );
  }
}
