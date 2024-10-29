// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaStruct extends BaseStruct {
  EmpresaStruct({
    int? idKey,
    String? razaoSocial,
    String? nomeFantasia,
    String? cnpj,
    String? endereco,
    String? numero,
    String? bairro,
    String? cidade,
    String? uf,
    String? cep,
    String? contatosofthouse,
  })  : _idKey = idKey,
        _razaoSocial = razaoSocial,
        _nomeFantasia = nomeFantasia,
        _cnpj = cnpj,
        _endereco = endereco,
        _numero = numero,
        _bairro = bairro,
        _cidade = cidade,
        _uf = uf,
        _cep = cep,
        _contatosofthouse = contatosofthouse;

  // "ID_KEY" field.
  int? _idKey;
  int get idKey => _idKey ?? 0;
  set idKey(int? val) => _idKey = val;

  void incrementIdKey(int amount) => idKey = idKey + amount;

  bool hasIdKey() => _idKey != null;

  // "RAZAO_SOCIAL" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  set razaoSocial(String? val) => _razaoSocial = val;

  bool hasRazaoSocial() => _razaoSocial != null;

  // "NOME_FANTASIA" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  set nomeFantasia(String? val) => _nomeFantasia = val;

  bool hasNomeFantasia() => _nomeFantasia != null;

  // "CNPJ" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "ENDERECO" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "NUMERO" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "BAIRRO" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "CIDADE" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "UF" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;

  bool hasUf() => _uf != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "CONTATOSOFTHOUSE" field.
  String? _contatosofthouse;
  String get contatosofthouse => _contatosofthouse ?? '';
  set contatosofthouse(String? val) => _contatosofthouse = val;

  bool hasContatosofthouse() => _contatosofthouse != null;

  static EmpresaStruct fromMap(Map<String, dynamic> data) => EmpresaStruct(
        idKey: castToType<int>(data['ID_KEY']),
        razaoSocial: data['RAZAO_SOCIAL'] as String?,
        nomeFantasia: data['NOME_FANTASIA'] as String?,
        cnpj: data['CNPJ'] as String?,
        endereco: data['ENDERECO'] as String?,
        numero: data['NUMERO'] as String?,
        bairro: data['BAIRRO'] as String?,
        cidade: data['CIDADE'] as String?,
        uf: data['UF'] as String?,
        cep: data['CEP'] as String?,
        contatosofthouse: data['CONTATOSOFTHOUSE'] as String?,
      );

  static EmpresaStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmpresaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID_KEY': _idKey,
        'RAZAO_SOCIAL': _razaoSocial,
        'NOME_FANTASIA': _nomeFantasia,
        'CNPJ': _cnpj,
        'ENDERECO': _endereco,
        'NUMERO': _numero,
        'BAIRRO': _bairro,
        'CIDADE': _cidade,
        'UF': _uf,
        'CEP': _cep,
        'CONTATOSOFTHOUSE': _contatosofthouse,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID_KEY': serializeParam(
          _idKey,
          ParamType.int,
        ),
        'RAZAO_SOCIAL': serializeParam(
          _razaoSocial,
          ParamType.String,
        ),
        'NOME_FANTASIA': serializeParam(
          _nomeFantasia,
          ParamType.String,
        ),
        'CNPJ': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'ENDERECO': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'NUMERO': serializeParam(
          _numero,
          ParamType.String,
        ),
        'BAIRRO': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'CIDADE': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'UF': serializeParam(
          _uf,
          ParamType.String,
        ),
        'CEP': serializeParam(
          _cep,
          ParamType.String,
        ),
        'CONTATOSOFTHOUSE': serializeParam(
          _contatosofthouse,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmpresaStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmpresaStruct(
        idKey: deserializeParam(
          data['ID_KEY'],
          ParamType.int,
          false,
        ),
        razaoSocial: deserializeParam(
          data['RAZAO_SOCIAL'],
          ParamType.String,
          false,
        ),
        nomeFantasia: deserializeParam(
          data['NOME_FANTASIA'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['CNPJ'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['ENDERECO'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['NUMERO'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['BAIRRO'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['CIDADE'],
          ParamType.String,
          false,
        ),
        uf: deserializeParam(
          data['UF'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['CEP'],
          ParamType.String,
          false,
        ),
        contatosofthouse: deserializeParam(
          data['CONTATOSOFTHOUSE'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmpresaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmpresaStruct &&
        idKey == other.idKey &&
        razaoSocial == other.razaoSocial &&
        nomeFantasia == other.nomeFantasia &&
        cnpj == other.cnpj &&
        endereco == other.endereco &&
        numero == other.numero &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        uf == other.uf &&
        cep == other.cep &&
        contatosofthouse == other.contatosofthouse;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idKey,
        razaoSocial,
        nomeFantasia,
        cnpj,
        endereco,
        numero,
        bairro,
        cidade,
        uf,
        cep,
        contatosofthouse
      ]);
}

EmpresaStruct createEmpresaStruct({
  int? idKey,
  String? razaoSocial,
  String? nomeFantasia,
  String? cnpj,
  String? endereco,
  String? numero,
  String? bairro,
  String? cidade,
  String? uf,
  String? cep,
  String? contatosofthouse,
}) =>
    EmpresaStruct(
      idKey: idKey,
      razaoSocial: razaoSocial,
      nomeFantasia: nomeFantasia,
      cnpj: cnpj,
      endereco: endereco,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      uf: uf,
      cep: cep,
      contatosofthouse: contatosofthouse,
    );
