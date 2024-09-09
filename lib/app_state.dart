import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_ConfigGlobaisServer')) {
        try {
          final serializedData =
              prefs.getString('ff_ConfigGlobaisServer') ?? '{}';
          _ConfigGlobaisServer = ConfigGlobaisServerStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ConfigGlobais')) {
        try {
          final serializedData = prefs.getString('ff_ConfigGlobais') ?? '{}';
          _ConfigGlobais = ConfigGlobaisStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _Token = prefs.getString('ff_Token') ?? _Token;
    });
    _safeInit(() {
      _menuRapidoExpanded =
          prefs.getBool('ff_menuRapidoExpanded') ?? _menuRapidoExpanded;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Empresa')) {
        try {
          final serializedData = prefs.getString('ff_Empresa') ?? '{}';
          _Empresa =
              EmpresaStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _sDataTeste = prefs
              .getStringList('ff_sDataTeste')
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _sDataTeste;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  ConfigGlobaisServerStruct _ConfigGlobaisServer =
      ConfigGlobaisServerStruct.fromSerializableMap(jsonDecode(
          '{\"HOST_PRIMARIO\":\"192.168.1.231\",\"HOST_SECUNDARIO\":\"127.0.0.1\",\"PORTA\":\"3040\",\"PATH\":\"easyduilson\",\"CNPJ\":\"01.717.652/0001-04\"}'));
  ConfigGlobaisServerStruct get ConfigGlobaisServer => _ConfigGlobaisServer;
  set ConfigGlobaisServer(ConfigGlobaisServerStruct value) {
    _ConfigGlobaisServer = value;
    prefs.setString('ff_ConfigGlobaisServer', value.serialize());
  }

  void updateConfigGlobaisServerStruct(
      Function(ConfigGlobaisServerStruct) updateFn) {
    updateFn(_ConfigGlobaisServer);
    prefs.setString('ff_ConfigGlobaisServer', _ConfigGlobaisServer.serialize());
  }

  ConfigGlobaisStruct _ConfigGlobais = ConfigGlobaisStruct.fromSerializableMap(
      jsonDecode(
          '{\"LogPersistente\":\"true\",\"AutLocal\":\"false\",\"AtivaNotificacoes\":\"true\"}'));
  ConfigGlobaisStruct get ConfigGlobais => _ConfigGlobais;
  set ConfigGlobais(ConfigGlobaisStruct value) {
    _ConfigGlobais = value;
    prefs.setString('ff_ConfigGlobais', value.serialize());
  }

  void updateConfigGlobaisStruct(Function(ConfigGlobaisStruct) updateFn) {
    updateFn(_ConfigGlobais);
    prefs.setString('ff_ConfigGlobais', _ConfigGlobais.serialize());
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String value) {
    _Token = value;
    prefs.setString('ff_Token', value);
  }

  bool _SideMenuExpansable = false;
  bool get SideMenuExpansable => _SideMenuExpansable;
  set SideMenuExpansable(bool value) {
    _SideMenuExpansable = value;
  }

  bool _modalUserMenu = false;
  bool get modalUserMenu => _modalUserMenu;
  set modalUserMenu(bool value) {
    _modalUserMenu = value;
  }

  String _valueCurrency = '';
  String get valueCurrency => _valueCurrency;
  set valueCurrency(String value) {
    _valueCurrency = value;
  }

  bool _menuRapidoExpanded = false;
  bool get menuRapidoExpanded => _menuRapidoExpanded;
  set menuRapidoExpanded(bool value) {
    _menuRapidoExpanded = value;
    prefs.setBool('ff_menuRapidoExpanded', value);
  }

  bool _isOpenAppLoggin = false;
  bool get isOpenAppLoggin => _isOpenAppLoggin;
  set isOpenAppLoggin(bool value) {
    _isOpenAppLoggin = value;
  }

  EmpresaStruct _Empresa = EmpresaStruct();
  EmpresaStruct get Empresa => _Empresa;
  set Empresa(EmpresaStruct value) {
    _Empresa = value;
    prefs.setString('ff_Empresa', value.serialize());
  }

  void updateEmpresaStruct(Function(EmpresaStruct) updateFn) {
    updateFn(_Empresa);
    prefs.setString('ff_Empresa', _Empresa.serialize());
  }

  List<DateTime> _sDataTeste = [
    DateTime.fromMillisecondsSinceEpoch(1725191280000),
    DateTime.fromMillisecondsSinceEpoch(1725277680000),
    DateTime.fromMillisecondsSinceEpoch(1725364080000),
    DateTime.fromMillisecondsSinceEpoch(1725450480000),
    DateTime.fromMillisecondsSinceEpoch(1725536880000),
    DateTime.fromMillisecondsSinceEpoch(1725623280000),
    DateTime.fromMillisecondsSinceEpoch(1725709680000)
  ];
  List<DateTime> get sDataTeste => _sDataTeste;
  set sDataTeste(List<DateTime> value) {
    _sDataTeste = value;
    prefs.setStringList('ff_sDataTeste',
        value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void addToSDataTeste(DateTime value) {
    sDataTeste.add(value);
    prefs.setStringList('ff_sDataTeste',
        _sDataTeste.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeFromSDataTeste(DateTime value) {
    sDataTeste.remove(value);
    prefs.setStringList('ff_sDataTeste',
        _sDataTeste.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeAtIndexFromSDataTeste(int index) {
    sDataTeste.removeAt(index);
    prefs.setStringList('ff_sDataTeste',
        _sDataTeste.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void updateSDataTesteAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    sDataTeste[index] = updateFn(_sDataTeste[index]);
    prefs.setStringList('ff_sDataTeste',
        _sDataTeste.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void insertAtIndexInSDataTeste(int index, DateTime value) {
    sDataTeste.insert(index, value);
    prefs.setStringList('ff_sDataTeste',
        _sDataTeste.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
