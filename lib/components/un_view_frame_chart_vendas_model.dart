import '/backend/api_requests/api_calls.dart';
import '/components/chart_totais_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import 'dart:async';
import 'un_view_frame_chart_vendas_widget.dart'
    show UnViewFrameChartVendasWidget;
import 'package:flutter/material.dart';

class UnViewFrameChartVendasModel
    extends FlutterFlowModel<UnViewFrameChartVendasWidget> {
  ///  Local state fields for this component.

  DateTime? dateSelection;

  String anualTypeSelected = 'Linha';

  String semanalTypeSelected = 'Linha';

  String mensalTypeSelected = 'Linha';

  ///  State fields for stateful widgets in this component.

  final unViewFrameChartVendasShortcutsFocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter1;
  Completer<ApiCallResponse>? apiRequestCompleter3;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel;
  DateTime? datePicked;
  // State field(s) for ccTypeChartSemanal widget.
  FormFieldController<List<String>>? ccTypeChartSemanalValueController;
  String? get ccTypeChartSemanalValue =>
      ccTypeChartSemanalValueController?.value?.firstOrNull;
  set ccTypeChartSemanalValue(String? val) =>
      ccTypeChartSemanalValueController?.value = val != null ? [val] : [];
  // State field(s) for dpdMobileTypeSemanal widget.
  String? dpdMobileTypeSemanalValue;
  FormFieldController<String>? dpdMobileTypeSemanalValueController;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel1;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel2;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel3;
  // State field(s) for ccMensalDiaSemana widget.
  FormFieldController<List<String>>? ccMensalDiaSemanaValueController;
  String? get ccMensalDiaSemanaValue =>
      ccMensalDiaSemanaValueController?.value?.firstOrNull;
  set ccMensalDiaSemanaValue(String? val) =>
      ccMensalDiaSemanaValueController?.value = val != null ? [val] : [];
  // State field(s) for dpdMensalMesDesktop widget.
  String? dpdMensalMesDesktopValue;
  FormFieldController<String>? dpdMensalMesDesktopValueController;
  // State field(s) for dpdMensalAnoDesktop widget.
  String? dpdMensalAnoDesktopValue;
  FormFieldController<String>? dpdMensalAnoDesktopValueController;
  // State field(s) for ccTypeChartMensal widget.
  FormFieldController<List<String>>? ccTypeChartMensalValueController;
  String? get ccTypeChartMensalValue =>
      ccTypeChartMensalValueController?.value?.firstOrNull;
  set ccTypeChartMensalValue(String? val) =>
      ccTypeChartMensalValueController?.value = val != null ? [val] : [];
  // State field(s) for dpdMobileTypeMensal widget.
  String? dpdMobileTypeMensalValue;
  FormFieldController<String>? dpdMobileTypeMensalValueController;
  // Model for ChartTotais component.
  late ChartTotaisModel chartTotaisModel4;
  // State field(s) for ChoiceAnualType widget.
  FormFieldController<List<String>>? choiceAnualTypeValueController;
  String? get choiceAnualTypeValue =>
      choiceAnualTypeValueController?.value?.firstOrNull;
  set choiceAnualTypeValue(String? val) =>
      choiceAnualTypeValueController?.value = val != null ? [val] : [];
  Completer<ApiCallResponse>? apiRequestCompleter4;
  // State field(s) for dpdMobileTypeAnual widget.
  String? dpdMobileTypeAnualValue;
  FormFieldController<String>? dpdMobileTypeAnualValueController;
  // State field(s) for DPDChartDesktop widget.
  String? dPDChartDesktopValue;
  FormFieldController<String>? dPDChartDesktopValueController;

  @override
  void initState(BuildContext context) {
    unViewFrameVazioModel = createModel(context, () => UnViewFrameVazioModel());
    chartTotaisModel1 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel2 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel3 = createModel(context, () => ChartTotaisModel());
    chartTotaisModel4 = createModel(context, () => ChartTotaisModel());
  }

  @override
  void dispose() {
    unViewFrameChartVendasShortcutsFocusNode.dispose();
    tabBarController?.dispose();
    unViewFrameVazioModel.dispose();
    chartTotaisModel1.dispose();
    chartTotaisModel2.dispose();
    chartTotaisModel3.dispose();
    chartTotaisModel4.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
