import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

DateTime? difDateWithInteger(
  int? integer,
  DateTime? valueDateTime,
) {
  // subtrair datas de acordo com um inteiro e minha entrada
  if (integer == null || valueDateTime == null) return DateTime.now();
  ;
  return valueDateTime.subtract(Duration(days: integer));
}

List<DateTime>? dateFormatToDateTimeList(List<String>? valueDateJson) {
  //  date time string 'dd-MM-yyyy' to datetime, se for null ou vazio retorna data de hoje
  if (valueDateJson == null || valueDateJson.isEmpty) {
    return null;
  }
  final dateFormat = DateFormat('yyyy-MM-dd');
  return valueDateJson.map((dateString) {
    if (dateString == null || dateString.isEmpty) {
      return DateTime.now();
    }
    return dateFormat.parse(dateString);
  }).toList();
}

double? sumListDoubleConverter(List<String>? cartItemsTotal) {
  if (cartItemsTotal == null || cartItemsTotal.isEmpty) {
    return 0.0; // Retorna 0,00 se a lista for nula ou vazia
  }

  // Converte as strings para double, ignorando valores inválidos
  double _total = cartItemsTotal.map((item) {
    try {
      return double.parse(item); // Tenta converter para double
    } catch (e) {
      return 0.0; // Se falhar, considera 0.0
    }
  }).fold(0.0, (double total, double subtotal) => total + subtotal);

  _total = double.parse(
      _total.toStringAsFixed(2)); // Arredonda para duas casas decimais
  return _total;
}

List<String>? listMonthInYearResume() {
  // listar os meses do ano
  return [
    'jan.',
    'fev.',
    'mar.',
    'abr.',
    'mai.',
    'jun.',
    'jul.',
    'ago.',
    'set.',
    'out.',
    'nov.',
    'dez.',
  ];
}

List<DateTime>? difDateWithIntegerList(
  int? integer,
  DateTime? valueDateTime,
) {
  // subtrair datas e retornar a lista de acordo com um inteiro e minha entrada
  if (integer == null || valueDateTime == null) return null;
  List<DateTime> dateList = [];
  for (int i = 0; i < integer; i++) {
    dateList.add(valueDateTime.subtract(Duration(days: i)));
  }
  return dateList;
}

List<double>? listDateSemanalDouble(
  DateTime? dateNow,
  List<DateTime>? dateValues,
  List<double>? doubleValues,
) {
  // retornar lista de doubles de acordo com minha lista, comparar da semana atual começando por segunda, caso não bata as datas, coloque zero para o reste
  // Retornar lista de doubles de acordo com a lista, comparar da semana atual começando por segunda-feira, caso não bata as datas, colocar zero
  if (dateNow == null || dateValues == null || doubleValues == null) {
    return null;
  }

  // Encontrar a data da segunda-feira da semana atual
  final startOfWeek = dateNow.subtract(Duration(days: dateNow.weekday - 1));
  final endOfWeek = startOfWeek.add(Duration(days: 6));

  // Inicializar a lista para armazenar os valores semanais (7 dias)
  final weeklyData = List<double>.filled(7, 0.0);

  for (int i = 0; i < dateValues.length; i++) {
    final date = dateValues[i];
    final value = doubleValues[i];

    // Verificar se a data está na semana atual
    if (date.isAfter(startOfWeek.subtract(const Duration(days: 1))) &&
        date.isBefore(endOfWeek.add(const Duration(days: 1)))) {
      final weekdayIndex = date.weekday - 1; // Segunda-feira é 0, Domingo é 6
      weeklyData[weekdayIndex] += value;
    }
  }

  return weeklyData;
}

