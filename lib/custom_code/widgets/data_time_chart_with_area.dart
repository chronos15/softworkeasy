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

class DataTimeChartWithArea extends StatefulWidget {
  const DataTimeChartWithArea({
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

  @override
  State<DataTimeChartWithArea> createState() => _DataTimeChartWithAreaState();
}

class _DataTimeChartWithAreaState extends State<DataTimeChartWithArea> {
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
      tooltipSettings: const InteractiveTooltip(format: 'point.x : point.y'),
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
        //minimum: widget.sListValueX.last,
        //widget.sListValueX.isNotEmpty
        //    ? widget.sListValueX.first
        //    : startDate,
        //maximum: widget.sListValueX.first,
        //    widget.sListValueX.isNotEmpty ? widget.sListValueX.last : today,
        //arrangeByIndex: true,
        dateFormat: dateFormat,
        intervalType: DateTimeIntervalType.days,
        interval: widget.intervalAxisX,
        isInversed: true,
        //edgeLabelPlacement: EdgeLabelPlacement.none,
        labelIntersectAction: AxisLabelIntersectAction.multipleRows,
        //rangePadding: ChartRangePadding.additionalStart,
        //rangePadding: ChartRangePadding.none,
        //majorGridLines: MajorGridLines(width: 0),
        //dateFormat: dateFormat,
        //minimum: widget.sListValueX.first, // Define a primeira data
        //maximum: widget.sListValueX.last, // Define a última data
        //edgeLabelPlacement: EdgeLabelPlacement.shift,
        //rangePadding: ChartRangePadding.none
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        title: AxisTitle(text: 'Reais'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
        initialVisibleMinimum: 0,
        anchorRangeToVisiblePoints: true,
        interval: intervaloY.toDouble(),
        maximum: maxValueY,
        minimum: 0.001,
      ),
      series: _getAreaSeriesWithGradient(),
      trackballBehavior: _trackballBehavior,
    );
  }

  List<SplineAreaSeries<ChartSampleData, DateTime>>
      _getAreaSeriesWithGradient() {
    if (widget.sListValueX.isEmpty || widget.vListValueY.isEmpty) {
      return [];
    }

    if (widget.sListValueX.length != widget.vListValueY.length) {
      throw Exception("As listas de valores X e Y devem ter o mesmo tamanho.");
    }

    final List<ChartSampleData> chartData = List<ChartSampleData>.generate(
      widget.sListValueX.length,
      (index) => ChartSampleData(
        x: widget.sListValueX[index],
        yValue: widget.vListValueY[index],
      ),
    );

    return <SplineAreaSeries<ChartSampleData, DateTime>>[
      SplineAreaSeries<ChartSampleData, DateTime>(
        dataSource: chartData,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        dataLabelMapper: (ChartSampleData data, _) =>
            realFormatter.format(data.yValue),
        splineType: widget.vListValueY.every((value) => value == 0)
            ? SplineType.natural // Usa natural quando todos os valores são zero
            : SplineType
                .cardinal, // Usa cardinal se houver variação nos valores
        cardinalSplineTension: widget.vListValueY.every((value) => value == 0)
            ? 0.0 // Tensão zero quando os valores são zero para evitar distorções
            : 0.5, // Ajusta a tensão normalmente se houver valores diferentes de zero
        borderWidth: 3,
        borderGradient: LinearGradient(colors: <Color>[
          widget.colorLine.withOpacity(1),
          widget.colorLine2.withOpacity(1),
        ], stops: <double>[
          0.2,
          0.9
        ]),
        gradient: LinearGradient(
          begin: Alignment.topCenter, // Gradiente de cima
          end: Alignment.bottomCenter, // para baixo
          colors: <Color>[
            widget.colorLine.withOpacity(0.3), // Cor mais escura no topo
            widget.colorLine
                .withOpacity(0.1), // Cor mais clara na parte inferior
          ],
          stops: <double>[0.2, 1.0],
        ),
        dataLabelSettings: DataLabelSettings(isVisible: false),
        markerSettings: MarkerSettings(
          isVisible: (widget.bVisibleMarker &&
              chartData.any((data) => data.yValue! > 0)),
          shape: DataMarkerType.circle,
          //color: widget.colorLine,
          borderColor: widget.colorLine,
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
