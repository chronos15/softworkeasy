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

class DataTimeChartBarHorizontal extends StatefulWidget {
  const DataTimeChartBarHorizontal({
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

  @override
  State<DataTimeChartBarHorizontal> createState() =>
      _DataTimeChartBarHorizontalState();
}

class _DataTimeChartBarHorizontalState
    extends State<DataTimeChartBarHorizontal> {
  late DateFormat dateFormat;
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  void initState() {
    super.initState();
    dateFormat = DateFormat(widget.sDateFormat, 'pt_BR');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildHorizontalBarChart(),
    );
  }

  SfCartesianChart _buildHorizontalBarChart() {
    if (widget.sListValueX.isEmpty || widget.vListValueY.isEmpty) {
      return SfCartesianChart();
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

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
        title: AxisTitle(text: 'Horários'),
        labelPlacement: LabelPlacement.onTicks,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        //title: AxisTitle(text: 'Vendas (Reais)'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      series: <BarSeries<ChartSampleData, String>>[
        BarSeries<ChartSampleData, String>(
          dataSource: chartData,
          xValueMapper: (ChartSampleData data, _) =>
              dateFormat.format(data.x!), // Mapeia a data como string
          yValueMapper: (ChartSampleData data, _) =>
              data.yValue, // Valores numéricos
          color: widget.colorLine,
          //width: 0.3,
          //spacing: 0.3,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(7), topRight: Radius.circular(7)),
          dataLabelSettings:
              DataLabelSettings(isVisible: widget.bVisibleMarker),
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
  final DateTime? x;
  final double? yValue;
}
