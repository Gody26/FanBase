import 'package:flutter/material.dart';

class ArenaOne extends StatefulWidget {
  const ArenaOne({super.key});

  @override
  State<ArenaOne> createState() => _ArenaOneState();
}

class _ArenaOneState extends State<ArenaOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ArenaOne", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,        
       ),

      

    );
  }
}