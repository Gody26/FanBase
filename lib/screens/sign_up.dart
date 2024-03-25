import 'package:flutter/material.dart';
import 'package:fan_base/screens/home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Padding(
          padding: const EdgeInsets.all(50.0),
           
        
      
        child: Center(
          child: Column(
            children: [
              const Text("Sign Up ", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
          
          const TextField(decoration: InputDecoration( 
            hintText: "First Name", 
            hintStyle: TextStyle(color: Colors.black),
            border:OutlineInputBorder(),
            label: Text("First Name"),
            prefixIcon: Icon(Icons.person, color: Colors.black,)
            
            
            ),),
          
            const SizedBox(height: 20),
          
            const TextField(decoration: InputDecoration( 
            hintText: "Last Name", 
            hintStyle: TextStyle(color: Color.fromARGB(255, 2, 0, 0)),
            border: OutlineInputBorder(),
            label: Text("Last Name"),
             prefixIcon: Icon(Icons.person, color: Colors.black,)
            ),),
          
            const SizedBox(height: 20,),
          
            const TextField(decoration: InputDecoration( 
            hintText: "Email", 
            hintStyle: TextStyle(color: Color.fromARGB(255, 2, 0, 0)),
            border: OutlineInputBorder(),
            label: Text("Email"),
            prefixIcon: Icon(Icons.email, color: Colors.black,)
            ),),
          
            const SizedBox(height: 20,),
          
            const TextField(
              obscureText: true,
              decoration: InputDecoration( 
            hintText: "Password",
            hintStyle: TextStyle(color: Color.fromARGB(255, 2, 0, 0)), 
            border: OutlineInputBorder(),
            label: Text("Password"),
            prefixIcon: Icon(Icons.password, color: Colors.black,)
            ),),
          
            const SizedBox(height: 20),
          
           ElevatedButton(onPressed: (){
                      
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage(),
                        ));
                    }, 
                    
                    child: const Text("Proceed"),),
          
          
          
            ],),
        
  ),
  ),
  ],),
      
    );
  }
}