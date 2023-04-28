class flight {
  String description;
  List<dynamic> model = [];
  int length;
  // Map<String, dynamic> someMap = {};
  List<String> names=[];
  List<String> codes= [];
  List<String> detils= [];
  flight(this.description, this.model, this.length, this.names, this.codes, this.detils);

  static List<flight> getflightsdata(Map<dynamic, dynamic> data) {
    List<flight> flights = [];
    // Map<String, dynamic> map1 = {};
    for (final flt in data['rows']) {
      
      String description1 = flt['description'];
      List<dynamic> model1 = flt['models'];
      int length = model1.length;
      // .compareTo(0);
      String name;
      String code;
      String detail;
      List<String> names1=[];
      List<String> codes1=[];
      List<String> details1=[];
      
      for (int i = 0; i < length; i++) 
      {
        name = flt["models"][i]["Name"];
        code = flt["models"][i]["Code"];
        names1.add(name);
        codes1.add(code);
        detail = "Aircraft Name: ${flt["models"][i]["Name"]}\nAircraft Code: ${flt["models"][i]["Code"]}\n\n";
        details1.add(detail);
      }
   
      flight f = flight(description1, model1, length, names1, codes1, details1);
      flights.add(f);
    }
    return flights;
  }
}
