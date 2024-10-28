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

class DataTimeChartBarVertical extends StatefulWidget {
  const DataTimeChartBarVertical({
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
  final List<String> sListValueX; // Agora é uma lista de strings
  final List<double> vListValueY;
  final String sDateFormat;
  final bool bVisibleMarker;
  final Color colorLine;
  final double intervalAxisX;
  final Color colorLine2;

  @override
  State<DataTimeChartBarVertical> createState() =>
      _DataTimeChartBarVerticalState();
}

class _DataTimeChartBarVerticalState extends State<DataTimeChartBarVertical> {
  final NumberFormat realFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildVerticalBarChart(), // Usando o método correto
    );
  }

  SfCartesianChart _buildVerticalBarChart() {
    if (widget.sListValueX.isEmpty || widget.vListValueY.isEmpty) {
      return SfCartesianChart();
    }

    if (widget.sListValueX.length != widget.vListValueY.length) {
      throw Exception("As listas de valores X e Y devem ter o mesmo tamanho.");
    }

    final List<ChartSampleData> chartData = List<ChartSampleData>.generate(
      widget.sListValueX.length,
      (index) => ChartSampleData(
        x: widget.sListValueX[index], // x é uma string agora
        yValue: widget.vListValueY[index],
      ),
    );

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: CategoryAxis(
        // Eixo X é categórico (strings)
        majorGridLines: MajorGridLines(width: 0),
        //title: AxisTitle(text: 'Horas'),
        //labelPlacement: LabelPlacement.onTicks,
        //edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      series: <ColumnSeries<ChartSampleData, String>>[
        // Agora a série usa String no eixo X
        ColumnSeries<ChartSampleData, String>(
          dataSource: chartData,
          xValueMapper: (ChartSampleData data, _) => data.x!, // x é string
          yValueMapper: (ChartSampleData data, _) => data.yValue,
          color: widget.colorLine,
          borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
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
  final String? x; // Tipo alterado para String
  final double? yValue;
}
