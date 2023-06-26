class DetailModel {
  final String title, about, genre, age;

  DetailModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        about = json["about"],
        age = json["age"],
        genre = json["genre"];
}
