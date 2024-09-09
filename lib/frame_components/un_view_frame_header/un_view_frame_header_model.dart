import '/flutter_flow/flutter_flow_util.dart';
import 'un_view_frame_header_widget.dart' show UnViewFrameHeaderWidget;
import 'package:flutter/material.dart';

class UnViewFrameHeaderModel extends FlutterFlowModel<UnViewFrameHeaderWidget> {
  ///  Local state fields for this component.

  bool openSearch = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
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
