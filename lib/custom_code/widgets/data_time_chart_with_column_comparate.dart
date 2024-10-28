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

class DataTimeChartWithColumnComparate extends StatefulWidget {
  const DataTimeChartWithColumnComparate({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListValueX, // List<String> for X values
    required this.vListValueY,
    required this.sDateFormat,
    required this.bVisibleMarker,
    required this.colorLine,
    required this.intervalAxisX,
    required this.colorLine2,
    required this.numberDate,
    required this.sListValueX2, // Second X value list
    required this.vListValueY2,
    required this.nameSeries1,
    required this.nameSeries2,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<String> sListValueX; // Alterado para List<String>
  final List<double> vListValueY;
  final String sDateFormat;
  final bool bVisibleMarker;
  final Color colorLine;
  final double intervalAxisX;
  final Color colorLine2;
  final int numberDate;
  final List<String> sListValueX2; // Alterado para List<String>
  final List<double> vListValueY2;
  final String nameSeries1;
  final String nameSeries2;

  @override
  State<DataTimeChartWithColumnComparate> createState() =>
      _DataTimeChartWithColumnComparateState();
}

class _DataTimeChartWithColumnComparateState
    extends State<DataTimeChartWithColumnComparate> {
  TrackballBehavior? _trackballBehavior;
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
      tooltipSettings: InteractiveTooltip(enable: true),
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
      primaryXAxis: CategoryAxis(
        // Alterado para CategoryAxis
        majorGridLines: MajorGridLines(width: 0),
        //labelPlacement: LabelPlacement.onTicks,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelIntersectAction: AxisLabelIntersectAction.multipleRows,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        title: AxisTitle(text: 'Reais'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        numberFormat: realFormatter,
        minimum: 0.001,
      ),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        toggleSeriesVisibility: true,
      ),
      series: _getColumnSeries(),
      trackballBehavior: _trackballBehavior,
    );
  }

  List<ColumnSeries<ChartSampleData, String>> _getColumnSeries() {
    final minSize1 =
        math.min(widget.sListValueX.length, widget.vListValueY.length);
    final minSize2 =
        math.min(widget.sListValueX2.length, widget.vListValueY2.length);

    final List<ChartSampleData> chartData1 = List<ChartSampleData>.generate(
      minSize1,
      (index) => ChartSampleData(
        x: widget.sListValueX[index], // Agora x é uma string
        yValue: widget.vListValueY[index],
      ),
    );

    final List<ChartSampleData> chartData2 = List<ChartSampleData>.generate(
      minSize2,
      (index) => ChartSampleData(
        x: widget.sListValueX2[index], // Agora x é uma string
        yValue: widget.vListValueY2[index],
      ),
    );

    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: chartData1,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        name: widget.nameSeries1,
        color: widget.colorLine,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7), topRight: Radius.circular(7)),
        dataLabelSettings: DataLabelSettings(isVisible: false),
        markerSettings: MarkerSettings(
          isVisible: (widget.bVisibleMarker &&
              chartData1.any((data) => data.yValue! > 0)),
        ),
      ),
      ColumnSeries<ChartSampleData, String>(
        dataSource: chartData2,
        xValueMapper: (ChartSampleData data, _) => data.x!,
        yValueMapper: (ChartSampleData data, _) => data.yValue,
        name: widget.nameSeries2,
        color: widget.colorLine2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7), topRight: Radius.circular(7)),
        dataLabelSettings: DataLabelSettings(isVisible: false),
        markerSettings: MarkerSettings(
          isVisible: (widget.bVisibleMarker &&
              chartData2.any((data) => data.yValue! > 0)),
        ),
      ),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.yValue});
  final String? x; // Alterado para String
  final double? yValue;
}
