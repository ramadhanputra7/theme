import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        //visualDensity: VisualDensity.compact,
        //visualDensity: VisualDensity.comfortable
        //visualDensity: VisualDensity(horizontal: 2, vertical: 2),
        //primaryColor: Colors.blue,
        primarySwatch: Colors.red,
        // ignore: deprecated_member_use
        accentColor: Colors.purple[900],
        textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Color.fromARGB(255, 2, 2, 2), fontFamily: "Robot"),
        ),
        appBarTheme: AppBarTheme(
            color: Colors.lime,
            titleTextStyle: TextStyle(
                color: Colors.black, fontFamily: "Robot", fontSize: 40)),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/wendys.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Center(
              child: Text(
                "Theme App",
                textAlign: TextAlign.end,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "This is Text",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "This Is Text",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Button",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 7.0,
            onPressed: () {},
            child: Icon(Icons.close),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        ),
      ],
    );
  }
}
