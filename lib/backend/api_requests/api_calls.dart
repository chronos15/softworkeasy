import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetTokenCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? cnpj = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$path",
  "Password": "$cnpj",
  "ChaveToken": "secret_my@msswfppa2010-nowjverps#avancarsempre"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetToken',
      apiUrl: 'http://$ip:$porta/$path/auth/token',
      callType: ApiCallType.POST,
      headers: {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value''',
      ));
}

class AutentificacaoCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? usuario = '',
    String? senha = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Autentificacao',
      apiUrl: 'http://$ip:$porta/$path/services/Autentificacao',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      params: {
        'Usuario': usuario,
        'Senha': senha,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static UsuarioStruct? usuario(dynamic response) =>
      UsuarioStruct.maybeFromMap(getJsonField(
        response,
        r'''$.Usuario''',
      ));
  static bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class EmpresaViewCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'EmpresaView',
      apiUrl: 'http://$ip:$porta/$path/Entities/EmpresaView',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static EmpresaStruct? empresa(dynamic response) =>
      EmpresaStruct.maybeFromMap(getJsonField(
        response,
        r'''$..value[:]''',
      ));
  static String? razaosocial(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.value[:].RAZAO_SOCIAL''',
      ));
  static String? nomefant(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].NOME_FANTASIA''',
      ));
  static String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].CNPJ''',
      ));
  static String? endereco(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].ENDERECO''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].NUMERO''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].BAIRRO''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].CIDADE''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].UF''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value[:].CEP''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.value[:].ID_KEY''',
      ));
}

class VendaDashTotaisCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? filterDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VendaDashTotais',
      apiUrl:
          'http://$ip:$porta/$path/Entities/VendaDashTotais$filterDate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? valueList(dynamic response) => getJsonField(
        response,
        r'''$.value''',
        true,
      ) as List?;
  static List<String>? valueX(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].DATA''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? valueY(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].TOTAL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? pedido(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].NUMERO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? custo(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].CUSTO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? lucro(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].LUCRO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? margemLucro(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].MARGEMLUCRO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? variacaoMargem(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].VARIACAOMARGEM''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? variacaoValor(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].VARIACAOVALOR''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? dataAnt(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].DATA_ANTERIOR''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? valorMedia(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].VALORMEDIA''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
