import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/frame_components/un_view_frame_empresa/un_view_frame_empresa_widget.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'un_view_frame_profile_widget.dart' show UnViewFrameProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class UnViewFrameProfileModel
    extends FlutterFlowModel<UnViewFrameProfileWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getVersionNumber] action in unViewFrameProfile widget.
  String? sVersionReturned;
  // Stores action output result for [Custom Action - bodyImgApiToUploaded] action in Container widget.
  FFUploadedFile? returnBodyRequest;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
