import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/frame_components/message_box/message_box_widget.dart';
import 'dart:async';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'un_view_form_login_widget.dart' show UnViewFormLoginWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

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
  // Stores action output result for [Action Block - LoginActionBlock] action in unViewFormLogin widget.
  UsuarioStruct? actionLoginBiometric;
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

    if (val.length < 1) {
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

    if (val.length < 1) {
      return 'Defina pelo menos um caractere!';
    }
    if (val.length > 50) {
      return 'Máximo de caracteres atingido!';
    }

    return null;
  }

  // Stores action output result for [Action Block - LoginActionBlock] action in PasswordField widget.
  UsuarioStruct? loginBlockOnSubmite;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Stores action output result for [Action Block - LoginActionBlock] action in LogInButton widget.
  UsuarioStruct? loginBlock;

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

  /// Action blocks.
  Future<UsuarioStruct?> loginActionBlock(BuildContext context) async {
    ApiCallResponse? loginActionBlock;
    ApiCallResponse? resultEmpresaCallBlock;

    loginActionBlock = await AutentificacaoCall.call(
      ip: FFAppState().ConfigGlobaisServer.host,
      porta: FFAppState().ConfigGlobaisServer.porta,
      path: FFAppState().ConfigGlobaisServer.path,
      token: FFAppState().Token,
      usuario: emailAddressFieldTextController.text,
      senha: passwordFieldTextController.text,
    );

    if (AutentificacaoCall.result(
      (loginActionBlock?.jsonBody ?? ''),
    )!) {
      if (checkboxListTileValue!) {
        FFAppState().updateConfigGlobaisStruct(
          (e) => e
            ..usuario = emailAddressFieldTextController.text
            ..senha = passwordFieldTextController.text
            ..lembrar = checkboxListTileValue,
        );
        FFAppState().isOpenAppLoggin = false;
      } else {
        FFAppState().updateConfigGlobaisStruct(
          (e) => e
            ..usuario = null
            ..senha = null
            ..lembrar = null,
        );
        FFAppState().isOpenAppLoggin = false;
      }

      resultEmpresaCallBlock = await EmpresaViewCall.call(
        ip: FFAppState().ConfigGlobaisServer.host,
        porta: FFAppState().ConfigGlobaisServer.porta,
        path: FFAppState().ConfigGlobaisServer.path,
        token: FFAppState().Token,
      );

      if ((resultEmpresaCallBlock?.succeeded ?? true)) {
        FFAppState().Empresa = EmpresaViewCall.empresa(
          (resultEmpresaCallBlock?.jsonBody ?? ''),
        )!;
        return AutentificacaoCall.usuario(
          (loginActionBlock?.jsonBody ?? ''),
        );
      } else {
        await actions.elegantNotificationError(
          context,
          'Falha',
          'Erro ao realizar conexão com a tabela empresa!',
          FlutterFlowTheme.of(context).primaryText,
          FlutterFlowTheme.of(context).secondaryBackground,
          MediaQuery.sizeOf(context).width < kBreakpointSmall
              ? MediaQuery.sizeOf(context).width
              : 360.0,
          'bottomcenter',
          'frombottom',
        );
        return null;
      }
    } else {
      await showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: GestureDetector(
              onTap: () => FocusScope.of(dialogContext).unfocus(),
              child: Container(
                height: 190.0,
                width: 450.0,
                child: MessageBoxWidget(
                  sTitulo: 'Falha',
                  sText: AutentificacaoCall.message(
                    (loginActionBlock?.jsonBody ?? ''),
                  )!,
                  corPrincipal: FlutterFlowTheme.of(context).error,
                  enableCancel: false,
                  sTextoConfirma: 'Ok',
                  actionConfirm: () async {
                    Navigator.pop(context);
                  },
                  actionCancel: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          );
        },
      );

      return null;
    }
  }
}
