import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'alimentation_widget.dart' show AlimentationWidget;
import 'package:flutter/material.dart';

class AlimentationModel extends FlutterFlowModel<AlimentationWidget> {
  ///  Local state fields for this page.

  DateTimeRange? selectedDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  Map<AlimentationRecord, bool> checkboxValueMap = {};
  List<AlimentationRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
