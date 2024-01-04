import 'package:birthday/set3.dart';
import 'package:birthday/variables.dart';
import 'package:flutter/material.dart';
class set2_screen extends StatefulWidget {
  const set2_screen({super.key});

  @override
  State<set2_screen> createState() => _set2_screenState();
}

class _set2_screenState extends State<set2_screen> {
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
            "Is your birthday in set2?",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              "2 3 6 7\n 10 11 14 15\n 18 19 22 23 \n 26 27 30 31",
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
                      birthday+=2;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>set3_screen()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>set3_screen()));
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
