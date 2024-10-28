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

class DataTimeChartWithAreaAndColumns extends StatefulWidget {
  const DataTimeChartWithAreaAndColumns({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListValueXArea,
    required this.vListValueYArea,
    required this.sDateFormat,
    required this.bVisibleMarker,
    required this.colorLine,
    required this.intervalAxisX,
    required this.colorLine2,
    required this.numberDate,
    required this.sListValueXColuna,
    required this.vListValueYColuna,
    required this.isArea,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<String> sListValueXArea;
  final List<double> vListValueYArea;
  final String sDateFormat;
  final bool bVisibleMarker;
  final Color colorLine;
  final double intervalAxisX;
  final Color colorLine2;
  final int numberDate;
  final List<String> sListValueXColuna;
  final List<double> vListValueYColuna;
  final bool isArea;

  @override
  State<DataTimeChartWithAreaAndColumns> createState() =>
      _DataTimeChartWithAreaAndColumnsState();
}

class _DataTimeChartWithAreaAndColumnsState
    extends State<DataTimeChartWithAreaAndColumns> {
  TrackballBehavior? _trackballBehavior;
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  void initState() {
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
      child: _buildChart(),
    );
  }

  @override
  SfCartesianChart _buildChart() {
    final hasAreaData =
        widget.sListValueXArea.isNotEmpty && widget.vListValueYArea.isNotEmpty;
    final hasColumnData = widget.sListValueXColuna.isNotEmpty &&
        widget.vListValueYColuna.isNotEmpty;

    if (!hasAreaData && !hasColumnData) {
      return SfCartesianChart(
        title: ChartTitle(text: ''),
      );
    }

    List<ChartSampleData> areaChartData = [];
    List<ChartSampleData> columnChartData = [];

    if (hasAreaData) {
      areaChartData = List<ChartSampleData>.generate(
        widget.sListValueXArea.length,
        (index) => ChartSampleData(
          x: widget.sListValueXArea[index],
          yValue: widget.vListValueYArea[index],
        ),
      );
    }

    if (hasColumnData) {
      columnChartData = List<ChartSampleData>.generate(
        widget.sListValueXColuna.length,
        (index) => ChartSampleData(
          x: widget.sListValueXColuna[index],
          yValue: widget.vListValueYColuna[index],
        ),
      );
    }

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
      ),
      // Eixo Y primário para a série de colunas
      primaryYAxis: NumericAxis(
          title: AxisTitle(text: 'Valores'),
          labelFormat: '{value}',
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0),
          numberFormat: realFormatter),
      // Eixo Y secundário para a série de área
      axes: <ChartAxis>[
        NumericAxis(
          title: AxisTitle(text: 'Quantidades'),
          name: 'secondaryYAxis', // Identificador do eixo secundário
          opposedPosition: true, // Exibe o eixo no lado direito
          labelFormat: '{value}', // Garante que os valores sejam inteiros
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0),
          numberFormat:
              NumberFormat('###'), // Formatação para garantir inteiros
        ),
      ],
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        toggleSeriesVisibility: true,
      ),
      series: <CartesianSeries<dynamic, dynamic>>[
        if (hasColumnData)
          ColumnSeries<ChartSampleData, String>(
            dataSource: columnChartData,
            name: 'Coluna',
            xValueMapper: (ChartSampleData data, _) => data.x!,
            yValueMapper: (ChartSampleData data, _) => data.yValue,
            color: widget.colorLine,
            borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
          ),
        if (hasAreaData)
          widget.isArea
              ? SplineAreaSeries<ChartSampleData, String>(
                  dataSource: areaChartData,
                  name: 'Área',
                  xValueMapper: (ChartSampleData data, _) => data.x!,
                  yValueMapper: (ChartSampleData data, _) => data.yValue,
                  yAxisName: 'secondaryYAxis', // Associa ao eixo Y secundário
                  splineType: SplineType.cardinal,
                  cardinalSplineTension: 0.5,
                  borderWidth: 1,
                  borderGradient: LinearGradient(colors: <Color>[
                    widget.colorLine2.withOpacity(1),
                    widget.colorLine2.withOpacity(1),
                  ], stops: <double>[
                    0.2,
                    0.9
                  ]),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      widget.colorLine2.withOpacity(0.7),
                      widget.colorLine2.withOpacity(0.1),
                    ],
                    stops: <double>[0.2, 1.0],
                  ),
                  dataLabelSettings: DataLabelSettings(
                    isVisible: widget.bVisibleMarker,
                    labelAlignment: ChartDataLabelAlignment.outer,
                    offset: Offset(0,
                        -5), // Ajusta a margem da label para ficar mais próxima da linha
                  ),
                  markerSettings: MarkerSettings(
                    isVisible: (widget.bVisibleMarker &&
                        areaChartData.any((data) => data.yValue! > 0)),
                    shape: DataMarkerType.circle,
                    borderColor: widget.colorLine2,
                  ),
                )
              : LineSeries<ChartSampleData, String>(
                  dataSource: areaChartData,
                  xValueMapper: (ChartSampleData data, _) => data.x!,
                  yValueMapper: (ChartSampleData data, _) => data.yValue,
                  yAxisName: 'secondaryYAxis', // Associa ao eixo Y secundário
                  name: 'Linha',
                  color: widget.colorLine2,
                  width: 2,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: widget.bVisibleMarker,
                    labelAlignment: ChartDataLabelAlignment.outer,
                    offset: Offset(0,
                        -5), // Ajusta a margem da label para ficar mais próxima da linha
                  ),
                  markerSettings:
                      MarkerSettings(isVisible: widget.bVisibleMarker),
                ),
      ],

      trackballBehavior: _trackballBehavior,
    );
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.yValue});
  final String? x;
  final double? yValue;
}
