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

class DataTimeChartWithAreaString extends StatefulWidget {
  const DataTimeChartWithAreaString({
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
    required this.sConcatInfoPlus,
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
  final int numberDate;
  final String sConcatInfoPlus;

  @override
  State<DataTimeChartWithAreaString> createState() =>
      _DataTimeChartWithAreaStringState();
}

class _DataTimeChartWithAreaStringState
    extends State<DataTimeChartWithAreaString> {
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
      child: _buildAreaChartWithGradient(),
    );
  }

  SfCartesianChart _buildAreaChartWithGradient() {
    final double maxValueY = widget.vListValueY.isNotEmpty
        ? widget.vListValueY.reduce((a, b) => a > b ? a : b) * 1.15
        : 0.0;

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: CategoryAxis(
        // Usando CategoryAxis
        majorGridLines: MajorGridLines(width: 0),
        labelPlacement: LabelPlacement.onTicks,
        interval: 1, // Define o intervalo como 1 para mostrar todas as labels
        labelStyle:
            TextStyle(fontSize: 10), // Ajusta o tamanho da fonte se necessário
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        title: AxisTitle(text: 'Reais'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
        maximum: maxValueY,
        minimum: 0.001,
        initialVisibleMinimum: 0,
      ),
      series: _getAreaSeriesWithGradient(),
      trackballBehavior: _trackballBehavior,
    );
  }

  List<SplineAreaSeries<ChartSampleData, String>> // Alterado para String
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
        x: widget.sListValueX[index], // Agora x é uma string
        yValue: widget.vListValueY[index],
      ),
    );

    return <SplineAreaSeries<ChartSampleData, String>>[
      SplineAreaSeries<ChartSampleData, String>(
        // Alterado para String
        dataSource: chartData,
        xValueMapper: (ChartSampleData data, _) =>
            '${data.x}${widget.sConcatInfoPlus}',

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
        dataLabelSettings: DataLabelSettings(isVisible: true),
        markerSettings: MarkerSettings(
          isVisible: (widget.bVisibleMarker &&
              chartData.any((data) => data.yValue! > 0)),
          shape: DataMarkerType.circle,
          borderColor: widget.colorLine,
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
