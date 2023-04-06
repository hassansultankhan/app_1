class flight {
  String description;
  List<dynamic> model = [];
  int length;
  Map<String, dynamic> someMap = {};
  List<String> names=[];
  flight(this.description, this.model, this.length, this.names);

  static List<flight> getflightsdata(Map<dynamic, dynamic> data) {
    List<flight> flights = [];
    Map<String, dynamic> map1 = {};
    for (final flt in data['rows']) {
      
      String description1 = flt['description'];
      List<dynamic> model1 = flt['models'];
      int length = model1.length.compareTo(0);
      String name;
      List<String> names1=[];
      
      for (int i = 0; i < length; i++) 
      {
        name= flt["models"][i]["Name"];
        names1.add(name);
      }
   
      flight f = flight(description1, model1, length, names1);
      flights.add(f);
    }
    return flights;
  }
}
