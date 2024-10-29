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

import 'package:flutter/services.dart' show rootBundle;
import 'package:ini/ini.dart'; // Certifique-se de ter o pacote 'ini' adicionado no pubspec.yaml

Future<String> loadIniFile() async {
  // Carrega o conteúdo do arquivo .ini
  final content = await rootBundle.loadString('assets/SOFTWORKEasy.ini');

  // Analisa o conteúdo do .ini usando o pacote 'ini'
  final config = Config.fromString(content);

  // Retorna o valor da seção 'CHAVE' e chave 'CHAVEAPP'
  return config.get('CHAVE', 'CHAVEAPP') ?? 'Valor não encontrado';
}