DateTime? difDateWithMonth(
  int? integer,
  DateTime? valueDateTime,
) {
  if (integer == null || valueDateTime == null) return null;

  // Calcula o novo mês subtraindo os meses
  int newMonth = valueDateTime.month - integer!;

  // Ajusta o ano se necessário
  int yearAdjustment = (newMonth - 1) ~/ 12; // Ajuste de ano
  newMonth = ((newMonth - 1) % 12) + 1; // Ajuste de mês (de 1 a 12)

  // Calcula a nova data
  DateTime newDate = DateTime(
    valueDateTime.year + yearAdjustment, // Ajuste de ano
    newMonth, // Ajuste de mês
    valueDateTime.day, // Mantém o dia
  );

  // Verifica o último dia do novo mês
  int lastDayOfNewMonth = DateTime(newDate.year, newDate.month + 1, 0).day;

  // Ajusta o dia para o último dia do mês se o dia original for inválido
  if (newDate.day > lastDayOfNewMonth) {
    newDate = DateTime(newDate.year, newDate.month, lastDayOfNewMonth);
  }

  return newDate;
}

List<DateTime>? listDateSemanal(DateTime? dateNow) {
  // retornar lista de datas da semana atual começando por segunda
  if (dateNow == null) return null;

  final List<DateTime> dates = [];
  final int dayOfWeek = dateNow.weekday;
  final DateTime monday = dateNow.subtract(Duration(days: dayOfWeek - 1));

  for (int i = 0; i < 7; i++) {
    dates.add(monday.add(Duration(days: i)));
  }

  return dates;
}

List<DateTime>? difDateWithYear(
  int? integer,
  DateTime? valueDateTime,
) {
  if (integer == null || valueDateTime == null) {
    return null; // Retorna null se integer ou valueDateTime forem nulos
  }

  List<DateTime> yearsList = [];

  for (int i = 0; i < integer; i++) {
    yearsList.add(DateTime(valueDateTime.year - i)); // Adiciona os anos à lista
  }

  return yearsList;
}

int? difDateWithYearString(
  int? integer,
  String? valueDateTime,
) {
  if (integer == null || valueDateTime == null) {
    return null; // Retorna null se integer ou valueDateTime forem nulos
  }

  // Converte a string para inteiro
  int yearFromString = int.tryParse(valueDateTime) ?? 0;

  // Realiza a subtração
  int result = yearFromString - integer;

  return result; // Retorna a lista com o resultado
}

List<DateTime>? listDateMensal(DateTime? dateNow) {
  // retornar lista de datas do mes  atual começando pelo dia 01
  if (dateNow == null) return null;

  final daysInMonth = DateTime(dateNow.year, dateNow.month + 1, 0).day;
  final firstDayOfMonth = DateTime(dateNow.year, dateNow.month, 1);

  return List.generate(
      daysInMonth, (index) => firstDayOfMonth.add(Duration(days: index)));
}

List<double>? listDataMensalDouble(
  DateTime? dateNow,
  List<DateTime>? dateValues,
  List<double>? doubleValues,
) {
  // etornar lista de doubles de acordo com minha lista, comparar do mes  atual começando por dia 01, caso não bata as datas, coloque zero para o reste
  if (dateNow == null || dateValues == null || doubleValues == null) {
    return null;
  }

  final currentMonth = dateNow.month;
  final currentYear = dateNow.year;
  final daysInMonth = DateTime(currentYear, currentMonth + 1, 0).day;

  final monthlyData = List<double>.filled(daysInMonth, 0.0);

  for (int i = 0; i < dateValues.length; i++) {
    final date = dateValues[i];
    final value = doubleValues[i];

    if (date.month == currentMonth && date.year == currentYear) {
      final day = date.day;
      monthlyData[day - 1] += value;
    }
  }

  return monthlyData;
}

