import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    
    
    List<university> unidata =[];
    //initializations
    return Scaffold(
      appBar: AppBar(
        title: const Text("Some API"),
        centerTitle: true,
        elevation: 5.0,
      ),

      body: Container(
        child: Column(
          children: [
            ListView.builder(
              //item count not add yet
              // inkwell
              //single child scroll view
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                    
                    child: Row(
                      //Axis alignment
                      children: [
                        Container(
                        width: MediaQuery.of(context).size.width,
                        alignment:  Alignment.centerLeft,
                        child: Padding(padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${unidata[index].state}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                            ),
                            ),
                          ],

                        ),
                        
                        ),
                        )
                      ],

                    ),
                    )

                  ],
                );
              })
            )
          ],

        ),
      ),

    );
  }
}