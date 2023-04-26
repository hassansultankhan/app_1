import 'package:app_1/flight.dart';
import 'package:flutter/material.dart';



class acDetails extends StatefulWidget {
  flight flightDetails;
  acDetails(this.flightDetails);

  @override
  State<acDetails> createState() => _acDetailsState();
}

class _acDetailsState extends State<acDetails> {
   TextStyle stylepointer = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 14, 59, 137),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aircraft Details"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 209, 221, 243),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 15),
        child:
        ListView(
          scrollDirection: Axis.vertical,
          children:[
            SizedBox(height: 20,),

        // child: Column(
          
          // children:[
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //    children: [
        //     const Padding(padding: EdgeInsets.only(left: 20)),
            // const SizedBox(height: 35,),
            // Text(widget.flightDetails.description , style: const TextStyle(fontSize: 20,
            // fontWeight: FontWeight.bold, color: Colors.blue,
            // )),
        //     const SizedBox(height: 15,),
            // for(int i =0; i <widget.flightDetails.length; i++)
            // Text(widget.flightDetails.detils[i], style: stylepointer, ),
         ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
        
              itemCount: 1,

              itemBuilder: ((context, index) {                
                return Column(children: [
                  for(int i =0; i <widget.flightDetails.length; i++)
            ListTile( title:Text(widget.flightDetails.detils[i], style: stylepointer, ),
            dense: true,
            ),
                ],);
              })
              )
            
            

            
           ], 
        ),
        
      ),
      ),
  

    );
  }
}