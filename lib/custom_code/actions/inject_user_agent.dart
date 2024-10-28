// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/api_requests/api_interceptor.dart';

class InjectUserAgent extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Verifica se o userAgentValue não está vazio antes de aplicar
    final userAgent = FFAppState().ConfigGlobais.usuario;

    // Imprime o valor do User-Agent
    print('User-Agent encontrado: $userAgent');

    // Adiciona o valor do User-Agent nos headers
    options.headers['User-Agent'] = userAgent;

    // Verifica os headers após a modificação
    print('Headers após a modificação: ${options.headers}');

    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    return response;
  }
}
