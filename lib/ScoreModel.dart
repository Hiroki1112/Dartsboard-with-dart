class ScoreModel {
  int totalScore;
  String scores;
  String name;
  String date;
  String type;

  ScoreModel({this.totalScore, this.scores, this.name, this.date, this.type});

  Map toJson() => {
        'totalScore': totalScore,
        'scores': scores,
        'name': name,
        'date': date,
        'type': type,
      };

  ScoreModel.fromJson(Map json)
      : totalScore = json['totalScore'],
        scores = json['scores'],
        name = json['name'],
        date = json['date'],
        type = json['type'];
}
