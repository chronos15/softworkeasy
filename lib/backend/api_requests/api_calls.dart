import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

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
  "username": "${path}",
  "Password": "${cnpj}",
  "ChaveToken": "secret_my@msswfppa2010-nowjverps#avancarsempre"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'GetToken',
        apiUrl: 'http://${ip}:${porta}/${path}/auth/token',
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
        decodeUtf8: true,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    TimeoutAPIRecall(),
  ];

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
      apiUrl: 'http://${ip}:${porta}/${path}/services/Autentificacao',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
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
      apiUrl: 'http://${ip}:${porta}/${path}/Entities/EmpresaView',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
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

class GetEntitiesCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? className = '',
    String? fieldOperation = '',
    String? serviceName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "ClassName": "${className}",
  "FieldOperation": "${fieldOperation}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetEntities',
      apiUrl: 'http://${ip}:${porta}/${path}/Services/${serviceName}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VendaDashTotaisCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? filterDate = '',
    String? userAgent = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashTotais',
        apiUrl:
            'http://${ip}:${porta}/${path}/Entities/VendaDashTotais${filterDate}',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': '*',
          'User-Agent': '${userAgent}',
        },
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: true,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
    TimeoutAPIRecall(),
  ];

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

class VendaDashMesSemanaCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? filterDate = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashMesSemana',
        apiUrl:
            'http://${ip}:${porta}/${path}/Entities/VendaDashMesSemana${filterDate}&\$orderby=MES desc',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? valueList(dynamic response) => getJsonField(
        response,
        r'''$.value''',
        true,
      ) as List?;
  static List? mes(dynamic response) => getJsonField(
        response,
        r'''$.value[:].MES''',
        true,
      ) as List?;
  static List<int>? numero(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].NUMERO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? total(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].TOTAL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class VendaDashMesDiaCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? filterDate = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashMesDia',
        apiUrl:
            'http://${ip}:${porta}/${path}/Entities/VendaDashMesDia${filterDate}&\$orderby=MES desc',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? valueList(dynamic response) => getJsonField(
        response,
        r'''$.value''',
        true,
      ) as List?;
  static List? mes(dynamic response) => getJsonField(
        response,
        r'''$.value[:].MES''',
        true,
      ) as List?;
}

class VendaDashDiaHoraCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? filterDate = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashDiaHora',
        apiUrl:
            'http://${ip}:${porta}/${path}/Entities/VendaDashDiaHora${filterDate}',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? horaValueX(dynamic response) => getJsonField(
        response,
        r'''$.value[:].HORA_DIA''',
        true,
      ) as List?;
  static List<double>? totalValueY(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].TOTAL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? numVendas(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].NUMERO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? valueLista(dynamic response) => getJsonField(
        response,
        r'''$.value''',
        true,
      ) as List?;
}

class VendaDashAnoMesCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? filterDate = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashAnoMes',
        apiUrl:
            'http://${ip}:${porta}/${path}/Entities/VendaDashAnoMes${filterDate}&\$orderby=ANO desc',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? valueLista(dynamic response) => getJsonField(
        response,
        r'''$.value''',
        true,
      ) as List?;
  static int? ano(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.value[:].ANO''',
      ));
  static double? janeiro(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES01''',
      ));
  static double? fevereiro(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES02''',
      ));
  static double? marco(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES03''',
      ));
  static double? abril(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES04''',
      ));
  static double? maio(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES05''',
      ));
  static double? junho(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES06''',
      ));
  static double? julho(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES07''',
      ));
  static double? agosto(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES08''',
      ));
  static double? setembro(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES09''',
      ));
  static double? outubro(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES10''',
      ));
  static double? novembro(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES11''',
      ));
  static double? dezembro(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value[:].MES12''',
      ));
  static List<int>? numero(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].NUMERO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? total(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].TOTAL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class VendaTotalIndicadoresCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? dataInicio = '',
    String? dataFinal = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaTotalIndicadores',
        apiUrl:
            'http://${ip}:${porta}/${path}/Services/VendaTotalIndicadores?ADataInicio=${dataInicio}&ADataFinal=${dataFinal}',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? valueLista(dynamic response) => getJsonField(
        response,
        r'''$.value''',
        true,
      ) as List?;
  static List<int>? numPed(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].NumeroPed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? mixProduto(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].Mix_Produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? totalLucro(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].TotalLucro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? margemLucro(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].MargemLucro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? valorMedia(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].ValorMedia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? numClientes(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].NumeroClientes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? totalVenda(dynamic response) => (getJsonField(
        response,
        r'''$.value[:].TotalVenda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class VendaDashTotaisVendedorCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? dataInicial = '',
    String? dataFinal = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashTotaisVendedor',
        apiUrl:
            'http://${ip}:${porta}/${path}/Services/VendaTotalVendedores?ADataInicio=${dataInicial}&ADataFinal=${dataFinal}',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? valueLista(dynamic response) => getJsonField(
        response,
        r'''$.Values''',
        true,
      ) as List?;
  static dynamic totalAcumulado(dynamic response) => getJsonField(
        response,
        r'''$.TotalAcumulado''',
      );
  static dynamic numeroAcumulado(dynamic response) => getJsonField(
        response,
        r'''$.Numero''',
      );
}

class VendaDashTotaisPagamentoCall {
  static Future<ApiCallResponse> call({
    String? ip = '',
    int? porta,
    String? path = '',
    String? token = '',
    String? dataInicial = '',
    String? dataFinal = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'VendaDashTotaisPagamento',
        apiUrl:
            'http://${ip}:${porta}/${path}/Services/VendaTotalTiposPagamento?ADataInicio=${dataInicial}&ADataFinal=${dataFinal}',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer ${token}',
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
      ),
      interceptors,
    );
  }

  static final interceptors = [
    InjectUserAgent(),
  ];

  static List? valueLista(dynamic response) => getJsonField(
        response,
        r'''$.Values''',
        true,
      ) as List?;
  static List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$.Values[:].tipo_venda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? total(dynamic response) => (getJsonField(
        response,
        r'''$.Values[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static double? totalAcumulado(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.TotalAcumulado''',
      ));
  static int? numeroAcumulado(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Numero''',
      ));
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
