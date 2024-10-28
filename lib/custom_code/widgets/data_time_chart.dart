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
import 'package:intl/intl.dart'; // Importação necessária

class DataTimeChart extends StatefulWidget {
  const DataTimeChart({
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
    required this.numberDate,
  });

  final double? width;
  final double? height;
  final String sTitulo;
  final List<DateTime> sListValueX; // Já é DateTime
  final List<double> vListValueY;
  final String sDateFormat;
  final bool bVisibleMarker;
  final Color colorLine;
  final double intervalAxisX;
  final int numberDate;

  @override
  State<DataTimeChart> createState() => _DataTimeChartState();
}

class _DataTimeChartState extends State<DataTimeChart> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: _buildDefaultDateTimeAxisChart(),
    );
  }

  SfCartesianChart _buildDefaultDateTimeAxisChart() {
    final int daysToShow = widget.numberDate; // Por exemplo, últimos 30 dias
    final DateTime today = DateTime.now();
    final DateTime startDate = today.subtract(Duration(days: daysToShow));

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.sTitulo),
      primaryXAxis: DateTimeAxis(
        majorGridLines: MajorGridLines(width: 0),
        minimum: widget.sListValueX.isNotEmpty
            ? widget.sListValueX.first
            : startDate,
        maximum:
            widget.sListValueX.isNotEmpty ? widget.sListValueX.last : today,
        dateFormat: dateFormat,
        //interval: widget.intervalAxisX != 0 ? widget.intervalAxisX : null,
        // Define a data mínima para garantir que a primeira label apareça
        //minimum: widget.sListValueX.first,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        title: AxisTitle(text: 'Reais'),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: realFormatter,
      ),
      series: _getDefaultDateTimeSeries(),
      trackballBehavior: _trackballBehavior,
    );
  }

  List<LineSeries<ChartSampleData, DateTime>> _getDefaultDateTimeSeries() {
    if (widget.sListValueX.isEmpty || widget.vListValueY.isEmpty) {
      return [];
    }

    if (widget.sListValueX.length != widget.vListValueY.length) {
      throw Exception("As listas de valores X e Y devem ter o mesmo tamanho.");
    }

    // Cria a lista de dados para o gráfico sem necessidade de conversão
    final List<ChartSampleData> chartData = List<ChartSampleData>.generate(
      widget.sListValueX.length,
      (index) => ChartSampleData(
        x: widget.sListValueX[index], // `x` já é DateTime
        yValue: widget.vListValueY[index],
      ),
    );

    return <LineSeries<ChartSampleData, DateTime>>[
      LineSeries<ChartSampleData, DateTime>(
          dataSource: chartData,
          xValueMapper: (ChartSampleData data, _) => data.x!,
          yValueMapper: (ChartSampleData data, _) => data.yValue,
          dataLabelMapper: (ChartSampleData data, _) =>
              realFormatter.format(data.yValue),
          dataLabelSettings: DataLabelSettings(isVisible: false),
          color: widget.colorLine,
          pointColorMapper: (ChartSampleData data, _) =>
              data.yValue == 0 ? Colors.transparent : widget.colorLine,
          markerSettings: MarkerSettings(
              isVisible: (widget.bVisibleMarker &&
                  chartData.any((data) => data.yValue! > 0)),
              shape: DataMarkerType.diamond)),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.yValue});
  final DateTime? x;
  final double? yValue;
}