List<double>? listMonthInYearDoubleListQuantity(
  dynamic valueJson,
  int? iList,
) {
  double _toDouble(dynamic value) {
    if (value == null) {
      return 0.0; // Retorna 0.0 se o valor for nulo
    }
    return (value as num)
        .toDouble(); // Faz o cast para num e converte para double
  }

  // Verifica se valueJson e iList são válidos
  if (valueJson == null ||
      iList == null ||
      iList < 0 ||
      iList >= valueJson.length) {
    return []; // Retorna uma lista vazia se valueJson ou iList não são válidos
  }

  var meses = valueJson[iList]; // Acessa o objeto correspondente ao índice

  // Verifica se meses não é nulo e se contém as chaves esperadas
  if (meses == null) {
    return []; // Retorna uma lista vazia se meses for nulo
  }

  List<double> resultados = [
    _toDouble(meses['NUMMES01']),
    _toDouble(meses['NUMMES02']),
    _toDouble(meses['NUMMES03']),
    _toDouble(meses['NUMMES04']),
    _toDouble(meses['NUMMES05']),
    _toDouble(meses['NUMMES06']),
    _toDouble(meses['NUMMES07']),
    _toDouble(meses['NUMMES08']),
    _toDouble(meses['NUMMES09']),
    _toDouble(meses['NUMMES10']),
    _toDouble(meses['NUMMES11']),
    _toDouble(meses['NUMMES12']),
  ];

  return resultados;
}

String? realFormat(String? valor) {
  if (valor == null) {
    return null;
  }

  // Substituindo a vírgula pelo ponto para formatar corretamente
  String valorComPonto = valor.replaceAll(',', '.');

  // Convertendo a string para um valor numérico (double)
  double valorNumerico = double.tryParse(valorComPonto) ?? 0.0;

  final formatCurrency = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  return formatCurrency.format(valorNumerico);
}

List<double>? listDateByValues(
  DateTime? dateNow,
  List<DateTime>? listValuesDates,
  List<double>? listValues,
  int? listQuantityDays,
) {
  if (dateNow == null ||
      listValuesDates == null ||
      listValues == null ||
      listQuantityDays == null) {
    return null;
  }

  // Inicializar a lista de valores para o número de dias definidos
  final dataValues = List<double>.filled(listQuantityDays, 0.0);

  // Gerar as datas subtraindo `listQuantityDays` de `dateNow`
  for (int i = 0; i < listQuantityDays; i++) {
    final currentDate = dateNow.subtract(Duration(days: i));

    // Verificar se a data atual está em `listValuesDates`
    final index = listValuesDates.indexWhere((date) =>
        date.year == currentDate.year &&
        date.month == currentDate.month &&
        date.day == currentDate.day);

    if (index != -1) {
      // Se a data for encontrada, adicionar o valor correspondente de `listValues`
      dataValues[i] = listValues[index];
    }
  }

  return dataValues;
}

List<String>? listDateSemanaAgrupado(DateTime? dateNow) {
  if (dateNow == null) return null;

  final daysInMonth = DateTime(dateNow.year, dateNow.month + 1, 0).day;
  final firstDayOfMonth = DateTime(dateNow.year, dateNow.month, 1);

  // Encontra a primeira segunda-feira do mês
  DateTime firstMonday = firstDayOfMonth;
  while (firstMonday.weekday != DateTime.monday) {
    firstMonday = firstMonday.add(const Duration(days: 1));
  }

  // Lista para armazenar as semanas
  List<List<DateTime>> weeks = [];
  List<DateTime> currentWeek = [];

  // Itera pelas datas do mês começando pela primeira segunda-feira
  for (int i = 0; i < daysInMonth; i++) {
    DateTime currentDate = firstMonday.add(Duration(days: i));

    // Verifica se a data ainda está dentro do mês atual
    if (currentDate.month == dateNow.month) {
      currentWeek.add(currentDate);

      // Se a semana está completa (7 dias) ou chegou ao fim do mês
      if (currentWeek.length == 7 || currentDate.day == daysInMonth) {
        weeks.add(currentWeek);
        currentWeek = []; // Inicia uma nova semana
      }
    } else {
      break; // Para de adicionar quando passar para o próximo mês
    }
  }

  // Formata a lista de semanas como strings
  List<String> semanaStrings = [];
  for (int i = 0; i < weeks.length; i++) {
    DateTime start = weeks[i].first;
    DateTime end = weeks[i].last;
    String semanaStr = 'Semana ${i + 1}';
    semanaStrings.add(semanaStr);
  }

  return semanaStrings;
}

