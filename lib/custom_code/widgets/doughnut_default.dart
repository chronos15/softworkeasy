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

import 'package:syncfusion_flutter_charts/charts.dart'; // Importação necessária para gráficos

class DoughnutDefault extends StatefulWidget {
  const DoughnutDefault({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListXValue,
    required this.vListYValue,
    required this.bLegendsVisible,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<String> sListXValue;
  final List<double> vListYValue;
  final bool bLegendsVisible;

  @override
  State<DoughnutDefault> createState() => _DoughnutDefaultState();
}

class _DoughnutDefaultState extends State<DoughnutDefault> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    super.initState();
    _tooltip = TooltipBehavior(enable: true, format: 'point.x : point.y%');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCircularChart(
        title: ChartTitle(text: widget.sTitulo),
        legend: Legend(
            isVisible: widget.bLegendsVisible,
            overflowMode: LegendItemOverflowMode.wrap),
        tooltipBehavior: _tooltip,
        series: <DoughnutSeries<ChartSampleData, String>>[
          DoughnutSeries<ChartSampleData, String>(
            explode: true,
            dataSource: _getChartData(),
            xValueMapper: (ChartSampleData data, _) => data.x,
            yValueMapper: (ChartSampleData data, _) => data.y,
            dataLabelMapper: (ChartSampleData data, _) => data.text,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          )
        ],
      ),
    );
  }

  List<ChartSampleData> _getChartData() {
    List<ChartSampleData> chartData = [];
    for (int i = 0; i < widget.sListXValue.length; i++) {
      chartData.add(
        ChartSampleData(
          x: widget.sListXValue[i],
          y: widget.vListYValue[i],
          text: '${widget.vListYValue[i]}%',
        ),
      );
    }
    return chartData;
  }
}

class ChartSampleData {
  ChartSampleData({required this.x, required this.y, required this.text});
  final String x;
  final double y;
  final String text;
}
