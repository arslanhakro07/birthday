import 'package:birthday/set2.dart';
import 'package:flutter/material.dart';
import 'variables.dart';

class set1_screen extends StatefulWidget {
  const set1_screen({super.key});

  @override
  State<set1_screen> createState() => _set1_screenState();
}

class _set1_screenState extends State<set1_screen> {

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
            "Is your birthday in set1?",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              "1 3 5 7\n9 11 13 15\n17 19 21 23 \n25 27 29 31",
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
                     birthday+=1;
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>set2_screen()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>set2_screen()));
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
    );
  }
}
