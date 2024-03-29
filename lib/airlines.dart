import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'airline.dart';

class airlines extends StatefulWidget {
  const airlines({Key? key}) : super(key: key);

  @override
  State<airlines> createState() => _airlinesState();
}

class _airlinesState extends State<airlines> {
  @override
List<airline> airLinesData = [];
@override
  void initState() {
    getData2();
    super.initState();
  }

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Airlines"),
        centerTitle: true,
      ),

      body:
       ListView.builder(
          itemCount: airLinesData.length,
          itemBuilder: (context,index){
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
            children:  <Widget>[
             Padding(padding: EdgeInsets.fromLTRB(5,2,0,2),
              child: ListTile(
                title: Text("${airLinesData[index].name}\n${airLinesData[index].code}\n${airLinesData[index].ICAO}"),
                tileColor: Colors.blue,
            
              )
                ),


              

            ],
            
            
            );
          }
          
          ),
      );
  }
   getData2()async{
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
        airLinesData = airline.getAirLinesData(ALdata);
      });
    } 
   }
}