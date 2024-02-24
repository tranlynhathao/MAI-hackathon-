import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleName = "MAI Health";
    return MaterialApp(
      title: titleName,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Times new roman',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: AppBar(
            toolbarHeight: 130,
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 0),
                      Image.asset(
                        "assets/ing/Logo MAI.png",
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(width: 30),
                      Text("VietNam"),
                      SizedBox(width: 30),
                      RawMaterialButton(
                        onPressed: () {
                          // Handle button press
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          doSomeThing(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.account_circle, size: 40,),
              onPressed: () {
                // Handle my account icon tap
              },
            ),
          ],
        ),
      ),
    );
  }
}


class doSomeThing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSquareButton1(),
                SizedBox(width: 20), // Adjust spacing between buttons
                buildSquareButton2(),
              ],
            ),
            SizedBox(height: 20), // Adjust spacing between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSquareButton3(),
                SizedBox(width: 20), // Adjust spacing between buttons
                buildSquareButton4(),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildSquareButton1() {
    return SizedBox(
      width: 185, // Adjust button width
      height: 185, // Adjust button height
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set button background color
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Doctor.png"), // Replace with your image path
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.black87), // Adjust text color
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSquareButton2() {
    return SizedBox(
      width: 185, // Adjust button width
      height: 185, // Adjust button height
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Make button transparent
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Note.png"), // Replace with your image path
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.black87), // Adjust text color
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
  Widget buildSquareButton3() {
    return SizedBox(
      width: 185, // Adjust button width
      height: 185, // Adjust button height
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Make button transparent
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Lich.png"), // Replace with your image path
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.white), // Adjust text color
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
  Widget buildSquareButton4() {
    return SizedBox(
      width: 185, // Adjust button width
      height: 185, // Adjust button height
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Make button transparent
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Nghe.png"), // Replace with your image path
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.white), // Adjust text color
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
