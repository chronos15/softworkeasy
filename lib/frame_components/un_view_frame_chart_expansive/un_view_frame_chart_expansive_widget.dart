import '/components/chart_totais_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'un_view_frame_chart_expansive_model.dart';
export 'un_view_frame_chart_expansive_model.dart';

class UnViewFrameChartExpansiveWidget extends StatefulWidget {
  const UnViewFrameChartExpansiveWidget({
    super.key,
    String? sTitulo,
    this.listValueX,
    required this.listValueY,
    double? interval,
    int? iDatesGen,
    int? iTipoChart,
    this.listValueXString,
    this.listValueY2Comparated,
    String? sDateFormat,
    this.dateAnt,
    this.dateAtual,
    this.sumAnt,
    this.sumAtual,
    this.percentVariacao,
  })  : this.sTitulo = sTitulo ?? 'teste',
        this.interval = interval ?? 0.0,
        this.iDatesGen = iDatesGen ?? 0,
        this.iTipoChart = iTipoChart ?? 0,
        this.sDateFormat = sDateFormat ?? 'E';

  final String sTitulo;
  final List<DateTime>? listValueX;
  final List<double>? listValueY;
  final double interval;
  final int iDatesGen;
  final int iTipoChart;
  final List<String>? listValueXString;
  final List<double>? listValueY2Comparated;
  final String sDateFormat;
  final String? dateAnt;
  final String? dateAtual;
  final String? sumAnt;
  final String? sumAtual;
  final double? percentVariacao;

  @override
  State<UnViewFrameChartExpansiveWidget> createState() =>
      _UnViewFrameChartExpansiveWidgetState();
}

