
import 'package:flutter/material.dart';



class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Text("Shop", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
      body:  const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Center( 
          child: Padding(padding:   EdgeInsets.all(50.0),
          child: Column(
            children: [
              Text("Interested in...", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),

              SizedBox(height: 25,),
              Card(
                
                color: Colors.white,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(Icons.car_rental, color: Colors.black,)
                  
                ),
              ),
          
              SizedBox(height: 10,),
          
              Text("Rental Cars", style: TextStyle(fontWeight: FontWeight.w500),),
          
                Card(
                child:  SizedBox(
                  height: 100,
                  width: 100,
                   child: Icon(Icons.house_rounded, color: Colors.black,)
                ),
              ),

               SizedBox(height: 10,),
          
              Text("Homes", style: TextStyle(fontWeight: FontWeight.w500),),

               Card(
                child:  SizedBox(
                  height: 100,
                  width: 100,
                   child: Icon(Icons.chair, color: Colors.black,)
                ),
              ),

               SizedBox(height: 10,),
          
              Text("Furniture", style: TextStyle(fontWeight: FontWeight.w500),),

               Card(
                child:  SizedBox(
                  height: 100,
                  width: 100,
                   child: Icon(Icons.handyman, color: Colors.black,)
                ),
              ),

               SizedBox(height: 10,),
          
              Text("Tools", style: TextStyle(fontWeight: FontWeight.w500),),
          
          
            ],
          ),
                 
            
            
          ),
        ),),

      );
      
    
  }
}