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

class DataTimeChartBarColumnLinha extends StatefulWidget {
  const DataTimeChartBarColumnLinha({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListValueXColumn,
    required this.vListValueYColumn,
    required this.sDateFormat,
    required this.bVisibleMarker,
    required this.colorLine,
    required this.intervalAxisX,
    required this.colorLine2,
    required this.sListValueXLinha,
    required this.vListValueYLinha,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<String> sListValueXColumn; // Corrigido
  final List<double> vListValueYColumn; // Corrigido
  final String sDateFormat;
  final bool bVisibleMarker;
  final Color colorLine;
  final double intervalAxisX;
  final Color colorLine2;
  final List<String> sListValueXLinha; // Corrigido
  final List<double> vListValueYLinha;

  @override
  State<DataTimeChartBarColumnLinha> createState() =>
      _DataTimeChartBarColumnLinhaState();
}

class _DataTimeChartBarColumnLinhaState
    extends State<DataTimeChartBarColumnLinha> {
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildVerticalBarChart(),
    );
  }

  SfCartesianChart _buildVerticalBarChart() {
    if (widget.sListValueXColumn.isEmpty || widget.vListValueYColumn.isEmpty) {
      return SfCartesianChart();
    }

    if (widget.sListValueXColumn.length != widget.vListValueYColumn.length ||
        widget.sListValueXLinha.length != widget.vListValueYLinha.length) {
      throw Exception("As listas de valores X e Y devem ter o mesmo tamanho.");
    }

    final List<ChartSampleData> chartData = List<ChartSampleData>.generate(
      widget.sListValueXColumn.length,
      (index) => ChartSampleData(
        x: widget.sListValueXColumn[index],
        yValue: widget.vListValueYColumn[index],
      ),
    );

    final List<ChartSampleData> lineData = List<ChartSampleData>.generate(
      widget.sListValueXLinha.length,
      (index) => ChartSampleData(
        x: widget.sListValueXLinha[index],
        yValue: widget.vListValueYLinha[index],
      ),
    );

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      series: <CartesianSeries<dynamic, dynamic>>[
        // Aqui está a correção
        ColumnSeries<ChartSampleData, String>(
          dataSource: chartData,
          xValueMapper: (ChartSampleData data, _) => data.x!,
          yValueMapper: (ChartSampleData data, _) => data.yValue,
          color: widget.colorLine,
          borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
          dataLabelSettings:
              DataLabelSettings(isVisible: widget.bVisibleMarker),
        ),
        LineSeries<ChartSampleData, String>(
          dataSource: lineData,
          xValueMapper: (ChartSampleData data, _) => data.x!,
          yValueMapper: (ChartSampleData data, _) => data.yValue,
          color: widget.colorLine2,
          width: 2,
          markerSettings: MarkerSettings(isVisible: widget.bVisibleMarker),
        ),
      ],
      tooltipBehavior: TooltipBehavior(
        enable: true,
        header: '',
        format: 'point.x: point.y',
      ),
    );
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.yValue});
  final String? x;
  final double? yValue;
}