class _UnViewFrameChartExpansiveWidgetState
    extends State<UnViewFrameChartExpansiveWidget>
    with TickerProviderStateMixin {
  late UnViewFrameChartExpansiveModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameChartExpansiveModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 350));
      await actions.changeOrientation(
        true,
      );
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
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
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 10.0, 20.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    if (widget!.iTipoChart == 0)
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: custom_widgets.DataTimeChartWithArea(
                          width: double.infinity,
                          height: double.infinity,
                          sTitulo: valueOrDefault<String>(
                            widget!.sTitulo,
                            '0',
                          ),
                          sDateFormat: 'dd/MM',
                          bVisibleMarker: true,
                          colorLine: FlutterFlowTheme.of(context).primary,
                          intervalAxisX: valueOrDefault<double>(
                            widget!.interval,
                            0.0,
                          ),
                          colorLine2: FlutterFlowTheme.of(context).primary,
                          sListValueX: widget!.listValueX!,
                          vListValueY: widget!.listValueY!,
                          numberDate: valueOrDefault<int>(
                            widget!.iDatesGen,
                            0,
                          ),
                        ),
                      ),
                    if (widget!.iTipoChart == 1)
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: custom_widgets.DataTimeChartWithAreaString(
                            width: double.infinity,
                            height: double.infinity,
                            sTitulo: widget!.sTitulo,
                            sDateFormat: 'sad',
                            bVisibleMarker: true,
                            colorLine: FlutterFlowTheme.of(context).primary,
                            intervalAxisX: 1.0,
                            colorLine2: FlutterFlowTheme.of(context).primary,
                            numberDate: 5,
                            vListValueY: widget!.listValueY!,
                            sListValueX: widget!.listValueXString!,
                            sConcatInfoPlus: 'h',
                          ),
                        ),
                      ),
                    if (widget!.iTipoChart == 2)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget!.iTipoChart == 2)
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: custom_widgets
                                    .DataTimeChartWithAreaComparate(
                                  width: double.infinity,
                                  height: double.infinity,
                                  sTitulo: widget!.sTitulo,
                                  sDateFormat: widget!.sDateFormat,
                                  bVisibleMarker: true,
                                  colorLine:
                                      FlutterFlowTheme.of(context).primary,
                                  intervalAxisX: 1.0,
                                  colorLine2:
                                      FlutterFlowTheme.of(context).error,
                                  numberDate: 30,
                                  sListValueX: widget!.listValueX!,
                                  vListValueY: widget!.listValueY!,
                                  sListValueX2: widget!.listValueX!,
                                  vListValueY2: widget!.listValueY2Comparated!,
                                  nameSeries1: 'Atual',
                                  nameSeries2: 'Anterior',
                                ),
                              ),
                            ),
                          wrapWithModel(
                            model: _model.chartTotaisModel1,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: ChartTotaisWidget(
                              valueAtual: widget!.sumAtual!,
                              valueAnterior: widget!.sumAnt!,
                              titAtual: valueOrDefault<String>(
                                widget!.dateAtual,
                                '--',
                              ),
                              titAnterior: widget!.dateAnt!,
                              percentDifAtual: widget!.percentVariacao!,
                            ),
                          ),
                        ],
                      ),
                    if (widget!.iTipoChart == 3)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: custom_widgets
                                  .DataTimeChartWithAreaComparateString(
                                width: double.infinity,
                                height: double.infinity,
                                sTitulo: widget!.sTitulo,
                                sDateFormat: 'fg',
                                bVisibleMarker: true,
                                colorLine: FlutterFlowTheme.of(context).primary,
                                intervalAxisX: 1.0,
                                colorLine2: FlutterFlowTheme.of(context).error,
                                numberDate: widget!.iDatesGen,
                                nameSeries1: 'Atual',
                                nameSeries2: 'Anterior',
                                sListValueX: widget!.listValueXString!,
                                vListValueY: widget!.listValueY!,
                                sListValueX2: widget!.listValueXString!,
                                vListValueY2: widget!.listValueY2Comparated!,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.chartTotaisModel2,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: ChartTotaisWidget(
                              valueAtual: widget!.sumAtual!,
                              valueAnterior: widget!.sumAnt!,
                              titAtual: valueOrDefault<String>(
                                widget!.dateAtual,
                                '--',
                              ),
                              titAnterior: widget!.dateAnt!,
                              percentDifAtual: widget!.percentVariacao!,
                            ),
                          ),
                        ],
                      ),
                    if (widget!.iTipoChart == 4)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child:
                                    custom_widgets.DataTimeChartWithAreaString(
                                  width: double.infinity,
                                  height: double.infinity,
                                  sTitulo: widget!.sTitulo,
                                  sDateFormat: 'sad',
                                  bVisibleMarker: true,
                                  colorLine:
                                      FlutterFlowTheme.of(context).primary,
                                  intervalAxisX: 1.0,
                                  colorLine2:
                                      FlutterFlowTheme.of(context).primary,
                                  numberDate: 5,
                                  vListValueY: widget!.listValueY!,
                                  sListValueX: widget!.listValueXString!,
                                  sConcatInfoPlus: '',
                                ),
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.chartTotaisModel3,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: ChartTotaisWidget(
                              valueAtual: widget!.sumAtual!,
                              valueAnterior: widget!.sumAnt!,
                              titAtual: valueOrDefault<String>(
                                widget!.dateAtual,
                                '--',
                              ),
                              titAnterior: widget!.dateAnt!,
                              percentDifAtual: widget!.percentVariacao!,
                            ),
                          ),
                        ],
                      ),
                    if (widget!.iTipoChart == 5)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: custom_widgets
                                  .DataTimeChartWithColumnComparate(
                                width: double.infinity,
                                height: double.infinity,
                                sTitulo: widget!.sTitulo,
                                sDateFormat: 'sad',
                                bVisibleMarker: false,
                                colorLine: FlutterFlowTheme.of(context).primary,
                                intervalAxisX: 1.0,
                                colorLine2: FlutterFlowTheme.of(context).error,
                                numberDate: 12,
                                nameSeries1: 'Atual',
                                nameSeries2: 'Anterior',
                                sListValueX: widget!.listValueXString!,
                                vListValueY: widget!.listValueY!,
                                sListValueX2: widget!.listValueXString!,
                                vListValueY2: widget!.listValueY2Comparated!,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.chartTotaisModel4,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: ChartTotaisWidget(
                              valueAtual: widget!.sumAtual!,
                              valueAnterior: widget!.sumAnt!,
                              titAtual: valueOrDefault<String>(
                                widget!.dateAtual,
                                '--',
                              ),
                              titAnterior: widget!.dateAnt!,
                              percentDifAtual: widget!.percentVariacao!,
                            ),
                          ),
                        ],
                      ),
                    if (widget!.iTipoChart == 6)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: custom_widgets
                                  .DataTimeChartWithAreaAndColumns(
                                width: double.infinity,
                                height: double.infinity,
                                sTitulo: '',
                                sDateFormat: 'dsa',
                                bVisibleMarker: true,
                                colorLine: FlutterFlowTheme.of(context).primary,
                                intervalAxisX: 1.0,
                                colorLine2: FlutterFlowTheme.of(context).error,
                                numberDate: 12,
                                sListValueXArea: widget!.listValueXString!,
                                sListValueXColuna: widget!.listValueXString!,
                                vListValueYArea: widget!.listValueY!,
                                vListValueYColuna:
                                    widget!.listValueY2Comparated!,
                                isArea: false,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.chartTotaisModel5,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: ChartTotaisWidget(
                              valueAtual: widget!.sumAtual!,
                              valueAnterior: widget!.sumAnt!,
                              titAtual: valueOrDefault<String>(
                                widget!.dateAtual,
                                '--',
                              ),
                              titAnterior: widget!.dateAnt!,
                              percentDifAtual: widget!.percentVariacao!,
                              isCompareted: false,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 45.0,
                  icon: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).error,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    await actions.changeOrientation(
                      false,
                    );
                    await Future.delayed(const Duration(milliseconds: 350));
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
