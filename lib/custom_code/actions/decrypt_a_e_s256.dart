// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:encrypt/encrypt.dart' as encrypt;
import 'dart:convert'; // Para manipular a codificação UTF-8

Future<String?> decryptAES256(
  String? encryptedValue,
  String? secretKey,
  String? iv,
) async {
  // Add your function code here!

  if (encryptedValue == null || secretKey == null || iv == null) {
    return null; // Return null if any input is null
  }

  try {
    // Ensures the key is 32 bytes (256 bits)
    final key = encrypt.Key.fromUtf8(secretKey.padRight(32, ' '));

    // Ensures the IV is 16 bytes (128 bits)
    final ivBytes = encrypt.IV.fromUtf8(iv.padRight(16, ' '));

    // Configures the encrypter using AES with CBC mode and PKCS7 padding
    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
    );

    // Decodes the encrypted value from Base64 to bytes
    final encryptedBytes = encrypt.Encrypted.fromBase64(encryptedValue);

    // Decrypts the encrypted bytes
    final decrypted = encrypter.decrypt(encryptedBytes, iv: ivBytes);

    return decrypted;
  } catch (e) {
    // Prints an error message or handles the error appropriately
    print('Error during decryption: $e');
    return null;
  }
}
