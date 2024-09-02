import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'activities_widget.dart' show ActivitiesWidget;
import 'package:flutter/material.dart';

class ActivitiesModel extends FlutterFlowModel<ActivitiesWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  String daySelected = 'Monday';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Checkbox widget.
  Map<WeekActivitiesRecord, bool> checkboxValueMap = {};
  List<WeekActivitiesRecord> get checkboxCheckedItems =>
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
