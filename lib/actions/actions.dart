import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future getToken(BuildContext context) async {
  ApiCallResponse? gettoken;
  ApiCallResponse? gettokenSecundario;

  FFAppState().updateConfigGlobaisServerStruct(
    (e) => e..host = FFAppState().ConfigGlobaisServer.hostPrimario,
  );
  FFAppState().update(() {});
  gettoken = await GetTokenCall.call(
    ip: FFAppState().ConfigGlobaisServer.host,
    porta: FFAppState().ConfigGlobaisServer.porta,
    path: FFAppState().ConfigGlobaisServer.path,
    cnpj: FFAppState().ConfigGlobaisServer.cnpj,
  );

  if ((gettoken.succeeded ?? true)) {
    FFAppState().Token = GetTokenCall.token(
      (gettoken.jsonBody ?? ''),
    )!;
    FFAppState().update(() {});
  } else {
    FFAppState().updateConfigGlobaisServerStruct(
      (e) => e..host = FFAppState().ConfigGlobaisServer.hostSecundario,
    );
    FFAppState().update(() {});
    gettokenSecundario = await GetTokenCall.call(
      ip: FFAppState().ConfigGlobaisServer.host,
      porta: FFAppState().ConfigGlobaisServer.porta,
      path: FFAppState().ConfigGlobaisServer.path,
      cnpj: FFAppState().ConfigGlobaisServer.cnpj,
    );

    if ((gettokenSecundario.succeeded ?? true)) {
      FFAppState().Token = GetTokenCall.token(
        (gettokenSecundario.jsonBody ?? ''),
      )!;
      FFAppState().update(() {});
      return;
    } else {
      unawaited(
        () async {
          await actions.elegantNotificationError(
            context,
            'Falha',
            'Não foi possível conectar ao servidor da aplicação!!!',
            FlutterFlowTheme.of(context).primaryText,
            FlutterFlowTheme.of(context).secondaryBackground,
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return MediaQuery.sizeOf(context).width;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 360.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 360.0;
              } else {
                return 360.0;
              }
            }(),
            'bottomcenter',
            'frombottom',
          );
        }(),
      );
      return;
    }
  }
}

Future changeOrientation(
  BuildContext context, {
  bool? landscape,
}) async {
  unawaited(
    () async {
      await action_blocks.changeOrientation(
        context,
        landscape: landscape,
      );
    }(),
  );
}

Future verifyConnection(BuildContext context) async {
  bool? connectionTrue;

  connectionTrue = await actions.testConnectionServer(
    'http://${FFAppState().ConfigGlobaisServer.host}:${FFAppState().ConfigGlobaisServer.porta.toString()}/${FFAppState().ConfigGlobaisServer.path}/auth/testconnection',
  );
  if (!connectionTrue) {
    await actions.elegantNotificationError(
      context,
      'Falha',
      'Servidor não está respondendo. Verifique sua conexão ou tente novamente!',
      FlutterFlowTheme.of(context).primaryText,
      FlutterFlowTheme.of(context).secondaryBackground,
      360.0,
      'topright',
      'fromright',
    );
  }
  FFAppState().isConnected = connectionTrue;
}
