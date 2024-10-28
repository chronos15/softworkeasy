import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'un_view_frame_card_hor_model.dart';
export 'un_view_frame_card_hor_model.dart';

class UnViewFrameCardHorWidget extends StatefulWidget {
  const UnViewFrameCardHorWidget({
    super.key,
    required this.sTitulo,
    required this.icon,
    required this.colorGrad01,
    required this.colorGrad02,
  });

  final String? sTitulo;
  final Widget? icon;
  final Color? colorGrad01;
  final Color? colorGrad02;

  @override
  State<UnViewFrameCardHorWidget> createState() =>
      _UnViewFrameCardHorWidgetState();
}

class _UnViewFrameCardHorWidgetState extends State<UnViewFrameCardHorWidget> {
  late UnViewFrameCardHorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameCardHorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: widget.colorGrad01,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.icon!,
                Expanded(
                  child: AutoSizeText(
                    valueOrDefault<String>(
                      widget.sTitulo,
                      'Menu',
                    ).maybeHandleOverflow(
                      maxChars: 12,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    minFontSize: 10.0,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: FlutterFlowTheme.of(context).info,
                  size: 25.0,
                ),
              ]
                  .divide(const SizedBox(width: 5.0))
                  .addToStart(const SizedBox(width: 10.0))
                  .addToEnd(const SizedBox(width: 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
