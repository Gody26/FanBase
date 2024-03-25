import 'package:fan_base/screens/home_page.dart';
import 'package:flutter/material.dart';

class Code extends StatefulWidget {
  const Code({super.key});

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child:  Column(
                children: [
                   const Text("Ente code sent to your email"),
          
                   const SizedBox(height: 20,),
          
                   const TextField(decoration: InputDecoration(
                    hintText: "Enter code",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.code)
              
                  ),),
          
                  const SizedBox(height: 20,),
          
                   ElevatedButton(onPressed: (){
                        
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute<void>(
                          builder: (BuildContext context) => const HomePage(),
                          ));
                      }, 
                      
                      child: const Text("Proceed"),),
                ],
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}