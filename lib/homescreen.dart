import 'package:flutter/material.dart';

class new_list extends StatefulWidget {
  const new_list({Key? key}) : super(key: key);

  @override
  State<new_list> createState() => _new_listState();
}

class _new_listState extends State<new_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New List"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ListView.builder(
              itemCount: ,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Text(data)
                  ],

                );
              }
              )
          ],
        ),
      ),
    );
  }
  getdata
}