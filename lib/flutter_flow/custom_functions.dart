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
  if (integer == null || valueDateTime == null) return null;
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
