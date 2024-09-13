import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import 'dart:async';
import 'un_view_frame_vendas_widget.dart' show UnViewFrameVendasWidget;
import 'package:flutter/material.dart';

class UnViewFrameVendasModel extends FlutterFlowModel<UnViewFrameVendasWidget> {
  ///  Local state fields for this component.

  DateTime? dateSelected;

  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimer;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  DateTime? datePicked;
  Completer<ApiCallResponse>? apiRequestCompleter3;
  // Stores action output result for [Bottom Sheet - unViewFrameFilterDate] action in IconButton widget.
  DateTime? actionReturnDate;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;
  // State field(s) for TabBarMobile widget.
  TabController? tabBarMobileController;
  int get tabBarMobileCurrentIndex =>
      tabBarMobileController != null ? tabBarMobileController!.index : 0;

  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel1;
  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 = FlutterFlowDataTableController<int>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel3;
  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel4;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    unViewFrameVazioModel1 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameVazioModel2 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameVazioModel3 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameVazioModel4 =
        createModel(context, () => UnViewFrameVazioModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();

    tabBarMobileController?.dispose();
    unViewFrameVazioModel1.dispose();
    unViewFrameVazioModel2.dispose();
    paginatedDataTableController1.dispose();
    tabBarController?.dispose();
    unViewFrameVazioModel3.dispose();
    unViewFrameVazioModel4.dispose();
    paginatedDataTableController2.dispose();
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
}
