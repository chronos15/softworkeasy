import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'un_view_lista_clientes_widget.dart' show UnViewListaClientesWidget;
import 'package:flutter/material.dart';

class UnViewListaClientesModel
    extends FlutterFlowModel<UnViewListaClientesWidget> {
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
