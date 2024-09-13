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

Future winCustomAction(int? choiceType) async {
  // Add your function code here!
  if (choiceType == 1) {
    appWindow.minimize();
  } else if (choiceType == 2) {
    if (appWindow.isMaximized) {
      appWindow.restore();
    } else {
      appWindow.maximize();
    }
  } else if (choiceType == 4) {
    appWindow.maximize();
  } else {
    appWindow.close();
  }
}
