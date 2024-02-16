import 'package:freezed_annotation/freezed_annotation.dart';

part 'absence_model.freezed.dart';
part 'absence_model.g.dart';
@freezed
class Absence with _$Absence {
  factory Absence({
    required DateTime date,
    required String name,
    @Default(false) absence,

  }) = _Absence;

  factory Absence.fromJson(Map<String, dynamic> json) =>
    _$AbsenceFromJson(json);
}
