// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfigGlobaisStruct extends BaseStruct {
  ConfigGlobaisStruct({
    String? usuario,
    String? senha,
    bool? lembrar,
    bool? logPersistente,
    bool? autLocal,
    bool? ativaNotificacoes,
  })  : _usuario = usuario,
        _senha = senha,
        _lembrar = lembrar,
        _logPersistente = logPersistente,
        _autLocal = autLocal,
        _ativaNotificacoes = ativaNotificacoes;

  // "Usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  set usuario(String? val) => _usuario = val;

  bool hasUsuario() => _usuario != null;

  // "Senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  set senha(String? val) => _senha = val;

  bool hasSenha() => _senha != null;

  // "Lembrar" field.
  bool? _lembrar;
  bool get lembrar => _lembrar ?? false;
  set lembrar(bool? val) => _lembrar = val;

  bool hasLembrar() => _lembrar != null;

  // "LogPersistente" field.
  bool? _logPersistente;
  bool get logPersistente => _logPersistente ?? false;
  set logPersistente(bool? val) => _logPersistente = val;

  bool hasLogPersistente() => _logPersistente != null;

  // "AutLocal" field.
  bool? _autLocal;
  bool get autLocal => _autLocal ?? false;
  set autLocal(bool? val) => _autLocal = val;

  bool hasAutLocal() => _autLocal != null;

  // "AtivaNotificacoes" field.
  bool? _ativaNotificacoes;
  bool get ativaNotificacoes => _ativaNotificacoes ?? false;
  set ativaNotificacoes(bool? val) => _ativaNotificacoes = val;

  bool hasAtivaNotificacoes() => _ativaNotificacoes != null;

  static ConfigGlobaisStruct fromMap(Map<String, dynamic> data) =>
      ConfigGlobaisStruct(
        usuario: data['Usuario'] as String?,
        senha: data['Senha'] as String?,
        lembrar: data['Lembrar'] as bool?,
        logPersistente: data['LogPersistente'] as bool?,
        autLocal: data['AutLocal'] as bool?,
        ativaNotificacoes: data['AtivaNotificacoes'] as bool?,
      );

  static ConfigGlobaisStruct? maybeFromMap(dynamic data) => data is Map
      ? ConfigGlobaisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Usuario': _usuario,
        'Senha': _senha,
        'Lembrar': _lembrar,
        'LogPersistente': _logPersistente,
        'AutLocal': _autLocal,
        'AtivaNotificacoes': _ativaNotificacoes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Usuario': serializeParam(
          _usuario,
          ParamType.String,
        ),
        'Senha': serializeParam(
          _senha,
          ParamType.String,
        ),
        'Lembrar': serializeParam(
          _lembrar,
          ParamType.bool,
        ),
        'LogPersistente': serializeParam(
          _logPersistente,
          ParamType.bool,
        ),
        'AutLocal': serializeParam(
          _autLocal,
          ParamType.bool,
        ),
        'AtivaNotificacoes': serializeParam(
          _ativaNotificacoes,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ConfigGlobaisStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConfigGlobaisStruct(
        usuario: deserializeParam(
          data['Usuario'],
          ParamType.String,
          false,
        ),
        senha: deserializeParam(
          data['Senha'],
          ParamType.String,
          false,
        ),
        lembrar: deserializeParam(
          data['Lembrar'],
          ParamType.bool,
          false,
        ),
        logPersistente: deserializeParam(
          data['LogPersistente'],
          ParamType.bool,
          false,
        ),
        autLocal: deserializeParam(
          data['AutLocal'],
          ParamType.bool,
          false,
        ),
        ativaNotificacoes: deserializeParam(
          data['AtivaNotificacoes'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ConfigGlobaisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConfigGlobaisStruct &&
        usuario == other.usuario &&
        senha == other.senha &&
        lembrar == other.lembrar &&
        logPersistente == other.logPersistente &&
        autLocal == other.autLocal &&
        ativaNotificacoes == other.ativaNotificacoes;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [usuario, senha, lembrar, logPersistente, autLocal, ativaNotificacoes]);
}

ConfigGlobaisStruct createConfigGlobaisStruct({
  String? usuario,
  String? senha,
  bool? lembrar,
  bool? logPersistente,
  bool? autLocal,
  bool? ativaNotificacoes,
}) =>
    ConfigGlobaisStruct(
      usuario: usuario,
      senha: senha,
      lembrar: lembrar,
      logPersistente: logPersistente,
      autLocal: autLocal,
      ativaNotificacoes: ativaNotificacoes,
    );
