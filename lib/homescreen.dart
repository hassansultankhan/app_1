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
  getdata() async {
    var countryPointer = widget.countryName.toString();
    // var url = Uri.parse(
        // 'https://flight-radar1.p.rapidapi.com/aircrafts/list');
    var response = await http.get(Uri.parse(
        'https://flight-radar1.p.rapidapi.com/aircrafts/list'),
        headers: {
    'X-RapidAPI-Key': '6813aa3299msh1d51e2ab9582d84p18160ajsn37bd265c2323',
    'X-RapidAPI-Host': 'flight-radar1.p.rapidapi.com'
  }
        );
    List<dynamic> data = jsonDecode(response.body);
    if (mounted) {
      setState(() {

        unidata = university.getuniveritydata(data);
        loading = true;

      });
    }
  }
}


