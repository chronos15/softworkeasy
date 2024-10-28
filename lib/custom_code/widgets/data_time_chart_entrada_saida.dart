// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart'; // Importação necessária

class DataTimeChartEntradaSaida extends StatefulWidget {
  const DataTimeChartEntradaSaida({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListValueX,
    required this.vListValueY,
    required this.sDateFormat,
    required this.sListValueX2,
    required this.vListValueY2,
    required this.colorColumn1,
    required this.colorColumn2,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<DateTime>
      sListValueX; // Lista de datas para o primeiro conjunto de dados
  final List<double>
      vListValueY; // Lista de valores para o primeiro conjunto de dados
  final String sDateFormat;
  final List<DateTime>
      sListValueX2; // Lista de datas para o segundo conjunto de dados
  final List<double>
      vListValueY2; // Lista de valores para o segundo conjunto de dados
  final Color colorColumn1;
  final Color colorColumn2;
  @override
  State<DataTimeChartEntradaSaida> createState() =>
      _DataTimeChartEntradaSaidaState();
}

class _DataTimeChartEntradaSaidaState extends State<DataTimeChartEntradaSaida> {
  TrackballBehavior? _trackballBehavior;
  late DateFormat dateFormat;
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  void initState() {
    dateFormat = DateFormat(widget.sDateFormat);

    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      tooltipSettings: const InteractiveTooltip(format: 'point.x : point.y'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildColumnChart(),
    );
  }

  SfCartesianChart _buildColumnChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: DateTimeAxis(
        majorGridLines: MajorGridLines(width: 0),
        dateFormat: dateFormat,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        title: AxisTitle(text: 'Reais'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
      ),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        toggleSeriesVisibility:
            true, // Habilita o comportamento interativo de esconder/mostrar as séries
        textStyle: TextStyle(
          fontSize: 14.0, // Define o tamanho da fonte da legenda
          fontWeight: FontWeight.normal,
        ),
        itemPadding: 20,
        iconHeight: 20.0, // Define a altura do ícone da legenda
        iconWidth: 20.0, // Define a largura do ícone da legenda
      ),
      series: _getColumnSeries(),
      trackballBehavior: _trackballBehavior,
    );
  }

  List<ColumnSeries<ChartSampleData, DateTime>> _getColumnSeries() {
    if (widget.sListValueX.isEmpty ||
        widget.vListValueY.isEmpty ||
        widget.sListValueX2.isEmpty ||
        widget.vListValueY2.isEmpty) {
      return [];
    }

    if (widget.sListValueX.length != widget.vListValueY.length ||
        widget.sListValueX2.length != widget.vListValueY2.length) {
      throw Exception(
          "As listas de valores X e Y para cada conjunto devem ter o mesmo tamanho.");
    }

    // Cria a lista de dados para o gráfico
    final List<ChartSampleData> chartData1 = List<ChartSampleData>.generate(
      widget.sListValueX.length,
      (index) => ChartSampleData(
        x: widget.sListValueX[index],
        yValue: widget.vListValueY[index],
      ),
    );

    final List<ChartSampleData> chartData2 = List<ChartSampleData>.generate(
      widget.sListValueX2.length,
      (index) => ChartSampleData(
        x: widget.sListValueX2[index],
        yValue: widget.vListValueY2[index],
      ),
    );

    return <ColumnSeries<ChartSampleData, DateTime>>[
      ColumnSeries<ChartSampleData, DateTime>(
        dataSource: chartData1,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        name: 'Entrada',
        color: widget.colorColumn1,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7), topRight: Radius.circular(7)),
      ),
      ColumnSeries<ChartSampleData, DateTime>(
        dataSource: chartData2,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        name: 'Saída',
        color: widget.colorColumn2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7), topRight: Radius.circular(7)),
      ),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.yValue});
  final DateTime? x;
  final double? yValue;
}
