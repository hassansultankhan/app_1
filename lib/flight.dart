class flight{
  String description;
  List<dynamic> model =[];

  flight(this.description, 
  this.model
  );

  static List<flight> getflightsdata(Map<dynamic, dynamic> data){
    List<flight> flights = [];
    for (final flt in data['rows']){
      String description1 = flt['description'];
      List<dynamic> model1 = flt['models'][0]["Name"];
      flight f= flight(description1, model1);
      flights.add(f);
    }
    return flights;
  }


}