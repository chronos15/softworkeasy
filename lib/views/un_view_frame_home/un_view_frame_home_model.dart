import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_card_hor/un_view_frame_card_hor_widget.dart';
import 'dart:math';
import 'un_view_frame_home_widget.dart' show UnViewFrameHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnViewFrameHomeModel extends FlutterFlowModel<UnViewFrameHomeWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for unViewFrameCardHor component.
  late UnViewFrameCardHorModel unViewFrameCardHorModel1;
  // Model for unViewFrameCardHor component.
  late UnViewFrameCardHorModel unViewFrameCardHorModel2;
  // Model for unViewFrameCardHor component.
  late UnViewFrameCardHorModel unViewFrameCardHorModel3;
  // Model for unViewFrameCardHor component.
  late UnViewFrameCardHorModel unViewFrameCardHorModel4;
  // Model for unViewFrameCardHor component.
  late UnViewFrameCardHorModel unViewFrameCardHorModel5;

  @override
  void initState(BuildContext context) {
    unViewFrameCardHorModel1 =
        createModel(context, () => UnViewFrameCardHorModel());
    unViewFrameCardHorModel2 =
        createModel(context, () => UnViewFrameCardHorModel());
    unViewFrameCardHorModel3 =
        createModel(context, () => UnViewFrameCardHorModel());
    unViewFrameCardHorModel4 =
        createModel(context, () => UnViewFrameCardHorModel());
    unViewFrameCardHorModel5 =
        createModel(context, () => UnViewFrameCardHorModel());
  }

  @override
  void dispose() {
    unViewFrameCardHorModel1.dispose();
    unViewFrameCardHorModel2.dispose();
    unViewFrameCardHorModel3.dispose();
    unViewFrameCardHorModel4.dispose();
    unViewFrameCardHorModel5.dispose();
  }
}
