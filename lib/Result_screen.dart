import 'package:birthday/variables.dart';
import 'package:flutter/material.dart';
class results_screen extends StatefulWidget {
  const results_screen({super.key});

  @override
  State<results_screen> createState() => _results_screenState();
}

class _results_screenState extends State<results_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all()),
          child: Text("Your birthday is on",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,color: Colors.white),) ,),
        Text("$birthday",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,color: Colors.white),),
        Icon(Icons.cake,size: 100,color: Colors.white,)

      ],),
    );
  }
}
