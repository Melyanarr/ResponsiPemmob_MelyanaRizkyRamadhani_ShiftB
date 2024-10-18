class VaccineSchedule {
  final int id;
  final String personName;
  final String vaccineType;
  final int age;

  VaccineSchedule({
    required this.id,
    required this.personName,
    required this.vaccineType,
    required this.age,
  });

  factory VaccineSchedule.fromJson(Map<String, dynamic> json) {
    return VaccineSchedule(
      id: json['id'],
      personName: json['person_name'],
      vaccineType: json['vaccine_type'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'person_name': personName,
      'vaccine_type': vaccineType,
      'age': age,
    };
  }
}
