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

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'dart:io';

Future setWindowsLocation() async {
  // Verifica se é uma aplicação Windows
  if (Platform.isWindows) {
    doWhenWindowReady(() {
      const initialSize = Size(800, 600); // Defina o tamanho desejado aqui
      appWindow.size = initialSize;
      appWindow.minSize = initialSize; // Defina o tamanho mínimo da janela
      appWindow.alignment = Alignment.center; // Centraliza a janela no monitor
      appWindow.show();
    });
  }
}
