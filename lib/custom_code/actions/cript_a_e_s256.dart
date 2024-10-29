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

import 'package:encrypt/encrypt.dart'
    as encrypt; // Mantém o alias para o pacote encrypt

Future<String> criptAES256(String? value) async {
  // Encrypt AES256 value
  final key =
      encrypt.Key.fromUtf8('-now#msswfppajverpsavancarsempre'); // 32 bytes
  final iv = encrypt.IV.fromUtf8('fppavancarsempre'); // 16 bytes

  final encrypter =
      encrypt.Encrypter(encrypt.AES(key, mode: encrypt.AESMode.cbc));

  final encryptedValue = encrypter.encrypt(value!, iv: iv);

  return encryptedValue.base64;
}
