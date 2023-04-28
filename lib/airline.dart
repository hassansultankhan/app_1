class airline{
  String name;
  String code;
  String ICAO;

  airline(this.name, this.code, this.ICAO);

  static List<airline> getAirLinesData(Map<String, dynamic> data){
    List<airline> airlines =[];
    for (final arln in data['rows']){
            String name1 = arln['Name'];
            String code1 = arln['Code'];
            String ICAO1 = arln['ICAO'];
            airline AL = airline(name1, code1, ICAO1);
            airlines.add(AL);
    }
    return airlines;
  }
}