DateTime? addTimeDouble(
  double? valueAdd,
  DateTime? dateNow,
) {
  // adicionar minutos no tempo escolhido
  if (valueAdd == null || dateNow == null) {
    return null;
  }
  final int minutesToAdd = valueAdd.floor();
  final int secondsToAdd = ((valueAdd - minutesToAdd) * 60).round();
  return dateNow.add(Duration(minutes: minutesToAdd, seconds: secondsToAdd));
}

bool? verifyToken(DateTime? timeToken) {
  // se faltar menos de 10 minutos para o timeToken expirar em relaçao ao tempo atual, retornar false
  if (timeToken == null) {
    return false;
  }
  final now = DateTime.now();
  final timeDifference = timeToken.difference(now);
  return timeDifference > Duration(minutes: 10);
}

String firstUpper(
  String? value,
  String defaultTest,
) {
  if (value == null) return defaultTest;
  if (value == 'null') return defaultTest;
  List<String> words = value.split(' ');
  for (int i = 0; i < words.length; i++) {
    if (words[i].isEmpty) {
      continue; // Skip empty words
    }
    String firstLetter = words[i].substring(0, 1).toUpperCase();
    String restOfWord = words[i].substring(1).toLowerCase();
    words[i] = '$firstLetter$restOfWord';
  }
  return words.join(' ');
}

double? listJsonToDouble(
  dynamic valueJson,
  int? iList,
  String? campoProcura,
) {
  double _toDouble(dynamic value) {
    if (value == null) {
      return 0.0; // Retorna 0.0 se o valor for nulo
    }
    return (value as num)
        .toDouble(); // Faz o cast para num e converte para double
  }

  // Verifica se valueJson, iList e campoProcura são válidos
  if (valueJson == null ||
      iList == null ||
      iList < 0 ||
      iList >= valueJson.length ||
      campoProcura == null ||
      campoProcura.isEmpty) {
    return 0; // Retorna null se algum dos parâmetros é inválido
  }

  var elemento = valueJson[iList]; // Acessa o objeto correspondente ao índice

  // Verifica se o elemento não é nulo e é um Map
  if (elemento == null || elemento is! Map) {
    return 0; // Retorna null se o elemento for nulo ou não for um Map
  }

  // Busca o campo dentro do Map
  if (elemento.containsKey(campoProcura)) {
    return _toDouble(
        elemento[campoProcura]); // Converte e retorna o valor encontrado
  } else if (elemento.isNotEmpty) {
    // Se o campo não for encontrado, retorna o primeiro valor disponível
    var firstKey = elemento.keys.first; // Pega a primeira chave
    return _toDouble(
        elemento[firstKey]); // Converte e retorna o valor do primeiro campo
  }

  return 0; // Retorna null se o campo não for encontrado
}

List<double>? listMonthInYearDoubleList(
  dynamic valueJson,
  int? iList,
) {
  double _toDouble(dynamic value) {
    if (value == null) {
      return 0.0; // Retorna 0.0 se o valor for nulo
    }
    return (value as num)
        .toDouble(); // Faz o cast para num e converte para double
  }

  // Verifica se valueJson e iList são válidos
  if (valueJson == null ||
      iList == null ||
      iList < 0 ||
      iList >= valueJson.length) {
    return []; // Retorna uma lista vazia se valueJson ou iList não são válidos
  }

  var meses = valueJson[iList]; // Acessa o objeto correspondente ao índice

  // Verifica se meses não é nulo e se contém as chaves esperadas
  if (meses == null) {
    return []; // Retorna uma lista vazia se meses for nulo
  }

  List<double> resultados = [
    _toDouble(meses['MES01']),
    _toDouble(meses['MES02']),
    _toDouble(meses['MES03']),
    _toDouble(meses['MES04']),
    _toDouble(meses['MES05']),
    _toDouble(meses['MES06']),
    _toDouble(meses['MES07']),
    _toDouble(meses['MES08']),
    _toDouble(meses['MES09']),
    _toDouble(meses['MES10']),
    _toDouble(meses['MES11']),
    _toDouble(meses['MES12']),
  ];

  return resultados;
}

