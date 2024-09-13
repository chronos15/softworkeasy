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

Future warningNotification(
  BuildContext context,
  String title, // title of the notification
  String description, // description text in the notification
  int duration, // duration in seconds
  Future<dynamic> Function()? onClosePressed, // action done on 'close' pressed
  Future<dynamic> Function()?
      onAnimationEnd, // action done on when duration elapses
  Color colorIndicator,
  int iTypeNotification, // 1- sucesso, 2- Alerta, 3- Error
) async {
// see here that ElegantNotification without any 'dot something' in front

  IconData getNotificationIcon(int iTypeNotification) {
    switch (iTypeNotification) {
      case 1:
        return Icons.check; // Sucesso
      case 2:
        return Icons.warning; // Alerta
      case 3:
        return Icons.cancel; // Substitua pelo ícone desejado para o caso 3
      default:
        return Icons.access_alarm; // Erros
    }
  }

  ElegantNotification(
    title: Text(title),
    description: Text(description),
    animationDuration: Duration(seconds: duration),
    icon: Icon(
      getNotificationIcon(iTypeNotification),
      color: colorIndicator,
    ),
// here you specify the colour of the progress bar, I am using Orange
    progressIndicatorColor: colorIndicator,
// these two lines below allow actions to be triggered on close pressed or on end
    onCloseButtonPressed: onClosePressed,
    onProgressFinished: onAnimationEnd,
  ).show(context);
}
