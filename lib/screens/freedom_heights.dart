import 'package:flutter/material.dart';

class FreedomHeights extends StatefulWidget {
  const FreedomHeights({super.key});

  @override
  State<FreedomHeights> createState() => _FreedomHeightsState();
}

class _FreedomHeightsState extends State<FreedomHeights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FreedomHeights", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),

    );
  }
}