import '/backend/api_requests/api_calls.dart';
import '/components/un_view_frame_chart_vendas_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'un_view_frame_vendas_widget.dart' show UnViewFrameVendasWidget;
import 'package:flutter/material.dart';

class UnViewFrameVendasModel extends FlutterFlowModel<UnViewFrameVendasWidget> {
  ///  Local state fields for this component.

  DateTime? dateSelected;

  DateTime? dateSelectedSemanal;

  bool isAllLoading = false;

  ///  State fields for stateful widgets in this component.

  final unViewFrameVendasShortcutsFocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter;
  DateTime? datePicked;
  // Stores action output result for [Bottom Sheet - unViewFrameFilterDate] action in IconButton widget.
  DateTime? actionReturnDate;
  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;
  // Model for unViewFrameChartVendas component.
  late UnViewFrameChartVendasModel unViewFrameChartVendasModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 = FlutterFlowDataTableController<int>();
  // Model for unViewFrameChartVendas component.
  late UnViewFrameChartVendasModel unViewFrameChartVendasModel2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    unViewFrameChartVendasModel1 =
        createModel(context, () => UnViewFrameChartVendasModel());
    unViewFrameChartVendasModel2 =
        createModel(context, () => UnViewFrameChartVendasModel());
  }

  @override
  void dispose() {
    unViewFrameVendasShortcutsFocusNode.dispose();
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();

    unViewFrameChartVendasModel1.dispose();
    paginatedDataTableController1.dispose();
    unViewFrameChartVendasModel2.dispose();
    paginatedDataTableController2.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
