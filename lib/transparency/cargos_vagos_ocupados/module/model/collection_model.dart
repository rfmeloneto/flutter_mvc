class CollectionModel {
  final String entrancia;
  final String speciality;
  final int month;
  final int year;

  CollectionModel({
    required this.entrancia,
    required this.speciality,
    required this.month,
    required this.year,
  });

  static fromJson(dynamic json) {
    List<CollectionModel> entities = [];

    for (int i = 0; i < 5; i++) {
      entities.add(CollectionModel(
        entrancia: json[i]['entrancia'],
        speciality: json[i]['speciality'],
        month: json[i]['month'],
        year: json[i]['year'],
      ));
    }

    return entities;
  }

  Map<String, dynamic> toJson() {
    return {
      'entrancia': entrancia,
      'speciality': speciality,
      'month': month,
      'year': year,
    };
  }
}
