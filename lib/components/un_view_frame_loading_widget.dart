import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'un_view_frame_loading_model.dart';
export 'un_view_frame_loading_model.dart';

class UnViewFrameLoadingWidget extends StatefulWidget {
  const UnViewFrameLoadingWidget({super.key});

  @override
  State<UnViewFrameLoadingWidget> createState() =>
      _UnViewFrameLoadingWidgetState();
}

class _UnViewFrameLoadingWidgetState extends State<UnViewFrameLoadingWidget> {
  late UnViewFrameLoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameLoadingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Lottie.asset(
        'assets/jsons/Animation_-_1730114846312.json',
        width: 80.0,
        height: 80.0,
        fit: BoxFit.cover,
        animate: true,
      ),
    );
  }
}
