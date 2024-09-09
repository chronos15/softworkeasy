import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'un_view_frame_card_menu_model.dart';
export 'un_view_frame_card_menu_model.dart';

class UnViewFrameCardMenuWidget extends StatefulWidget {
  const UnViewFrameCardMenuWidget({
    super.key,
    required this.sTitulo,
    required this.sSubtitulo,
    required this.icon,
    required this.colorBase,
    required this.colorText,
    required this.colorSubText,
    this.colorSubIcon,
  });

  final String? sTitulo;
  final String? sSubtitulo;
  final Widget? icon;
  final Color? colorBase;
  final Color? colorText;
  final Color? colorSubText;
  final Color? colorSubIcon;

  @override
  State<UnViewFrameCardMenuWidget> createState() =>
      _UnViewFrameCardMenuWidgetState();
}

class _UnViewFrameCardMenuWidgetState extends State<UnViewFrameCardMenuWidget> {
  late UnViewFrameCardMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameCardMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.colorBase,
            FlutterFlowTheme.of(context).primary,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Container(
                width: 75.0,
                height: 75.0,
                decoration: BoxDecoration(
                  color: widget.colorSubIcon,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(16.0),
                    topLeft: Radius.circular(150.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.81, 0.04),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 12.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      fillColor: valueOrDefault<Color>(
                                        widget.colorSubIcon,
                                        FlutterFlowTheme.of(context).accent1,
                                      ),
                                      icon: widget.icon!,
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: widget.colorSubIcon,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: AutoSizeText(
                                            '+ 15%',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 7.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      valueOrDefault<String>(
                                        widget.sTitulo,
                                        'Menu',
                                      ),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: widget.colorText,
                                            fontSize: 26.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    AutoSizeText(
                                      valueOrDefault<String>(
                                        widget.sSubtitulo,
                                        '--',
                                      ),
                                      maxLines: 1,
                                      minFontSize: 4.0,
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: widget.colorText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 5.0))
                          .addToStart(const SizedBox(height: 10.0))
                          .addToEnd(const SizedBox(height: 5.0)),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 5.0)),
            ),
          ],
        ),
      ),
    );
  }
}