class flight{
  String description;
  List<dynamic> model =[];
  int length;
  // List<dynamic> names =[];
  Map<String, dynamic> someMap = {
      "Name": "Hassan",
      "Code": 123,
  };

  flight(this.description, this.model,this.length, this.someMap);

  static List<flight> getflightsdata(Map<dynamic, dynamic> data){
    List<flight> flights = [];
    for (final flt in data['rows']){
      String singlename;
      
      String description1 = flt['description'];
      List<dynamic> model1 = flt['models'];
      // Map<String, dynamic> map1= flt['models'][0];
     
      int length = model1.length.compareTo(0);
      for(int i = 0; i<length ; i++ ){
      Map<String, dynamic> map1= flt['models'][i];
      }
      // List<dynamic> names1= [length];
      // for(int i=0; i<length; i++)
      // {
      // singlename = flt['models'][i]['Name'];
      // names1[i]=singlename;
      // }
      
      flight f= flight(description1, model1, length, map1);
      flights.add(f);
    }
    return flights;
  }


}