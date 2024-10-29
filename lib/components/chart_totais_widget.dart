import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chart_totais_model.dart';
export 'chart_totais_model.dart';

class ChartTotaisWidget extends StatefulWidget {
  const ChartTotaisWidget({
    super.key,
    required this.valueAtual,
    required this.valueAnterior,
    required this.titAtual,
    required this.titAnterior,
    double? percentDifAtual,
    bool? isCompareted,
  })  : this.percentDifAtual = percentDifAtual ?? 0.0,
        this.isCompareted = isCompareted ?? true;

  final String? valueAtual;
  final String? valueAnterior;
  final String? titAtual;
  final String? titAnterior;
  final double percentDifAtual;
  final bool isCompareted;

  @override
  State<ChartTotaisWidget> createState() => _ChartTotaisWidgetState();
}

class _ChartTotaisWidgetState extends State<ChartTotaisWidget>
    with TickerProviderStateMixin {
  late ChartTotaisModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartTotaisModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
    return Stack(
      alignment: AlignmentDirectional(-1.0, 0.0),
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: 150.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget!.titAtual,
                            '--',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w200,
                              ),
                        ),
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget!.valueAtual,
                            '0',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                  child: Container(
                    width: 150.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget!.titAnterior,
                            '--',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w200,
                              ),
                        ),
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget!.valueAnterior,
                            '0',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 0.0)),
          ),
        ),
        if (widget!.isCompareted &&
            responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
          Align(
            alignment: AlignmentDirectional(-0.75, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500.0),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(500.0),
                            border: Border.all(
                              color: Color(0x4A57636C),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                '${valueOrDefault<String>(
                                  formatNumber(
                                    widget!.percentDifAtual,
                                    formatType: FormatType.custom,
                                    format: '##.##',
                                    locale: 'pt_br',
                                  ),
                                  '0',
                                )}%',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              if (widget!.percentDifAtual < 0.0)
                                Icon(
                                  Icons.trending_down_rounded,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 17.0,
                                ),
                              if (widget!.percentDifAtual >= 0.0)
                                Icon(
                                  Icons.trending_up_sharp,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 17.0,
                                ),
                            ]
                                .divide(SizedBox(width: 2.0))
                                .addToStart(SizedBox(width: 10.0))
                                .addToEnd(SizedBox(width: 5.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(width: 5.0)),
            ),
          ),
      ],
    ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!);
  }
}
