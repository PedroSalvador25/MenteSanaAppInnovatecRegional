import '/flutter_flow/flutter_flow_util.dart';
import '/life_style/bottom_nav/bottom_nav_widget.dart';
import 'diary_write_widget.dart' show DiaryWriteWidget;
import 'package:flutter/material.dart';

class DiaryWriteModel extends FlutterFlowModel<DiaryWriteWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  DateTime? daySelected;

  String? titleRec;

  String? textoRec;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    bottomNavModel.dispose();
  }
}
