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
import 'package:intl/intl.dart'; // Importação para formatação de moeda

class DoughnutDefault extends StatefulWidget {
  const DoughnutDefault({
    super.key,
    this.width,
    this.height,
    required this.sTitulo,
    required this.sListXValue,
    required this.vListYValue,
    required this.bLegendsVisible,
    required this.colorslist,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<String> sListXValue;
  final List<double> vListYValue;
  final bool bLegendsVisible;
  final List<Color> colorslist;

  @override
  State<DoughnutDefault> createState() => _DoughnutDefaultState();
}

class _DoughnutDefaultState extends State<DoughnutDefault> {
  late TooltipBehavior _tooltip;
  final NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$'); // Formato de Real

  @override
  void initState() {
    super.initState();
    // Tooltip modificado para exibir o valor em real e a porcentagem
    _tooltip = TooltipBehavior(
      enable: true,
      tooltipPosition: TooltipPosition.auto,
      builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
          int seriesIndex) {
        final double yValue = widget.vListYValue[pointIndex];
        final double totalValue = widget.vListYValue.reduce((a, b) => a + b);
        final double percentage = (yValue / totalValue) * 100;
        final String formattedValue = currencyFormat.format(yValue);
        final String category =
            widget.sListXValue[pointIndex]; // Nome da categoria (xValue)

        // Retornar um widget Text para o Tooltip com o nome da categoria, valor e porcentagem
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
          child: Text(
            '$category: $formattedValue (${percentage.toStringAsFixed(2)}%)',
            style: const TextStyle(color: Colors.black),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, // Defina a cor do container como transparente
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              color: Colors.transparent, // Container do gráfico
              child: SfCircularChart(
                backgroundColor: Colors.transparent, // Gráfico transparente
                title: ChartTitle(text: widget.sTitulo),
                legend: Legend(
                  isVisible: widget.bLegendsVisible,
                  overflowMode: LegendItemOverflowMode.wrap,
                ),
                tooltipBehavior: _tooltip,
                series: <DoughnutSeries<ChartSampleData, String>>[
                  DoughnutSeries<ChartSampleData, String>(
                    explode: true,
                    dataSource: _getChartData(),
                    xValueMapper: (ChartSampleData data, _) => data.x,
                    yValueMapper: (ChartSampleData data, _) => data.y,
                    pointColorMapper: (ChartSampleData data, int index) =>
                        widget.colorslist[index],
                    dataLabelMapper: (ChartSampleData data, int index) {
                      final double totalValue =
                          widget.vListYValue.reduce((a, b) => a + b);
                      final double percentage = (data.y / totalValue) * 100;
                      return '${percentage.toStringAsFixed(2)}%';
                    },
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      labelIntersectAction: LabelIntersectAction.shift,
                    ),
                    innerRadius: '30%', // Ajustar conforme necessário
                  )
                ],
                margin: EdgeInsets.all(0), // Remover margens
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<ChartSampleData> _getChartData() {
    List<ChartSampleData> chartData = [];
    final double totalValue =
        widget.vListYValue.reduce((a, b) => a + b); // Calcular o valor total
    for (int i = 0; i < widget.sListXValue.length; i++) {
      final double yValue = widget.vListYValue[i];
      final double percentage =
          (yValue / totalValue) * 100; // Cálculo da porcentagem
      chartData.add(
        ChartSampleData(
          x: widget.sListXValue[i],
          y: yValue,
          // Exibe o valor e a porcentagem no rótulo
          text:
              '${currencyFormat.format(yValue)} (${percentage.toStringAsFixed(2)}%)',
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
