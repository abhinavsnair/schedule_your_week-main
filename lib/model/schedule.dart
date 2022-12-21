import 'dart:convert';


class WeeklySchedule {
  final Map<String?, List<String?>> schedule;
  WeeklySchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'schedule': schedule});
  
    return result;
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      schedule: Map<String?, List<String?>>.from(map['schedule']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WeeklySchedule.fromJson(String source) => WeeklySchedule.fromMap(json.decode(source));
}
