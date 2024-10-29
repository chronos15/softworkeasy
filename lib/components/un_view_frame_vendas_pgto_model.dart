import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'un_view_frame_vendas_pgto_widget.dart' show UnViewFrameVendasPgtoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnViewFrameVendasPgtoModel
    extends FlutterFlowModel<UnViewFrameVendasPgtoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel;

  @override
  void initState(BuildContext context) {
    unViewFrameVazioModel = createModel(context, () => UnViewFrameVazioModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    unViewFrameVazioModel.dispose();
  }
}
