import '/flutter_flow/flutter_flow_util.dart';
import 'create_food_widget.dart' show CreateFoodWidget;
import 'package:flutter/material.dart';

class CreateFoodModel extends FlutterFlowModel<CreateFoodWidget> {
  ///  Local state fields for this page.

  String photoFood =
      'https://img.freepik.com/vector-premium/logo-comida-restaurante-concepto-chat_337180-889.jpg';

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
  DateTime? datePicked;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
