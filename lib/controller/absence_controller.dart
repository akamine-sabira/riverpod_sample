
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/sample/absence_model.dart';

part 'absence_controller.g.dart';
@riverpod
class AbsenceController extends _$AbsenceController {
  @override
  Future<Absence> build() async => Absence(
    date: DateTime(2024, 10, 21),
    name: 'やまだ',
  );
}