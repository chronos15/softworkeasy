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

import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/resources/stacked_options.dart';

Future elegantNotificationSucess(
  BuildContext context,
  String title,
  String description,
  Color colorText,
  Color colorBackground,
  double vWidth,
) async {
  // Add your function code here!
  ElegantNotification.success(
    width: vWidth,
    background: colorBackground,
    isDismissable: true,
    position: Alignment.bottomCenter,
    animation: AnimationType.fromBottom,
    title: Text(title,
        style: TextStyle(
          color: colorText,
        )),
    description: Text(description,
        style: TextStyle(
          color: colorText,
        )),
    onDismiss: () {},
    onNotificationPressed: () {},
    shadow: BoxShadow(
      color: Colors.green.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 5,
      offset: const Offset(0, 4),
    ),
  ).show(context);
}
