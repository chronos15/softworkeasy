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
import 'package:intl/intl.dart';
import 'dart:math' as math;

class DataTimeChartWithAreaComparate extends StatefulWidget {
  const DataTimeChartWithAreaComparate({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListValueX,
    required this.vListValueY,
    required this.sDateFormat,
    required this.bVisibleMarker,
    required this.colorLine,
    required this.intervalAxisX,
    required this.colorLine2,
    required this.numberDate,
    required this.sListValueX2,
    required this.vListValueY2,
    required this.nameSeries1,
    required this.nameSeries2,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<DateTime> sListValueX;
  final List<double> vListValueY;
  final String sDateFormat;
  final bool bVisibleMarker;
  final Color colorLine;
  final double intervalAxisX;
  final Color colorLine2;
  final int numberDate;
  final List<DateTime> sListValueX2;
  final List<double> vListValueY2;
  final String nameSeries1;
  final String nameSeries2;

  @override
  State<DataTimeChartWithAreaComparate> createState() =>
      _DataTimeChartWithAreaComparateState();
}

class _DataTimeChartWithAreaComparateState
    extends State<DataTimeChartWithAreaComparate> {
  TrackballBehavior? _trackballBehavior;
  late DateFormat dateFormat;
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  void initState() {
    dateFormat = DateFormat(widget.sDateFormat, 'pt_BR');
    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
      tooltipSettings: InteractiveTooltip(
        enable: true,
        //format: 'Series: point.seriesName\nX: point.x\nY: point.y',
      ),
    );

    super.initState();
  }

  double calcularMediaY() {
    if (widget.vListValueY.isNotEmpty) {
      return widget.vListValueY.reduce((a, b) => a + b) /
          widget.vListValueY.length;
    }
    return 0.0;
  }

  int calcularIntervaloY() {
    double mediaY = calcularMediaY();

    // Arredonda para o múltiplo de 250 mais próximo
    int intervalo = ((mediaY / 3) / 250).round() * 250;

    // Garante que o intervalo nunca seja menor que 250
    return intervalo < 250 ? 250 : intervalo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildAreaChartWithGradient(),
    );
  }

  SfCartesianChart _buildAreaChartWithGradient() {
    final double maxValueY = widget.vListValueY.isNotEmpty
        ? widget.vListValueY.reduce((a, b) => a > b ? a : b) * 1.15
        : 0.0;

    // Calcula a média e define o intervalo do eixo Y
    final double mediaY = calcularMediaY();
    final int intervaloY = calcularIntervaloY();

    final int daysToShow = widget.numberDate;
    final DateTime today = DateTime.now();
    final DateTime startDate = today.subtract(Duration(days: daysToShow));

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: DateTimeCategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
        labelPlacement: LabelPlacement.onTicks,
        dateFormat: dateFormat,
        intervalType: DateTimeIntervalType.days,
        interval: widget.intervalAxisX,
        isInversed: false,
        labelIntersectAction: AxisLabelIntersectAction.multipleRows,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        title: AxisTitle(text: 'Reais'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
        initialVisibleMinimum: 0,
        anchorRangeToVisiblePoints: true,
        //interval: intervaloY.toDouble(),
        //maximum: maxValueY,
        minimum: 0.001,
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
      series: _getAreaSeriesWithGradient(),
      trackballBehavior: _trackballBehavior,
    );
  }

  List<SplineAreaSeries<ChartSampleData, DateTime>>
      _getAreaSeriesWithGradient() {
    // Garante que os tamanhos das listas sejam iguais
    final minSize1 =
        math.min(widget.sListValueX.length, widget.vListValueY.length);
    final minSize2 =
        math.min(widget.sListValueX2.length, widget.vListValueY2.length);

    final List<ChartSampleData> chartData1 = List<ChartSampleData>.generate(
      minSize1,
      (index) => ChartSampleData(
        x: widget.sListValueX[index],
        yValue: widget.vListValueY[index],
      ),
    );

    final List<ChartSampleData> chartData2 = List<ChartSampleData>.generate(
      minSize2,
      (index) => ChartSampleData(
        x: widget.sListValueX2[index],
        yValue: widget.vListValueY2[index],
      ),
    );

    return <SplineAreaSeries<ChartSampleData, DateTime>>[
      // Primeira série
      SplineAreaSeries<ChartSampleData, DateTime>(
        dataSource: chartData1,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        name: widget.nameSeries1,
        color: widget.colorLine,
        dataLabelMapper: (ChartSampleData data, _) =>
            realFormatter.format(data.yValue),
        splineType: widget.vListValueY.every((value) => value == 0)
            ? SplineType.natural
            : SplineType.cardinal,
        cardinalSplineTension:
            widget.vListValueY.every((value) => value == 0) ? 0.0 : 0.5,
        borderWidth: 1,
        borderGradient: LinearGradient(colors: <Color>[
          widget.colorLine.withOpacity(1),
          widget.colorLine.withOpacity(1),
        ], stops: <double>[
          0.2,
          0.9
        ]),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            widget.colorLine.withOpacity(0.3),
            widget.colorLine.withOpacity(0.1),
          ],
          stops: <double>[0.2, 1.0],
        ),
        dataLabelSettings: DataLabelSettings(isVisible: false),
        markerSettings: MarkerSettings(
          isVisible: (widget.bVisibleMarker &&
              chartData1.any((data) => data.yValue! > 0)),
          shape: DataMarkerType.circle,
          borderColor: widget.colorLine,
        ),
      ),
      // Segunda série (comparação)
      SplineAreaSeries<ChartSampleData, DateTime>(
        dataSource: chartData2,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        name: widget.nameSeries2,
        color: widget.colorLine2,
        dataLabelMapper: (ChartSampleData data, _) =>
            realFormatter.format(data.yValue),
        splineType: widget.vListValueY2.every((value) => value == 0)
            ? SplineType.natural
            : SplineType.cardinal,
        cardinalSplineTension:
            widget.vListValueY2.every((value) => value == 0) ? 0.0 : 0.5,
        borderWidth: 1,
        borderGradient: LinearGradient(colors: <Color>[
          widget.colorLine2.withOpacity(1),
          widget.colorLine2.withOpacity(0.7),
        ], stops: <double>[
          0.2,
          0.9
        ]),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            widget.colorLine2.withOpacity(0.3),
            widget.colorLine2.withOpacity(0.1),
          ],
          stops: <double>[0.2, 1.0],
        ),
        dataLabelSettings: DataLabelSettings(isVisible: false),
        markerSettings: MarkerSettings(
          isVisible: (widget.bVisibleMarker &&
              chartData2.any((data) => data.yValue! > 0)),
          shape: DataMarkerType.circle,
          borderColor: widget.colorLine2,
        ),
      ),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.yValue});
  final DateTime? x;
  final double? yValue;
}
