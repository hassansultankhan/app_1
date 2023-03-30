class flight{
  String description;
  List<dynamic> model =[];
  int length;
  List<dynamic> names =[];

  flight(this.description, this.model,this.length, this.names);

  static List<flight> getflightsdata(Map<dynamic, dynamic> data){
    List<flight> flights = [];
    for (final flt in data['rows']){
      String singlename;
      List<dynamic> names1= [];
      String description1 = flt['description'];
      List<dynamic> model1 = flt['models'];
      int length = model1.length;
      // for(int i=0; i<length; i++)
      // {
      // singlename = flt['models'][i]['Name'];
      // names1[i]=singlename;
      // }
      
      flight f= flight(description1, model1, length, names1);
      flights.add(f);
    }
    return flights;
  }


}