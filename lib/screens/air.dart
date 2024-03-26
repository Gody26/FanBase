import 'package:flutter/material.dart';

class AirPage extends StatefulWidget {
  const AirPage({super.key});

  @override
  State<AirPage> createState() => _AirPageState();
}

class _AirPageState extends State<AirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("The Air", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
      body:  
      const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
               Text("Welcome to Air",  textAlign: TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              
               Text("Get to know us!", style: TextStyle(fontSize: 30),),

               Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Column(
                   children: [
                     Card(
                      color: Colors.white,
                     child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Icon(Icons.call, color: Colors.black,)
                      
                      
                                     ),
                                   ),
                                   Text("Call us")
                   ],
                 ),

              SizedBox(width: 40,),

              Column(
                children: [
                  Card(
                    
                    color: Colors.white,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Icon(Icons.message_rounded, color: Colors.black,)
                      
                    ),
                  ),
                  Text("Message Us")
                ],
              ),

              
                ],
               )
              
              
              
              
            ],
          ),
        ),)
        
      
        ),
      );
    
  }
}