List<double>? listFromJsonDouble(
  dynamic valueJson,
  int? iList,
  String? campoProcura,
) {
  double _toDouble(dynamic value) {
    if (value == null) {
      return 0.0; // Retorna 0.0 se o valor for nulo
    }
    return (value as num)
        .toDouble(); // Faz o cast para num e converte para double
  }

  // Verifica se valueJson, iList e campoProcura são válidos
  if (valueJson == null ||
      iList == null ||
      iList < 0 ||
      iList >= valueJson.length ||
      campoProcura == null) {
    return []; // Retorna uma lista vazia se valueJson, iList ou campoProcura não são válidos
  }

  var meses = valueJson[iList]; // Acessa o objeto correspondente ao índice

  // Verifica se meses não é nulo
  if (meses == null) {
    return []; // Retorna uma lista vazia se meses for nulo
  }

  // Cria uma lista dinâmica para armazenar os resultados
  List<double> resultados = [];

  // Itera pelas chaves do objeto e busca os campos que começam com o campoProcura
  meses.forEach((key, value) {
    if (key.startsWith(campoProcura!)) {
      resultados.add(_toDouble(value));
    }
  });

  return resultados;
}

List<double>? addDadosZerados(List<int>? iNumberZero) {
  // adicionar lista de 0 de acordo com meu numero
  if (iNumberZero == null) {
    return null;
  }
  final List<double> result = [];
  for (int i = 0; i < iNumberZero.length; i++) {
    result.add(0.0);
  }
  return result;
}

double? sumListDouble(List<double>? cartItemsTotal) {
  final formatter = new NumberFormat("#,##0.00", "pt_BR");
  double _total = cartItemsTotal!
      .fold(0.0, (double total, double subtotal) => subtotal + total);
  _total = double.parse(_total.toStringAsFixed(2));
  return _total;
}

String? sumListDoubleToString(List<String>? cartItemsTotal) {
  final formatter = NumberFormat("#,##0.00", "pt_BR");

  if (cartItemsTotal == null || cartItemsTotal.isEmpty) {
    return "R\$ 0,00"; // Retorna 0,00 se a lista for nula ou vazia
  }

  // Converte as strings para double, ignorando valores inválidos
  double _total = cartItemsTotal.map((item) {
    try {
      return double.parse(item); // Tenta converter para double
    } catch (e) {
      return 0.0; // Se falhar, considera 0.0
    }
  }).fold(0.0, (double total, double subtotal) => total + subtotal);

  _total = double.parse(
      _total.toStringAsFixed(2)); // Arredonda para duas casas decimais
  String resultado = formatter.format(_total); // Formata o total
  return "R\$ " + resultado;
}

List<String>? listMonthInYear() {
  // listar os meses do ano
  return [
    'janeiro',
    'fevereiro',
    'março',
    'abril',
    'maio',
    'junho',
    'julho',
    'agosto',
    'setembro',
    'outubro',
    'novembro',
    'dezembro',
  ];
}

DateTime? mMMMToDateTime(
  String? mesValue,
  String? anoValue,
) {
  //  nome do mês exemplo: 'setembro' e ano '2024' para datetime
  if (mesValue == null || anoValue == null) {
    return null;
  }

  final monthNames = {
    'janeiro': 1,
    'fevereiro': 2,
    'março': 3,
    'abril': 4,
    'maio': 5,
    'junho': 6,
    'julho': 7,
    'agosto': 8,
    'setembro': 9,
    'outubro': 10,
    'novembro': 11,
    'dezembro': 12,
  };

  final month = monthNames[mesValue.toLowerCase()];
  if (month == null) {
    return null;
  }

  final year = int.tryParse(anoValue);
  if (year == null) {
    return null;
  }

  return DateTime(year, month);
}

