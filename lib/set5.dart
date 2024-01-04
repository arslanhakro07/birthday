import 'package:birthday/Result_screen.dart';
import 'package:birthday/variables.dart';
import 'package:flutter/material.dart';
class set5_screen extends StatefulWidget {
  const set5_screen({super.key});

  @override
  State<set5_screen> createState() => _set5_screenState();
}

class _set5_screenState extends State<set5_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Birthday Guessing Game",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Is your birthday in set5?",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              "16 17 18 19\n20 21 22 23\n24 25 26 27\n28 29 30 31",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    setState(() {
                      birthday+=16;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>results_screen()));
                    });

                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              SizedBox(width: 20,),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>results_screen()));
                    });
                  },
                  child: Text(
                    "No",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      ),
    );;
  }
}
