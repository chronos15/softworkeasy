import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_empresa/un_view_frame_empresa_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'un_view_frame_header_widget.dart' show UnViewFrameHeaderWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnViewFrameHeaderModel extends FlutterFlowModel<UnViewFrameHeaderWidget> {
  ///  Local state fields for this component.

  bool openSearch = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - bodyImgApiToUploaded] action in Column widget.
  FFUploadedFile? returnBodyRequest;
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
