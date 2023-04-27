import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class airports extends StatefulWidget {
  const airports({Key? key}) : super(key: key);

  @override
  State<airports> createState() => _airportsState();
}

class _airportsState extends State<airports> {
  @override
List<airLines> airLinesData = [];

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Airports"),
        centerTitle: true,
      ),

      body: Center(
        child: ListView.builder(
          itemBuilder: context,
          itemCount: ,
          ),
      ),
    );
  }
   getAirlinesData()async{
    const String url = 'https://flight-radar1.p.rapidapi.com/airlines/list';
    var response = await http.get(Uri.parse(url),
    headers:{
          'X-RapidAPI-Key': '6813aa3299msh1d51e2ab9582d84p18160ajsn37bd265c2323',
          'X-RapidAPI-Host': 'flight-radar1.p.rapidapi.com'
    }
    );
    Map<String,dynamic> ALdata = jsonDecode(response.body);
    if (mounted){
      setState(() {
        airLinesData = ALdata.getAirLinesData(data);
      });
    } 
   }
}