import 'package:flutter/foundation.dart';

class Positions {
  final String entrancia;
  final String speciality;
  final String month;
  final String year;
  Positions({
    required this.entrancia,
    required this.speciality,
    required this.month,
    required this.year,
  });

  factory Positions.fromJson(Map json) {
    return Positions(
      entrancia: json['entrancia'],
      speciality: json['speciality'],
      month: json['month'],
      year: json['year'],
    );
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
