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

class RadialBar extends StatefulWidget {
  const RadialBar({
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
  State<RadialBar> createState() => _RadialBarState();
}

class _RadialBarState extends State<RadialBar> {
  TooltipBehavior? _tooltipBehavior;
  List<ChartSampleData>? dataSources;

  @override
  void initState() {
    super.initState();

    // Inicializa o comportamento de tooltip
    _tooltipBehavior =
        TooltipBehavior(enable: true, format: 'point.x : point.y%');

    // Inicializa os dados do gráfico com base nas entradas do widget
    dataSources = List<ChartSampleData>.generate(
      widget.sListXValue.length,
      (index) => ChartSampleData(
        x: widget.sListXValue[index],
        y: widget.vListYValue[index],
        pointColor: _getColorForIndex(index),
      ),
    );
  }

  // Método para definir as cores dinamicamente com base no índice
  Color _getColorForIndex(int index) {
    const List<Color> colors = [
      Color.fromRGBO(69, 186, 161, 1.0),
      Color.fromRGBO(230, 135, 111, 1.0),
      Color.fromRGBO(145, 132, 202, 1.0),
      Color.fromRGBO(235, 96, 143, 1.0),
    ];
    return colors[index % colors.length]; // Ciclo através das cores
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildCustomizedRadialBarChart(),
    );
  }

  SfCircularChart _buildCustomizedRadialBarChart() {
    return SfCircularChart(
      title: ChartTitle(text: widget.sTitulo),
      legend: Legend(
        isVisible: widget.bLegendsVisible,
        overflowMode: LegendItemOverflowMode.wrap,
      ),
      series: _getRadialBarCustomizedSeries(),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  List<RadialBarSeries<ChartSampleData, String>>
      _getRadialBarCustomizedSeries() {
    return <RadialBarSeries<ChartSampleData, String>>[
      RadialBarSeries<ChartSampleData, String>(
        maximumValue: 100,
        radius: '100%',
        dataSource: dataSources!,
        cornerStyle: CornerStyle.bothCurve,
        xValueMapper: (ChartSampleData data, _) => data.x,
        yValueMapper: (ChartSampleData data, _) => data.y,
        pointColorMapper: (ChartSampleData data, _) => data.pointColor,
        legendIconType: LegendIconType.circle,
      ),
    ];
  }

  @override
  void dispose() {
    dataSources?.clear();
    super.dispose();
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.y, this.pointColor});
  final String? x; // Valor X para o gráfico (rótulo)
  final double? y; // Valor Y para o gráfico
  final Color? pointColor; // Cor do ponto no gráfico
}
