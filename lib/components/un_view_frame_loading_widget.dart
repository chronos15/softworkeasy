import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
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

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() => _model.lottieAnimationStatus = false);
    });

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Lottie.asset(
        'assets/lottie_animations/Animation_-_1726151788743.json',
        width: 200.0,
        height: 200.0,
        fit: BoxFit.contain,
        animate: true,
      ),
    );
  }
}
