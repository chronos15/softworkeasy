import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'unview_frame_vendas_vendedor_widget.dart'
    show UnviewFrameVendasVendedorWidget;
import 'package:flutter/material.dart';

class UnviewFrameVendasVendedorModel
    extends FlutterFlowModel<UnviewFrameVendasVendedorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
