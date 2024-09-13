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

import 'package:flutter/services.dart';

Future actionKeyboardShortcut(
  BuildContext context,
  Future Function()? actionShortcut,
) async {
  FocusNode _focusNode = FocusNode();

  // Adiciona o Listener de eventos de teclado ao FocusNode
  WidgetsBinding.instance.addPostFrameCallback((_) {
    FocusScope.of(context).requestFocus(_focusNode);
  });

  // Usa o KeyboardListener para escutar eventos de teclado
  return KeyboardListener(
    focusNode: _focusNode,
    onKeyEvent: (KeyEvent event) {
      if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.f5) {
        // Executa a ação quando a tecla F5 é pressionada
        print("A tecla F5 foi pressionada!");
        if (actionShortcut != null) {
          actionShortcut();
        }
      }
    },
    child:
        Container(), // Pode ser substituído pelo seu widget ou lógica específica
  );
}