List<String>? geraDias(int? iQuantDias) {
  // gera numeros de 1  a iquantDias
  if (iQuantDias == null || iQuantDias <= 0) {
    return null;
  }

  List<String> dias = [];
  for (int i = 1; i <= iQuantDias; i++) {
    dias.add(i.toString());
  }

  return dias;
}

int? sumListInt(List<int>? cartItemsTotal) {
  if (cartItemsTotal == null || cartItemsTotal.isEmpty) {
    return 0; // Retorna 0 se a lista for nula ou vazia
  }

  int _total =
      cartItemsTotal.fold(0, (int total, int subtotal) => subtotal + total);
  return _total;
}

List<double>? valuesJsonToDoubleList(List<String>? values) {
  // Retorna uma lista vazia se `values` for null
  if (values == null) {
    return [];
  }

  // Cria uma lista para armazenar os valores convertidos
  List<double> doubleValues = [];

  // Itera sobre os valores e converte para double
  for (var value in values) {
    double parsedValue;

    if (value is String) {
      // Tenta converter a String para double
      parsedValue = double.tryParse(value) ?? 0.0;
    } else if (value is int || value is num) {
      // Converte int ou num diretamente para double
      parsedValue = (value as num).toDouble();
    } else {
      // Se o tipo não for suportado, adiciona 0.0
      parsedValue = 0.0;
    }

    // Adiciona o valor convertido à lista
    doubleValues.add(parsedValue);
  }

  return doubleValues;
}

int? doubleToInt(double? value) {
  // double to int
  if (value != null) {
    return value.toInt();
  } else {
    return null;
  }
}

List<double>? intToDoubleList(List<int>? intValues) {
  // int to double list
  if (intValues == null) {
    return null;
  }

  List<double> doubleValues =
      intValues.map((intVal) => intVal.toDouble()).toList();
  return doubleValues;
}

Color? addColorFromInt(
  int? valueMinus,
  Color? colorInitial,
) {
  if (valueMinus == null || colorInitial == null) {
    return colorInitial;
  }

  // Adiciona valor aos componentes RGB em um ciclo rotativo
  int red = (colorInitial.red + valueMinus) % 256;
  int green = (colorInitial.green + valueMinus * 2) % 256;
  int blue = (colorInitial.blue + valueMinus * 3) % 256;

  // Retorna a nova cor mantendo o alpha inalterado
  return Color.fromARGB(colorInitial.alpha, red, green, blue);
}

int? valuesJsonToInt(dynamic value) {
  if (value == null) {
    return null;
  }

  int parsedValue;

  if (value is String) {
    // Tenta converter a String para int
    parsedValue = int.tryParse(value) ?? 0;
  } else if (value is int) {
    // Se já for int, retorna diretamente
    parsedValue = value;
  } else if (value is num) {
    // Converte num diretamente para int
    parsedValue = value.toInt();
  } else {
    // Se o tipo não for suportado, retorna 0
    parsedValue = 0;
  }

  return parsedValue;
}

double? valuesJsonToDouble(dynamic value) {
  if (value == null) {
    print("Valor é null");
    return 0;
  }

  double parsedValue;

  if (value is String) {
    print("Valor é String: $value");
    // Tenta converter a String para double
    parsedValue = double.tryParse(value) ?? 0.0;
  } else if (value is int) {
    print("Valor é int: $value");
    // Converte int para double
    parsedValue = value.toDouble();
  } else if (value is num) {
    print("Valor é num: $value");
    // Converte num diretamente para double
    parsedValue = value.toDouble();
  } else {
    print("Tipo não suportado: $value");
    // Se o tipo não for suportado, retorna 0.0
    parsedValue = 0.0;
  }

  print("Valor convertido para double: $parsedValue");
  return parsedValue;
}

List<dynamic>? emptyJsonList() {
  // return empty json list
  return <dynamic>[];
}
