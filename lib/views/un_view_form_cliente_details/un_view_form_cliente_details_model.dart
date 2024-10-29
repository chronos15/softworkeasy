import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import 'un_view_form_cliente_details_widget.dart'
    show UnViewFormClienteDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnViewFormClienteDetailsModel
    extends FlutterFlowModel<UnViewFormClienteDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for unViewFrameHeader component.
  late UnViewFrameHeaderModel unViewFrameHeaderModel;

  @override
  void initState(BuildContext context) {
    unViewFrameHeaderModel =
        createModel(context, () => UnViewFrameHeaderModel());
  }

  @override
  void dispose() {
    unViewFrameHeaderModel.dispose();
  }
}
