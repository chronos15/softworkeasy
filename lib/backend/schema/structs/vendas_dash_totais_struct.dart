// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendasDashTotaisStruct extends BaseStruct {
  VendasDashTotaisStruct({
    int? idKey,
    String? data,
    int? diaSemana,
    double? total,
    int? numero,
    double? margem,
    double? diferenca,
    String? dataant,
  })  : _idKey = idKey,
        _data = data,
        _diaSemana = diaSemana,
        _total = total,
        _numero = numero,
        _margem = margem,
        _diferenca = diferenca,
        _dataant = dataant;

  // "ID_KEY" field.
  int? _idKey;
  int get idKey => _idKey ?? 0;
  set idKey(int? val) => _idKey = val;

  void incrementIdKey(int amount) => idKey = idKey + amount;

  bool hasIdKey() => _idKey != null;

  // "DATA" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  // "DIA_SEMANA" field.
  int? _diaSemana;
  int get diaSemana => _diaSemana ?? 0;
  set diaSemana(int? val) => _diaSemana = val;

  void incrementDiaSemana(int amount) => diaSemana = diaSemana + amount;

  bool hasDiaSemana() => _diaSemana != null;

  // "TOTAL" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "NUMERO" field.
  int? _numero;
  int get numero => _numero ?? 0;
  set numero(int? val) => _numero = val;

  void incrementNumero(int amount) => numero = numero + amount;

  bool hasNumero() => _numero != null;

  // "MARGEM" field.
  double? _margem;
  double get margem => _margem ?? 0.0;
  set margem(double? val) => _margem = val;

  void incrementMargem(double amount) => margem = margem + amount;

  bool hasMargem() => _margem != null;

  // "DIFERENCA" field.
  double? _diferenca;
  double get diferenca => _diferenca ?? 0.0;
  set diferenca(double? val) => _diferenca = val;

  void incrementDiferenca(double amount) => diferenca = diferenca + amount;

  bool hasDiferenca() => _diferenca != null;

  // "DATAANT" field.
  String? _dataant;
  String get dataant => _dataant ?? '';
  set dataant(String? val) => _dataant = val;

  bool hasDataant() => _dataant != null;

  static VendasDashTotaisStruct fromMap(Map<String, dynamic> data) =>
      VendasDashTotaisStruct(
        idKey: castToType<int>(data['ID_KEY']),
        data: data['DATA'] as String?,
        diaSemana: castToType<int>(data['DIA_SEMANA']),
        total: castToType<double>(data['TOTAL']),
        numero: castToType<int>(data['NUMERO']),
        margem: castToType<double>(data['MARGEM']),
        diferenca: castToType<double>(data['DIFERENCA']),
        dataant: data['DATAANT'] as String?,
      );

  static VendasDashTotaisStruct? maybeFromMap(dynamic data) => data is Map
      ? VendasDashTotaisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID_KEY': _idKey,
        'DATA': _data,
        'DIA_SEMANA': _diaSemana,
        'TOTAL': _total,
        'NUMERO': _numero,
        'MARGEM': _margem,
        'DIFERENCA': _diferenca,
        'DATAANT': _dataant,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID_KEY': serializeParam(
          _idKey,
          ParamType.int,
        ),
        'DATA': serializeParam(
          _data,
          ParamType.String,
        ),
        'DIA_SEMANA': serializeParam(
          _diaSemana,
          ParamType.int,
        ),
        'TOTAL': serializeParam(
          _total,
          ParamType.double,
        ),
        'NUMERO': serializeParam(
          _numero,
          ParamType.int,
        ),
        'MARGEM': serializeParam(
          _margem,
          ParamType.double,
        ),
        'DIFERENCA': serializeParam(
          _diferenca,
          ParamType.double,
        ),
        'DATAANT': serializeParam(
          _dataant,
          ParamType.String,
        ),
      }.withoutNulls;

  static VendasDashTotaisStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VendasDashTotaisStruct(
        idKey: deserializeParam(
          data['ID_KEY'],
          ParamType.int,
          false,
        ),
        data: deserializeParam(
          data['DATA'],
          ParamType.String,
          false,
        ),
        diaSemana: deserializeParam(
          data['DIA_SEMANA'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['TOTAL'],
          ParamType.double,
          false,
        ),
        numero: deserializeParam(
          data['NUMERO'],
          ParamType.int,
          false,
        ),
        margem: deserializeParam(
          data['MARGEM'],
          ParamType.double,
          false,
        ),
        diferenca: deserializeParam(
          data['DIFERENCA'],
          ParamType.double,
          false,
        ),
        dataant: deserializeParam(
          data['DATAANT'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VendasDashTotaisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VendasDashTotaisStruct &&
        idKey == other.idKey &&
        data == other.data &&
        diaSemana == other.diaSemana &&
        total == other.total &&
        numero == other.numero &&
        margem == other.margem &&
        diferenca == other.diferenca &&
        dataant == other.dataant;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [idKey, data, diaSemana, total, numero, margem, diferenca, dataant]);
}

VendasDashTotaisStruct createVendasDashTotaisStruct({
  int? idKey,
  String? data,
  int? diaSemana,
  double? total,
  int? numero,
  double? margem,
  double? diferenca,
  String? dataant,
}) =>
    VendasDashTotaisStruct(
      idKey: idKey,
      data: data,
      diaSemana: diaSemana,
      total: total,
      numero: numero,
      margem: margem,
      diferenca: diferenca,
      dataant: dataant,
    );
