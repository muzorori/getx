
class Visit {
  String? trxDate;
  String? billLocation;
  String? episodeNumber;
  String? patentName;
  String? suffix;
  String? description;

  Visit({
    this.trxDate,
    this.billLocation,
    this.episodeNumber,
    this.patentName,
    this.suffix,
    this.description,
  });


  Visit.fromJson(Map<String, dynamic> parsedJson) {
    trxDate = parsedJson['trxDate'];
    billLocation=parsedJson['billLocation'];
    episodeNumber=parsedJson['episodeNumber'];
    patentName= parsedJson['patentName'];
    suffix= parsedJson['suffix'];
    description= parsedJson['description'];
  }

  Map<String, dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String, dynamic>();

    data['trxDate'] = this.trxDate ;
    data['billLocation'] = this.billLocation ;
    data['episodeNumber'] = this.episodeNumber ;
    data['patentName'] = this.patentName ;
    data['suffix'] = this.suffix ;
    data['description'] = this.description ;

    return data;
  }

}

class VisitListMapModel {
  final List<Visit> visits;

  VisitListMapModel({required this.visits});

  factory VisitListMapModel.fromJson(List<dynamic> parsedJson) {

    List<Visit> visitList = [];
    visitList = parsedJson.map((i) => Visit.fromJson(i)).toList();

    return VisitListMapModel(
      visits: visitList,
    );
  }
}




