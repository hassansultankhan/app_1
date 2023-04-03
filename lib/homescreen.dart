import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http; //for makign http requests
import 'dart:convert'; //for data conversion between JSON and others
import 'flight.dart';




class new_list extends StatefulWidget {
  const new_list({Key? key}) : super(key: key);

  @override
  State<new_list> createState() => _new_listState();
}

class _new_listState extends State<new_list> {
  @override
List<flight> flightsdata = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New List"),
        centerTitle: true,
      ),
      body:SingleChildScrollView( 
      child:Container(
      child:Column(
      children:[
        ElevatedButton(onPressed: getdata, child: Text('get data')),
       ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: flightsdata.length,
              itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text('${flightsdata[index].description}'),
                    Text( '${flightsdata[index].model}'),
                    Text('${flightsdata[index].length}'),
                    Text('${flightsdata[index].model[0]}'),
                    Text('${flightsdata[index].someMap['Name']}'),
                            ],

                            );
              }
              )
      ]
    ),
      ),
      ),
    );


  }
  getdata() async {
    // var countryPointer = widget.countryName.toString();
    const String  url ='https://flight-radar1.p.rapidapi.com/aircrafts/list';
    var response = await http.get(Uri.parse(url),
        headers: {
    'X-RapidAPI-Key': '6813aa3299msh1d51e2ab9582d84p18160ajsn37bd265c2323',
    'X-RapidAPI-Host': 'flight-radar1.p.rapidapi.com'
  }
        );
    Map<String, dynamic> data = jsonDecode(response.body);
    if (mounted) {
      setState(() {

        flightsdata = flight.getflightsdata(data);
        // loading = true;

      });
    }
  }
}


