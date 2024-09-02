import '/flutter_flow/flutter_flow_util.dart';
import 'authorization_widget.dart' show AuthorizationWidget;
import 'package:flutter/material.dart';

class AuthorizationModel extends FlutterFlowModel<AuthorizationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtfield_nameRegister widget.
  FocusNode? txtfieldNameRegisterFocusNode;
  TextEditingController? txtfieldNameRegisterTextController;
  String? Function(BuildContext, String?)?
      txtfieldNameRegisterTextControllerValidator;
  String? _txtfieldNameRegisterTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 5) {
      return 'Ingresa un nombre de usuario de 5 a 25 caracteres';
    }
    if (val.length > 25) {
      return 'Ingresa un nombre de usuario de 5 a 25 caracteres';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Ingrese un nombre de usuario no valido';
    }
    return null;
  }

  // State field(s) for txtfield_emailRegister widget.
  FocusNode? txtfieldEmailRegisterFocusNode;
  TextEditingController? txtfieldEmailRegisterTextController;
  String? Function(BuildContext, String?)?
      txtfieldEmailRegisterTextControllerValidator;
  String? _txtfieldEmailRegisterTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Ingrese un correo valido';
    }
    return null;
  }

  // State field(s) for txtfield_passwordRegister widget.
  FocusNode? txtfieldPasswordRegisterFocusNode;
  TextEditingController? txtfieldPasswordRegisterTextController;
  late bool txtfieldPasswordRegisterVisibility;
  String? Function(BuildContext, String?)?
      txtfieldPasswordRegisterTextControllerValidator;
  String? _txtfieldPasswordRegisterTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 7) {
      return 'Ingrese una contraseña de 7 o más caracteres';
    }

    return null;
  }

  // State field(s) for txtfield_confirmPasswRegister widget.
  FocusNode? txtfieldConfirmPasswRegisterFocusNode;
  TextEditingController? txtfieldConfirmPasswRegisterTextController;
  late bool txtfieldConfirmPasswRegisterVisibility;
  String? Function(BuildContext, String?)?
      txtfieldConfirmPasswRegisterTextControllerValidator;
  String? _txtfieldConfirmPasswRegisterTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 7) {
      return 'Ingrese una contraseña de 7 o más caracteres';
    }

    return null;
  }

  // State field(s) for textfield_emailLogin widget.
  FocusNode? textfieldEmailLoginFocusNode;
  TextEditingController? textfieldEmailLoginTextController;
  String? Function(BuildContext, String?)?
      textfieldEmailLoginTextControllerValidator;
  // State field(s) for textfield_passwordLogin widget.
  FocusNode? textfieldPasswordLoginFocusNode;
  TextEditingController? textfieldPasswordLoginTextController;
  late bool textfieldPasswordLoginVisibility;
  String? Function(BuildContext, String?)?
      textfieldPasswordLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtfieldNameRegisterTextControllerValidator =
        _txtfieldNameRegisterTextControllerValidator;
    txtfieldEmailRegisterTextControllerValidator =
        _txtfieldEmailRegisterTextControllerValidator;
    txtfieldPasswordRegisterVisibility = false;
    txtfieldPasswordRegisterTextControllerValidator =
        _txtfieldPasswordRegisterTextControllerValidator;
    txtfieldConfirmPasswRegisterVisibility = false;
    txtfieldConfirmPasswRegisterTextControllerValidator =
        _txtfieldConfirmPasswRegisterTextControllerValidator;
    textfieldPasswordLoginVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtfieldNameRegisterFocusNode?.dispose();
    txtfieldNameRegisterTextController?.dispose();

    txtfieldEmailRegisterFocusNode?.dispose();
    txtfieldEmailRegisterTextController?.dispose();

    txtfieldPasswordRegisterFocusNode?.dispose();
    txtfieldPasswordRegisterTextController?.dispose();

    txtfieldConfirmPasswRegisterFocusNode?.dispose();
    txtfieldConfirmPasswRegisterTextController?.dispose();

    textfieldEmailLoginFocusNode?.dispose();
    textfieldEmailLoginTextController?.dispose();

    textfieldPasswordLoginFocusNode?.dispose();
    textfieldPasswordLoginTextController?.dispose();
  }
}
