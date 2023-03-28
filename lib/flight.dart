class flight{
  String description;
  // List<dynamic> model =[];

  flight(this.description, 
  // this.model
  );

  static List<flight> getflightsdata(Map<String, dynamic> data){
    List<flight> flights = [];
    for (final flt in data['']){
      String description1 = flt['description'];
      // List<dynamic> model1 = flt['models'];
      flight f= flight(description1
      // model1
      );
      flights.add(f);
    }
    return flights;
  }


}