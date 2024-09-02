import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exercise_widget.dart' show ExerciseWidget;
import 'package:flutter/material.dart';

class ExerciseModel extends FlutterFlowModel<ExerciseWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  String daySelected = 'Monday';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Checkbox widget.
  Map<ExerciseRecord, bool> checkboxValueMap = {};
  List<ExerciseRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
