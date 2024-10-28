import '/components/chart_totais_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'un_view_frame_chart_expansive_widget.dart'
    show UnViewFrameChartExpansiveWidget;
import 'package:flutter/material.dart';

class UnViewFrameChartExpansiveModel
    extends FlutterFlowModel<UnViewFrameChartExpansiveWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel1;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel2;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel3;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel4;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel5;

  @override
  void initState(BuildContext context) {
    chartTotaisModel1 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel2 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel3 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel4 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel5 = createModel(context, () => ChartTotaisModel());
  }

  @override
  void dispose() {
    chartTotaisModel1.dispose();
    chartTotaisModel2.dispose();
    chartTotaisModel3.dispose();
    chartTotaisModel4.dispose();
    chartTotaisModel5.dispose();
  }
}
