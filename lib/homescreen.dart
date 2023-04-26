import 'package:app_1/acDetails.dart';
import 'package:flutter/material.dart';
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
    void initState(){
    getdata();
    super.initState();
  }
  
List<flight> flightsdata = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New List"),
        centerTitle: true,
      ),
      body:SingleChildScrollView( 
        scrollDirection: Axis.vertical,

      child:Container(
      child:Column(
      children:[
        // ElevatedButton(onPressed: getdata, child: Text('get data')),
       ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: flightsdata.length,
              itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                
                  children:<Widget> [
                    Padding(padding: EdgeInsets.fromLTRB(5, 2, 0, 2),
                    child:InkWell(
                      child:Card( 
                                    
                                        shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        ),

                                        elevation: 5,
                                        margin: EdgeInsets.all(10),
                                        color: Color.fromARGB(255, 163, 232, 243),
                                        shadowColor: Color.fromARGB(255, 98, 131, 207),

                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          height: 50,
                                          width: MediaQuery.of(context).size.width,
                                          
                                          child: ListTile(
                                          title: Text('${flightsdata[index].description}',),
                                          ),
                                        ),

                    ),
                    onTap: () => moveToDetails(flightsdata[index]),
                    ),
                    ),
                                  // Text( '${flightsdata[index].model}'),
                                  // Text('${flightsdata[index].length}'),a
                                          // for (int i =0 ; i < flightsdata[index].length; i++)
                                          //   Text(
                                          //     "Aircraft Name: ${flightsdata[index].names} Aircraft Code: ${flightsdata[index].codes}"
                                          //     ),
                                            
                                  // Text('${flightsdata[index].model[0]["Name"]}'),       
                                  // Text('${flightsdata[index].someMap.values}'),
                                  // Text('${flightsdata[index].detils}'),
                                  // Container(color: Color.fromARGB(255, 27, 159, 27), height: 10,),
      
                     
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

  moveToDetails(flight D){
    Navigator.push(context, MaterialPageRoute(builder:((context) => acDetails(D) )));
  }
}
