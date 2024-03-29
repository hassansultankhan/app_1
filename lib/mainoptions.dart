import 'package:app_1/airlines.dart';
import 'package:app_1/homescreen.dart';
import 'package:flutter/material.dart';

class mainMenu extends StatelessWidget {
  const mainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lists"),
        centerTitle: true,
      ),

      body:
      Container(
        child: Padding(padding: EdgeInsets.only(left: 20),
        child: Column(
          children:[
            SizedBox(height: 20),
             ElevatedButton(
                 onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => new_list()
                  )
                  );
                 },
               child: Text("Aircraft list"),
               ),
            
            SizedBox(height:20),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute
              (builder: (context) => const airlines(),
              )
              );
            }, 
            child: Text("Airlines list"))

              
          ],
        ),
      )
      ),
    );
  }
}