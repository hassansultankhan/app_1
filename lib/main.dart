import 'package:app_1/homescreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Bismillah",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
           primary: Color.fromARGB(255, 171, 223, 60),// for inside containers
          secondary: Color.fromARGB(255, 87, 188, 24),//text
          surface: Color.fromARGB(255, 210, 227, 194),
          background: Color.fromARGB(255, 255, 255, 255),
          error: Color.fromARGB(255, 251, 3, 3),
          onPrimary: Color.fromARGB(255, 4, 85, 0),
          onSecondary: Color.fromARGB(255, 0, 0, 0),
          onSurface: Colors.grey,
          onBackground: Colors.grey,
          onError: Color.fromARGB(255, 255, 1, 1),
          brightness: Brightness.light,
      ),
    ),
    home: new_list()
    ),
  );
}
