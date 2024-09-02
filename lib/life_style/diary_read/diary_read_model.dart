import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diary_read_widget.dart' show DiaryReadWidget;
import 'package:flutter/material.dart';

class DiaryReadModel extends FlutterFlowModel<DiaryReadWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  DateTime? daySelected;

  String? titleRec;

  String? textoRec;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Firestore Query - Query a collection] action in Calendar widget.
  DiarioRecord? infoRec;

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
