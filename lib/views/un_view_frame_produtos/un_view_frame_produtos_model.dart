import '/flutter_flow/flutter_flow_util.dart';
import 'un_view_frame_produtos_widget.dart' show UnViewFrameProdutosWidget;
import 'package:flutter/material.dart';

class UnViewFrameProdutosModel
    extends FlutterFlowModel<UnViewFrameProdutosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();
  }
}
