import 'package:fan_base/screens/code.dart';
import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
          padding: const EdgeInsets.all(100),
        child: Center(
          child: Column(
            children: [
              const Text('Forgot Password?', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              const SizedBox(height: 30,),
               const TextField(decoration: InputDecoration(
                hintText: 'Enter email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email, color: Colors.black,),
                label: Text('Email')
                ),
                ),

                const SizedBox(height: 20,),

                 

                const SizedBox(height: 20,),

             
               const SizedBox(height: 20,),

                 ElevatedButton(onPressed: (){
                    
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Code(),
                      ));
                  }, 
                  
                  child: const Text("Proceed"),),
              



        ],),
        ),
        )

      ],),
    ));
  }
}