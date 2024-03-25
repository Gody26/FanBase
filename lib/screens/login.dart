import 'package:fan_base/screens/forgot_password.dart';
import 'package:fan_base/screens/home_page.dart';
import 'package:fan_base/screens/sign_up.dart';
import 'package:flutter/gestures.dart';


import 'package:flutter/material.dart';//type stfl

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
       body: Column(
        children: [          
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Center(
              child: Column(
                children: [ 
              
                  //the first text on the page
                  const Text("Welcome to FanBase ", textAlign: TextAlign.center, style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
              
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS167rCp9mKFPIQo0E5lfr9p2OIqZ2XpU9wgbDkoUC5tQ&s"),
                      radius: 70,
                    ),
              
                  const SizedBox(height: 20),//the space in between
              
                  const TextField(decoration: InputDecoration//the textbox for email
                  (prefixIcon: Icon(Icons.email, color: Colors.black,),

                    hintText: "Enter email", 
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 2, 0, 0)),
                  ),
                  ),
                    
                   const SizedBox(width: 10, height: 10),//the space in between
              
                  const TextField(
                    obscureText: true, //to hide the characters for the password
                    decoration: InputDecoration//the textbox for password
                  (prefixIcon: Icon(Icons.password, color: Colors.black,),
                    hintText: "Enter password", 
                  border: OutlineInputBorder(),
                  
                  hintStyle: TextStyle(color: Color.fromARGB(255, 2, 0, 0)),
                  
                  ),
                  ),
                 const  SizedBox(height: 15,), //the space in between
              
                 //the login button that routes to the homepage
                  ElevatedButton(onPressed: (){
                    
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(),
                      ));
                  }, 
                  
                  child: const Text("Login", style: TextStyle(color: Colors.black),),),
              
                  //space for the characters
              
                    const SizedBox(height: 5),
              
                    //The text
              
                  RichText(
                      text:  TextSpan(                            
                        children:  <TextSpan>[
                        const TextSpan(text: 'Do not have an account?',style: TextStyle(color: Colors.black)),
                        
                        TextSpan(text: ' Sign Up', style: const TextStyle(color: Colors.black),
                        recognizer: TapGestureRecognizer()..onTap = (){
                          Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute<void>(
                              builder: (BuildContext context)=>const SignUp()));
                              } 
                              ),
 ], 
  ), 
   ), 
              const SizedBox(height: 20,),        

              RichText(
                      text:  TextSpan(                            
                        children:  <TextSpan>[
                        TextSpan(text: 'Forgot Password?', style: const TextStyle(color: Colors.black), 
                        recognizer: TapGestureRecognizer()..onTap = (){
                          Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute<void>(
                              builder: (BuildContext context)=>const ForgotPassword()));
                              } 
                              ),
 ], 
  ), 
   ), 
             
              
                                 
                ],
              ),
            ),
          ),
        ])
    );
    
  }
}