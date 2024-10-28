import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'unview_frame_dashboard_financeiro_widget.dart'
    show UnviewFrameDashboardFinanceiroWidget;
import 'package:flutter/material.dart';

class UnviewFrameDashboardFinanceiroModel
    extends FlutterFlowModel<UnviewFrameDashboardFinanceiroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
