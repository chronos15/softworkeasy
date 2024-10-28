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

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<bool> testConnectionServer(String? hostIP) async {
  if (hostIP == null || hostIP.isEmpty) {
    print('Host IP inválido');
    return false; // Retorna false se o hostIP não for válido
  }

  try {
    print('Tentando conectar com o servidor: $hostIP');
    // Faz uma requisição POST para o endpoint com um timeout de 1000 ms
    final response = await http
        .post(
          Uri.parse(hostIP),
          headers: {
            'Content-Type':
                'application/json', // Define o tipo de conteúdo como JSON
            'Access-Control-Allow-Origin': '*', // Adiciona o cabeçalho
          },
          body: json.encode(
              {}), // Se precisar de um corpo específico, substitua {} pelos dados desejados
        )
        .timeout(Duration(milliseconds: 700));

    print('Resposta recebida com código: ${response.statusCode}');

    // Verifica se a requisição foi bem-sucedida
    if (response.statusCode == 200) {
      // Decodifica o corpo da resposta
      final responseBody = json.decode(response.body);
      print('Corpo da resposta: $responseBody');

      // Verifica se o corpo da resposta contém o campo "value" e se ele é um booleano
      if (responseBody is Map<String, dynamic> &&
          responseBody['value'] is bool) {
        print('Valor booleano encontrado: ${responseBody['value']}');
        return responseBody['value']; // Retorna o valor booleano
      } else {
        print('Campo "value" não encontrado ou não é booleano');
      }
    } else {
      print('Falha na requisição. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Em caso de erro na requisição ou timeout, retorna false
    print('Erro na conexão ou timeout: $e');
    return false;
  }

  print('Retornando false após falha na conexão');
  return false; // Retorna false se algo der errado
}
