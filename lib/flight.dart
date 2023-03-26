class flight{
  String description;
  List<dynamic> model =[];

  flight(this.description, this.model);

  static List<flight>getflightsdata(List<dynamic> data){
    List<flight> flights = [];
    for (final flt in data){
      String description1 = flt['description'];
      List<dynamic> model1 = flt['models'];
    }
    return flights;
  }


}