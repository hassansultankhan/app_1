import 'package:app_1/flight.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class acDetails extends StatefulWidget {
  flight flightDetails;
  acDetails(this.flightDetails);

  @override
  State<acDetails> createState() => _acDetailsState();
}

class _acDetailsState extends State<acDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AirCraft Details"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent[400],
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        

        child: Column(

           children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child:Text(widget.flightDetails.description),
            ),
           ], 
        ),
        
      ),
  

    );
  }
}