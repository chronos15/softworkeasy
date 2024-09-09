import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'un_view_form_login_widget.dart' show UnViewFormLoginWidget;
import 'package:flutter/material.dart';

class UnViewFormLoginModel extends FlutterFlowModel<UnViewFormLoginWidget> {
  ///  Local state fields for this page.

  bool disableByError = false;

  String sMessageError = 'Realizando conexão com o servidor...';

  bool? bTentarNovamente = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetToken)] action in unViewFormLogin widget.
  ApiCallResponse? gettoken;
  bool autBiometric = false;
  // Stores action output result for [Backend Call - API (Autentificacao)] action in unViewFormLogin widget.
  ApiCallResponse? loginActionBiometric;
  // Stores action output result for [Backend Call - API (EmpresaView)] action in unViewFormLogin widget.
  ApiCallResponse? resultEmpresaBiometric;
  // Stores action output result for [Backend Call - API (GetToken)] action in unViewFormLogin widget.
  ApiCallResponse? gettokenSecundario;
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode;
  TextEditingController? emailAddressFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextControllerValidator;
  String? _emailAddressFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, informe o usuário!';
    }

    if (val.isEmpty) {
      return 'Defina pelo menos um caractere!';
    }
    if (val.length > 50) {
      return 'Máximo de caracteres atingido!';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Verifique seu usuário e tente novamente!';
    }
    return null;
  }

  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  String? _passwordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe sua senha!';
    }

    if (val.isEmpty) {
      return 'Defina pelo menos um caractere!';
    }
    if (val.length > 50) {
      return 'Máximo de caracteres atingido!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Autentificacao)] action in PasswordField widget.
  ApiCallResponse? loginActionSubmite;
  // Stores action output result for [Backend Call - API (EmpresaView)] action in PasswordField widget.
  ApiCallResponse? resultEmpresaCallOnSignin;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Stores action output result for [Backend Call - API (Autentificacao)] action in LogInButton widget.
  ApiCallResponse? loginAction;
  // Stores action output result for [Backend Call - API (EmpresaView)] action in LogInButton widget.
  ApiCallResponse? resultEmpresaCall;

  @override
  void initState(BuildContext context) {
    emailAddressFieldTextControllerValidator =
        _emailAddressFieldTextControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldTextControllerValidator =
        _passwordFieldTextControllerValidator;
  }

  @override
  void dispose() {
    emailAddressFieldFocusNode?.dispose();
    emailAddressFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
