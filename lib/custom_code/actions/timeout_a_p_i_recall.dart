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
import 'dart:async'; // Necessário para usar timeout em futures

class TimeoutAPIRecall extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Nenhuma modificação na requisição antes do envio.
    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    try {
      // Aplica um timeout de 700ms à operação de resposta
      final result = await Future.delayed(
        Duration(milliseconds: 700), // Simulando a espera
        () => response, // Retorna a resposta original após o delay
      ).timeout(
        Duration(milliseconds: 700),
        onTimeout: () {
          // Retorna uma resposta de erro personalizada no caso de timeout
          print('Timeout após 700ms');
          return ApiCallResponse(
            {'error': 'Timeout na requisição.'}, // JSON de erro
            {}, // Cabeçalhos vazios, ajuste conforme necessário
            408, // Código de status para Timeout
          );
        },
      );
      print('Resposta recebida dentro do tempo');
      return result;
    } catch (e) {
      print('Erro inesperado: $e');
      // Em caso de erro não esperado, retorna uma resposta de erro genérica
      return ApiCallResponse(
        {'error': 'Erro durante a requisição.'}, // JSON de erro genérico
        {}, // Cabeçalhos vazios, ajuste conforme necessário
        500, // Código de status para erro interno
      );
    }
  }
}
