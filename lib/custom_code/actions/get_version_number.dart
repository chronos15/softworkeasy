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

import 'package:package_info_plus/package_info_plus.dart';

Future<String> getVersionNumber() async {
  // Add your function code here!
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String versionNumber = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;
  return '$versionNumber ($buildNumber)';
}
