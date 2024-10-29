import '/backend/api_requests/api_calls.dart';
import '/components/chart_totais_widget.dart';
import '/components/un_view_frame_loading_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/frame_components/un_view_frame_chart_expansive/un_view_frame_chart_expansive_widget.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import 'dart:math';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'un_view_frame_chart_vendas_model.dart';
export 'un_view_frame_chart_vendas_model.dart';

class UnViewFrameChartVendasWidget extends StatefulWidget {
  const UnViewFrameChartVendasWidget({super.key});

  @override
  State<UnViewFrameChartVendasWidget> createState() =>
      _UnViewFrameChartVendasWidgetState();
}

class _UnViewFrameChartVendasWidgetState
    extends State<UnViewFrameChartVendasWidget> with TickerProviderStateMixin {
  late UnViewFrameChartVendasModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameChartVendasModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dateSelection = getCurrentTimestamp;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 300));
      safeSetState(() => _model.apiRequestCompleter1 = null);
      await _model.waitForApiRequestCompleted1(minWait: 1000);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'chartTotaisOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
    context.watch<FFAppState>();

    return Shortcuts(
      shortcuts: {
        SingleActivator(
          LogicalKeyboardKey.f5,
        ): VoidCallbackIntent(() async {
          await Future.wait([
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter1 = null);
              await _model.waitForApiRequestCompleted1();
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter3 = null);
              await _model.waitForApiRequestCompleted3();
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter2 = null);
              await _model.waitForApiRequestCompleted2();
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter1 = null);
              await _model.waitForApiRequestCompleted1();
            }),
          ]);
        }),
      },
      child: Actions(
        actions: {
          VoidCallbackIntent: CallbackAction<VoidCallbackIntent>(
            onInvoke: (intent) => intent.callback(),
          ),
        },
        child: Focus(
          autofocus: isShortcutsSupported,
          focusNode: _model.unViewFrameChartVendasShortcutsFocusNode,
          child: GestureDetector(
              onTap: () => _model
                      .unViewFrameChartVendasShortcutsFocusNode!.canRequestFocus
                  ? FocusScope.of(context).requestFocus(
                      _model.unViewFrameChartVendasShortcutsFocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 370.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0x69636B91),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(-1.0, 0),
                                child: TabBar(
                                  labelColor:
                                      FlutterFlowTheme.of(context).primary,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  unselectedLabelStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  indicatorWeight: 0.5,
                                  padding: EdgeInsets.all(4.0),
                                  tabs: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.ssid_chart_sharp,
                                          ),
                                        ),
                                        Tab(
                                          text: 'Semanal',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.calendar_month_rounded,
                                          ),
                                        ),
                                        Tab(
                                          text: 'Mensal',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.data_thresholding_outlined,
                                          ),
                                        ),
                                        Tab(
                                          text: 'Anual',
                                        ),
                                      ],
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [
                                      () async {
                                        safeSetState(() =>
                                            _model.apiRequestCompleter1 = null);
                                        await _model
                                            .waitForApiRequestCompleted1();
                                      },
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    KeepAliveWidgetWrapper(
                                      builder: (context) =>
                                          FutureBuilder<ApiCallResponse>(
                                        future: (_model.apiRequestCompleter1 ??=
                                                Completer<ApiCallResponse>()
                                                  ..complete(
                                                      VendaDashTotaisCall.call(
                                                    ip: FFAppState()
                                                        .ConfigGlobaisServer
                                                        .host,
                                                    porta: FFAppState()
                                                        .ConfigGlobaisServer
                                                        .porta,
                                                    path: FFAppState()
                                                        .ConfigGlobaisServer
                                                        .path,
                                                    token: FFAppState().Token,
                                                    filterDate:
                                                        '?\$Filter=(DATA ge \'${valueOrDefault<String>(
                                                      dateTimeFormat(
                                                        "MM-dd-yyyy",
                                                        functions
                                                            .listDateSemanal(functions
                                                                .difDateWithInteger(
                                                                    7,
                                                                    _model
                                                                        .datePicked))
                                                            ?.first,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      '10-17-2024',
                                                    )}\' and DATA le \'${valueOrDefault<String>(
                                                      dateTimeFormat(
                                                        "MM-dd-yyyy",
                                                        functions
                                                            .listDateSemanal(
                                                                _model
                                                                    .datePicked)
                                                            ?.last,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      '10-17-2024',
                                                    )}\' )',
                                                  )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: UnViewFrameLoadingWidget(),
                                            );
                                          }
                                          final columnSemanalDesktopVendaDashTotaisResponse =
                                              snapshot.data!;

                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 0.0,
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(),
                                                    child: Stack(
                                                      children: [
                                                        if (VendaDashTotaisCall
                                                                    .valueList(
                                                              columnSemanalDesktopVendaDashTotaisResponse
                                                                  .jsonBody,
                                                            )!
                                                                .length <=
                                                            0)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .unViewFrameVazioModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              updateOnChange:
                                                                  true,
                                                              child:
                                                                  UnViewFrameVazioWidget(
                                                                sTitulo: !columnSemanalDesktopVendaDashTotaisResponse
                                                                        .succeeded
                                                                    ? 'Falha ao realizar conexão'
                                                                    : 'Não existem dados nesse período',
                                                                sMessage: !columnSemanalDesktopVendaDashTotaisResponse
                                                                        .succeeded
                                                                    ? 'Verifique sua conexão e tente novamente!'
                                                                    : 'Verifique seus filtros e tente novamente!',
                                                              ),
                                                            ),
                                                          ),
                                                        if ((VendaDashTotaisCall
                                                                        .valueList(
                                                                  columnSemanalDesktopVendaDashTotaisResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .length >=
                                                                1) &&
                                                            (_model.semanalTypeSelected ==
                                                                'Linha'))
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                child: custom_widgets
                                                                    .DataTimeChartWithAreaComparate(
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  sTitulo: '',
                                                                  sDateFormat:
                                                                      'E',
                                                                  bVisibleMarker:
                                                                      true,
                                                                  colorLine: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  intervalAxisX:
                                                                      1.0,
                                                                  colorLine2:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                  numberDate:
                                                                      30,
                                                                  sListValueX: functions
                                                                      .listDateSemanal(
                                                                          _model
                                                                              .dateSelection)!,
                                                                  vListValueY: functions.listDateSemanalDouble(
                                                                      _model.dateSelection,
                                                                      functions
                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                          )?.toList())
                                                                          ?.toList(),
                                                                      VendaDashTotaisCall.valueY(
                                                                        columnSemanalDesktopVendaDashTotaisResponse
                                                                            .jsonBody,
                                                                      )?.toList())!,
                                                                  sListValueX2:
                                                                      functions.listDateSemanal(
                                                                          _model
                                                                              .dateSelection)!,
                                                                  vListValueY2: functions.listDateSemanalDouble(
                                                                      functions.difDateWithInteger(7, _model.dateSelection),
                                                                      functions
                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                          )?.toList())
                                                                          ?.toList(),
                                                                      VendaDashTotaisCall.valueY(
                                                                        columnSemanalDesktopVendaDashTotaisResponse
                                                                            .jsonBody,
                                                                      )?.toList())!,
                                                                  nameSeries1:
                                                                      'Atual',
                                                                  nameSeries2:
                                                                      'Anterior',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if ((VendaDashTotaisCall
                                                                        .valueList(
                                                                  columnSemanalDesktopVendaDashTotaisResponse
                                                                      .jsonBody,
                                                                )!
                                                                    .length >=
                                                                1) &&
                                                            (_model.semanalTypeSelected ==
                                                                'Valores vs Quantidades'))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        40.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              child: custom_widgets
                                                                  .DataTimeChartWithAreaAndColumns(
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                sTitulo: '',
                                                                sDateFormat:
                                                                    'dsa',
                                                                bVisibleMarker:
                                                                    true,
                                                                colorLine:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                intervalAxisX:
                                                                    1.0,
                                                                colorLine2:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                numberDate: 4,
                                                                sListValueXArea:
                                                                    functions
                                                                        .listDateSemanal(_model
                                                                            .dateSelection)!
                                                                        .map((e) =>
                                                                            dateTimeFormat(
                                                                              "E",
                                                                              e,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ))
                                                                        .toList(),
                                                                sListValueXColuna:
                                                                    functions
                                                                        .listDateSemanal(_model
                                                                            .dateSelection)!
                                                                        .map((e) =>
                                                                            dateTimeFormat(
                                                                              "E",
                                                                              e,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ))
                                                                        .toList(),
                                                                vListValueYArea: functions.listDateSemanalDouble(
                                                                    _model.dateSelection,
                                                                    functions
                                                                        .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                          columnSemanalDesktopVendaDashTotaisResponse
                                                                              .jsonBody,
                                                                        )?.toList())
                                                                        ?.toList(),
                                                                    functions
                                                                        .intToDoubleList(VendaDashTotaisCall.pedido(
                                                                          columnSemanalDesktopVendaDashTotaisResponse
                                                                              .jsonBody,
                                                                        )?.toList())
                                                                        ?.toList())!,
                                                                vListValueYColuna: functions.listDateSemanalDouble(
                                                                    _model.dateSelection,
                                                                    functions
                                                                        .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                          columnSemanalDesktopVendaDashTotaisResponse
                                                                              .jsonBody,
                                                                        )?.toList())
                                                                        ?.toList(),
                                                                    VendaDashTotaisCall.valueY(
                                                                      columnSemanalDesktopVendaDashTotaisResponse
                                                                          .jsonBody,
                                                                    )?.toList())!,
                                                                isArea: false,
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'containerOnPageLoadAnimation']!),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                // datepickermensaldesktop
                                                                final _datePickedDate =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      getCurrentTimestamp,
                                                                  firstDate: (functions.addTimeDouble(
                                                                          -128160.0,
                                                                          getCurrentTimestamp) ??
                                                                      DateTime(
                                                                          1900)),
                                                                  lastDate:
                                                                      DateTime(
                                                                          2050),
                                                                  builder:
                                                                      (context,
                                                                          child) {
                                                                    return wrapInMaterialDatePickerTheme(
                                                                      context,
                                                                      child!,
                                                                      headerBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      headerForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                      headerTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            fontSize:
                                                                                32.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                      pickerBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      pickerForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      selectedDateTimeBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      selectedDateTimeForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                      actionButtonForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      iconSize:
                                                                          24.0,
                                                                    );
                                                                  },
                                                                );

                                                                if (_datePickedDate !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked =
                                                                        DateTime(
                                                                      _datePickedDate
                                                                          .year,
                                                                      _datePickedDate
                                                                          .month,
                                                                      _datePickedDate
                                                                          .day,
                                                                    );
                                                                  });
                                                                }
                                                                if (_model
                                                                        .datePicked !=
                                                                    null) {
                                                                  _model.dateSelection =
                                                                      _model
                                                                          .datePicked;
                                                                  safeSetState(
                                                                      () {});
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter1 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted1();
                                                                }
                                                              },
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 0.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 40.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            7.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x53636B91),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            40.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children:
                                                                          [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.calendar_month,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      AutoSizeText(
                                                                                        _model.datePicked != null
                                                                                            ? dateTimeFormat(
                                                                                                "dd/MM/yyyy EEEE",
                                                                                                _model.datePicked,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )
                                                                                            : dateTimeFormat(
                                                                                                "dd/MM/yyyy EEEE",
                                                                                                getCurrentTimestamp,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                        textAlign: TextAlign.center,
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 1.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w300,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.keyboard_arrow_down,
                                                                                  color: Color(0x800C7FFF),
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        if (responsiveVisibility(
                                                                          context:
                                                                              context,
                                                                          phone:
                                                                              false,
                                                                          tablet:
                                                                              false,
                                                                        ))
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                child: FlutterFlowChoiceChips(
                                                                                  options: [
                                                                                    ChipData('Linha'),
                                                                                    ChipData('Valores vs Quantidades')
                                                                                  ],
                                                                                  onChanged: (val) async {
                                                                                    safeSetState(() => _model.ccTypeChartSemanalValue = val?.firstOrNull);
                                                                                    _model.semanalTypeSelected = _model.ccTypeChartSemanalValue!;
                                                                                    safeSetState(() {});
                                                                                    safeSetState(() => _model.apiRequestCompleter1 = null);
                                                                                    await _model.waitForApiRequestCompleted1();
                                                                                  },
                                                                                  selectedChipStyle: ChipStyle(
                                                                                    backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    iconColor: FlutterFlowTheme.of(context).primary,
                                                                                    iconSize: 12.0,
                                                                                    elevation: 1.0,
                                                                                    borderColor: Color(0x2357636C),
                                                                                    borderRadius: BorderRadius.circular(350.0),
                                                                                  ),
                                                                                  unselectedChipStyle: ChipStyle(
                                                                                    backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                    iconSize: 12.0,
                                                                                    elevation: 0.0,
                                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                                  ),
                                                                                  chipSpacing: 8.0,
                                                                                  rowSpacing: 8.0,
                                                                                  multiselect: false,
                                                                                  initialized: _model.ccTypeChartSemanalValue != null,
                                                                                  alignment: WrapAlignment.start,
                                                                                  controller: _model.ccTypeChartSemanalValueController ??= FormFieldController<List<String>>(
                                                                                    [
                                                                                      'Linha'
                                                                                    ],
                                                                                  ),
                                                                                  wrapped: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (responsiveVisibility(
                                                                          context:
                                                                              context,
                                                                          tabletLandscape:
                                                                              false,
                                                                          desktop:
                                                                              false,
                                                                        ))
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.dpdMobileTypeSemanalValueController ??= FormFieldController<String>(
                                                                                  _model.dpdMobileTypeSemanalValue ??= _model.semanalTypeSelected,
                                                                                ),
                                                                                options: [
                                                                                  'Linha',
                                                                                  'Valores vs Quantidades'
                                                                                ],
                                                                                onChanged: (val) async {
                                                                                  safeSetState(() => _model.dpdMobileTypeSemanalValue = val);
                                                                                  _model.semanalTypeSelected = _model.dpdMobileTypeSemanalValue!;
                                                                                  safeSetState(() {});
                                                                                  safeSetState(() => _model.apiRequestCompleter1 = null);
                                                                                  await _model.waitForApiRequestCompleted1();
                                                                                },
                                                                                width: 100.0,
                                                                                height: 30.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w300,
                                                                                    ),
                                                                                searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w300,
                                                                                    ),
                                                                                searchHintText: 'Procurar',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 20.0,
                                                                                ),
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                elevation: 2.0,
                                                                                borderColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                borderWidth: 0.0,
                                                                                borderRadius: 300.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: true,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                      ].divide(SizedBox(width: 5.0)).addToStart(
                                                                              SizedBox(width: 7.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (VendaDashTotaisCall
                                                                    .valueList(
                                                              columnSemanalDesktopVendaDashTotaisResponse
                                                                  .jsonBody,
                                                            )!
                                                                .length >=
                                                            1)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, -1.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) =>
                                                                      Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            3.0,
                                                                            3.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      7.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      35.0,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .zoom_out_map_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 20.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    await showDialog(
                                                                      barrierDismissible:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.9,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.9,
                                                                            child:
                                                                                UnViewFrameChartExpansiveWidget(
                                                                              sTitulo: '',
                                                                              listValueX: functions.listDateSemanal(_model.dateSelection),
                                                                              listValueY: _model.semanalTypeSelected == 'Linha'
                                                                                  ? functions.listDateSemanalDouble(
                                                                                      _model.dateSelection,
                                                                                      functions
                                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                          )?.toList())
                                                                                          ?.toList(),
                                                                                      VendaDashTotaisCall.valueY(
                                                                                        columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                      )?.toList())!
                                                                                  : functions.listDateSemanalDouble(
                                                                                      _model.dateSelection,
                                                                                      functions
                                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                          )?.toList())
                                                                                          ?.toList(),
                                                                                      functions
                                                                                          .intToDoubleList(VendaDashTotaisCall.pedido(
                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                          )?.toList())
                                                                                          ?.toList())!,
                                                                              interval: 1.0,
                                                                              iDatesGen: 7,
                                                                              iTipoChart: _model.semanalTypeSelected == 'Linha' ? 2 : 6,
                                                                              listValueY2Comparated: _model.semanalTypeSelected == 'Linha'
                                                                                  ? functions.listDateSemanalDouble(
                                                                                      functions.difDateWithInteger(7, _model.dateSelection),
                                                                                      functions
                                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                          )?.toList())
                                                                                          ?.toList(),
                                                                                      VendaDashTotaisCall.valueY(
                                                                                        columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                      )?.toList())
                                                                                  : functions.listDateSemanalDouble(
                                                                                      _model.dateSelection,
                                                                                      functions
                                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                          )?.toList())
                                                                                          ?.toList(),
                                                                                      VendaDashTotaisCall.valueY(
                                                                                        columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                      )?.toList()),
                                                                              sDateFormat: 'E',
                                                                              dateAnt: _model.semanalTypeSelected == 'Linha'
                                                                                  ? valueOrDefault<String>(
                                                                                      '${dateTimeFormat(
                                                                                        "dd/MM",
                                                                                        functions.listDateSemanal(functions.difDateWithInteger(7, _model.dateSelection))?.first,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )} - ${dateTimeFormat(
                                                                                        "dd/MM",
                                                                                        functions.listDateSemanal(functions.difDateWithInteger(7, _model.datePicked))?.last,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )}',
                                                                                      '0',
                                                                                    )
                                                                                  : 'Quantidade',
                                                                              dateAtual: _model.semanalTypeSelected == 'Linha'
                                                                                  ? valueOrDefault<String>(
                                                                                      '${dateTimeFormat(
                                                                                        "dd/MM",
                                                                                        functions.listDateSemanal(_model.dateSelection)?.first,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )} - ${dateTimeFormat(
                                                                                        "dd/MM",
                                                                                        functions.listDateSemanal(_model.dateSelection)?.last,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )}',
                                                                                      '0',
                                                                                    )
                                                                                  : 'Valores',
                                                                              sumAnt: _model.semanalTypeSelected == 'Linha'
                                                                                  ? functions.realFormat(valueOrDefault<String>(
                                                                                      functions
                                                                                          .sumListDouble(functions
                                                                                              .listDateSemanalDouble(
                                                                                                  functions.difDateWithInteger(7, _model.dateSelection),
                                                                                                  functions
                                                                                                      .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                        columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                      )?.toList())
                                                                                                      ?.toList(),
                                                                                                  VendaDashTotaisCall.valueY(
                                                                                                    columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                  )?.toList())
                                                                                              ?.toList())
                                                                                          .toString(),
                                                                                      '0',
                                                                                    ))
                                                                                  : functions
                                                                                      .doubleToInt(valueOrDefault<double>(
                                                                                        functions.sumListDouble(functions
                                                                                            .listDateSemanalDouble(
                                                                                                _model.dateSelection,
                                                                                                functions
                                                                                                    .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                      columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                    )?.toList())
                                                                                                    ?.toList(),
                                                                                                functions
                                                                                                    .intToDoubleList(VendaDashTotaisCall.pedido(
                                                                                                      columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                    )?.toList())
                                                                                                    ?.toList())
                                                                                            ?.toList()),
                                                                                        0.0,
                                                                                      ))
                                                                                      .toString(),
                                                                              sumAtual: functions.realFormat(valueOrDefault<String>(
                                                                                functions
                                                                                    .sumListDouble(functions
                                                                                        .listDateSemanalDouble(
                                                                                            _model.dateSelection,
                                                                                            functions
                                                                                                .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                  columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                )?.toList())
                                                                                                ?.toList(),
                                                                                            VendaDashTotaisCall.valueY(
                                                                                              columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                            )?.toList())
                                                                                        ?.toList())
                                                                                    .toString(),
                                                                                '0',
                                                                              )),
                                                                              percentVariacao: valueOrDefault<double>(
                                                                                ((valueOrDefault<double>(
                                                                                              functions.sumListDouble(functions
                                                                                                  .listDateSemanalDouble(
                                                                                                      _model.dateSelection,
                                                                                                      functions
                                                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                          )?.toList())
                                                                                                          ?.toList(),
                                                                                                      VendaDashTotaisCall.valueY(
                                                                                                        columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                      )?.toList())
                                                                                                  ?.toList()),
                                                                                              0.0,
                                                                                            ) /
                                                                                            valueOrDefault<double>(
                                                                                              functions.sumListDouble(functions
                                                                                                  .listDateSemanalDouble(
                                                                                                      functions.difDateWithInteger(7, _model.dateSelection),
                                                                                                      functions
                                                                                                          .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                            columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                          )?.toList())
                                                                                                          ?.toList(),
                                                                                                      VendaDashTotaisCall.valueY(
                                                                                                        columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                                      )?.toList())
                                                                                                  ?.toList()),
                                                                                              0.0,
                                                                                            )) *
                                                                                        100) -
                                                                                    100,
                                                                                0.0,
                                                                              ),
                                                                              listValueXString: functions
                                                                                  .listDateSemanal(_model.dateSelection)
                                                                                  ?.map((e) => dateTimeFormat(
                                                                                        "E",
                                                                                        e,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      ))
                                                                                  .toList(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                height: 3.0,
                                                thickness: 0.5,
                                                indent: 20.0,
                                                endIndent: 20.0,
                                                color: Color(0x82636B91),
                                              ),
                                              if (VendaDashTotaisCall.valueList(
                                                    columnSemanalDesktopVendaDashTotaisResponse
                                                        .jsonBody,
                                                  )!
                                                      .length >=
                                                  1)
                                                wrapWithModel(
                                                  model:
                                                      _model.chartTotaisModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ChartTotaisWidget(
                                                    valueAtual:
                                                        valueOrDefault<String>(
                                                      functions.realFormat(
                                                          valueOrDefault<
                                                              String>(
                                                        functions
                                                            .sumListDouble(functions
                                                                .listDateSemanalDouble(
                                                                    functions.difDateWithInteger(0, _model.dateSelection),
                                                                    functions
                                                                        .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                          columnSemanalDesktopVendaDashTotaisResponse
                                                                              .jsonBody,
                                                                        )?.toList())
                                                                        ?.toList(),
                                                                    VendaDashTotaisCall.valueY(
                                                                      columnSemanalDesktopVendaDashTotaisResponse
                                                                          .jsonBody,
                                                                    )?.toList())
                                                                ?.toList())
                                                            ?.toString(),
                                                        '0',
                                                      )),
                                                      '0',
                                                    ),
                                                    valueAnterior:
                                                        valueOrDefault<String>(
                                                      _model.semanalTypeSelected ==
                                                              'Linha'
                                                          ? valueOrDefault<
                                                              String>(
                                                              functions.realFormat(
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .sumListDouble(functions
                                                                        .listDateSemanalDouble(
                                                                            functions.difDateWithInteger(7, _model.dateSelection),
                                                                            functions
                                                                                .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                  columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                )?.toList())
                                                                                ?.toList(),
                                                                            VendaDashTotaisCall.valueY(
                                                                              columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                            )?.toList())
                                                                        ?.toList())
                                                                    ?.toString(),
                                                                '0',
                                                              )),
                                                              '0',
                                                            )
                                                          : valueOrDefault<
                                                              String>(
                                                              functions
                                                                  .doubleToInt(
                                                                      valueOrDefault<
                                                                          double>(
                                                                    functions.sumListDouble(functions
                                                                        .listDateSemanalDouble(
                                                                            _model.dateSelection,
                                                                            functions
                                                                                .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                  columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                )?.toList())
                                                                                ?.toList(),
                                                                            functions
                                                                                .intToDoubleList(VendaDashTotaisCall.pedido(
                                                                                  columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                )?.toList())
                                                                                ?.toList())
                                                                        ?.toList()),
                                                                    0.0,
                                                                  ))
                                                                  ?.toString(),
                                                              '0',
                                                            ),
                                                      '0',
                                                    ),
                                                    titAtual:
                                                        valueOrDefault<String>(
                                                      _model.semanalTypeSelected ==
                                                              'Linha'
                                                          ? valueOrDefault<
                                                              String>(
                                                              '${valueOrDefault<String>(
                                                                dateTimeFormat(
                                                                  "dd/MM",
                                                                  functions
                                                                      .listDateSemanal(
                                                                          _model
                                                                              .dateSelection)
                                                                      ?.first,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                '0',
                                                              )} - ${valueOrDefault<String>(
                                                                dateTimeFormat(
                                                                  "dd/MM",
                                                                  functions
                                                                      .listDateSemanal(
                                                                          _model
                                                                              .dateSelection)
                                                                      ?.last,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                '0',
                                                              )}',
                                                              '0',
                                                            )
                                                          : 'Valores',
                                                      '0',
                                                    ),
                                                    titAnterior:
                                                        valueOrDefault<String>(
                                                      _model.semanalTypeSelected ==
                                                              'Linha'
                                                          ? valueOrDefault<
                                                              String>(
                                                              '${valueOrDefault<String>(
                                                                dateTimeFormat(
                                                                  "dd/MM",
                                                                  functions
                                                                      .listDateSemanal(
                                                                          functions.difDateWithInteger(
                                                                              7,
                                                                              _model.dateSelection))
                                                                      ?.first,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                '0',
                                                              )} - ${valueOrDefault<String>(
                                                                dateTimeFormat(
                                                                  "dd/MM",
                                                                  functions
                                                                      .listDateSemanal(
                                                                          functions.difDateWithInteger(
                                                                              7,
                                                                              _model.dateSelection))
                                                                      ?.last,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                '0',
                                                              )}',
                                                              '0',
                                                            )
                                                          : 'Quantidade',
                                                      '0',
                                                    ),
                                                    percentDifAtual:
                                                        valueOrDefault<double>(
                                                      ((valueOrDefault<double>(
                                                                    functions.sumListDouble(functions
                                                                        .listDateSemanalDouble(
                                                                            _model.dateSelection,
                                                                            functions
                                                                                .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                  columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                )?.toList())
                                                                                ?.toList(),
                                                                            VendaDashTotaisCall.valueY(
                                                                              columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                            )?.toList())
                                                                        ?.toList()),
                                                                    0.0,
                                                                  ) /
                                                                  valueOrDefault<
                                                                      double>(
                                                                    functions.sumListDouble(functions
                                                                        .listDateSemanalDouble(
                                                                            functions.difDateWithInteger(7, _model.dateSelection),
                                                                            functions
                                                                                .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                  columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                                )?.toList())
                                                                                ?.toList(),
                                                                            VendaDashTotaisCall.valueY(
                                                                              columnSemanalDesktopVendaDashTotaisResponse.jsonBody,
                                                                            )?.toList())
                                                                        ?.toList()),
                                                                    0.0,
                                                                  )) *
                                                              100) -
                                                          100,
                                                      0.0,
                                                    ),
                                                    isCompareted: _model
                                                            .semanalTypeSelected !=
                                                        'Valores vs Quantidades',
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'chartTotaisOnPageLoadAnimation']!),
                                            ]
                                                .addToStart(
                                                    SizedBox(height: 5.0))
                                                .addToEnd(
                                                    SizedBox(height: 5.0)),
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation']!);
                                        },
                                      ),
                                    ),
                                    KeepAliveWidgetWrapper(
                                      builder: (context) => Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 0.0,
                                              child: Container(
                                                width: double.infinity,
                                                height: 100.0,
                                                decoration: BoxDecoration(),
                                                child: Stack(
                                                  children: [
                                                    if (_model
                                                            .ccMensalDiaSemanaValue ==
                                                        'Semana')
                                                      FutureBuilder<
                                                          ApiCallResponse>(
                                                        future: (_model
                                                                    .apiRequestCompleter3 ??=
                                                                Completer<
                                                                    ApiCallResponse>()
                                                                  ..complete(
                                                                      VendaDashMesSemanaCall
                                                                          .call(
                                                                    ip: FFAppState()
                                                                        .ConfigGlobaisServer
                                                                        .host,
                                                                    porta: FFAppState()
                                                                        .ConfigGlobaisServer
                                                                        .porta,
                                                                    path: FFAppState()
                                                                        .ConfigGlobaisServer
                                                                        .path,
                                                                    token: FFAppState()
                                                                        .Token,
                                                                    filterDate:
                                                                        '?\$Filter=((ANO eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "yyyy",
                                                                        functions.mMMMToDateTime(
                                                                            _model.dpdMensalMesDesktopValue,
                                                                            _model.dpdMensalAnoDesktopValue),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '2024',
                                                                    )}) and (MES eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "M",
                                                                        functions.mMMMToDateTime(
                                                                            _model.dpdMensalMesDesktopValue,
                                                                            _model.dpdMensalAnoDesktopValue),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '08',
                                                                    )})) or ((ANO eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "yyyy",
                                                                        functions.difDateWithMonth(
                                                                            1,
                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue,
                                                                                _model.dpdMensalAnoDesktopValue)),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '2024',
                                                                    )}) and (MES eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "M",
                                                                        functions.difDateWithMonth(
                                                                            1,
                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue,
                                                                                _model.dpdMensalAnoDesktopValue)),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '09',
                                                                    )}))',
                                                                  )))
                                                            .future,
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child:
                                                                  UnViewFrameLoadingWidget(),
                                                            );
                                                          }
                                                          final containerMensalSemanaDesktopVendaDashMesSemanaResponse =
                                                              snapshot.data!;

                                                          return Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (_model
                                                                            .mensalTypeSelected ==
                                                                        'Linha')
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              35.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                400.0,
                                                                            child:
                                                                                custom_widgets.DataTimeChartWithAreaComparateString(
                                                                              width: double.infinity,
                                                                              height: 400.0,
                                                                              sTitulo: '',
                                                                              sDateFormat: 'DDS',
                                                                              bVisibleMarker: true,
                                                                              colorLine: FlutterFlowTheme.of(context).primary,
                                                                              intervalAxisX: 1.0,
                                                                              colorLine2: FlutterFlowTheme.of(context).error,
                                                                              numberDate: 4,
                                                                              nameSeries1: 'Atual',
                                                                              nameSeries2: 'Anterior',
                                                                              sListValueX: functions.listDateSemanaAgrupado(getCurrentTimestamp)!,
                                                                              vListValueY: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesSemanaCall.mes(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 0
                                                                                      : 1,
                                                                                  'SEMANA')!,
                                                                              sListValueX2: functions.listDateSemanaAgrupado(getCurrentTimestamp)!,
                                                                              vListValueY2: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesSemanaCall.mes(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 1
                                                                                      : 0,
                                                                                  'SEMANA')!,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .mensalTypeSelected ==
                                                                        'Coluna')
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              35.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            child:
                                                                                custom_widgets.DataTimeChartWithColumnComparate(
                                                                              width: double.infinity,
                                                                              height: double.infinity,
                                                                              sTitulo: '',
                                                                              sDateFormat: 'sad',
                                                                              bVisibleMarker: false,
                                                                              colorLine: FlutterFlowTheme.of(context).primary,
                                                                              intervalAxisX: 1.0,
                                                                              colorLine2: FlutterFlowTheme.of(context).error,
                                                                              numberDate: 12,
                                                                              nameSeries1: 'Atual',
                                                                              nameSeries2: 'Anterior',
                                                                              sListValueX: functions.listDateSemanaAgrupado(getCurrentTimestamp)!,
                                                                              vListValueY: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesSemanaCall.mes(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 0
                                                                                      : 1,
                                                                                  'SEMANA')!,
                                                                              sListValueX2: functions.listDateSemanaAgrupado(getCurrentTimestamp)!,
                                                                              vListValueY2: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesSemanaCall.mes(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 1
                                                                                      : 0,
                                                                                  'SEMANA')!,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .mensalTypeSelected ==
                                                                        'Valores vs Quantidades')
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              35.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            child:
                                                                                custom_widgets.DataTimeChartWithAreaAndColumns(
                                                                              width: double.infinity,
                                                                              height: double.infinity,
                                                                              sTitulo: '',
                                                                              sDateFormat: 'dsa',
                                                                              bVisibleMarker: true,
                                                                              colorLine: FlutterFlowTheme.of(context).primary,
                                                                              intervalAxisX: 1.0,
                                                                              colorLine2: FlutterFlowTheme.of(context).error,
                                                                              numberDate: 4,
                                                                              sListValueXArea: functions.listDateSemanaAgrupado(getCurrentTimestamp)!,
                                                                              sListValueXColuna: functions.listDateSemanaAgrupado(getCurrentTimestamp)!,
                                                                              vListValueYArea: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesSemanaCall.mes(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 0
                                                                                      : 1,
                                                                                  'NUMSEMANA')!,
                                                                              vListValueYColuna: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesSemanaCall.mes(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 0
                                                                                      : 1,
                                                                                  'SEMANA')!,
                                                                              isArea: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Divider(
                                                                      height:
                                                                          3.0,
                                                                      thickness:
                                                                          0.5,
                                                                      indent:
                                                                          20.0,
                                                                      endIndent:
                                                                          20.0,
                                                                      color: Color(
                                                                          0x82636B91),
                                                                    ),
                                                                    wrapWithModel(
                                                                      model: _model
                                                                          .chartTotaisModel2,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      child:
                                                                          ChartTotaisWidget(
                                                                        valueAtual:
                                                                            valueOrDefault<String>(
                                                                          functions.realFormat(_model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                              ? valueOrDefault<String>(
                                                                                  functions
                                                                                      .sumListDouble(functions
                                                                                          .listFromJsonDouble(
                                                                                              getJsonField(
                                                                                                containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              dateTimeFormat(
                                                                                                        "M",
                                                                                                        functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ) ==
                                                                                                      VendaDashMesSemanaCall.mes(
                                                                                                        containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                      )?.first?.toString()
                                                                                                  ? 0
                                                                                                  : 1,
                                                                                              'TOTAL')
                                                                                          ?.toList())
                                                                                      ?.toString(),
                                                                                  '0',
                                                                                )
                                                                              : valueOrDefault<String>(
                                                                                  functions
                                                                                      .sumListDouble(functions
                                                                                          .listFromJsonDouble(
                                                                                              getJsonField(
                                                                                                containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              dateTimeFormat(
                                                                                                        "M",
                                                                                                        functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ) ==
                                                                                                      VendaDashMesSemanaCall.mes(
                                                                                                        containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                      )?.first?.toString()
                                                                                                  ? 0
                                                                                                  : 1,
                                                                                              'TOTAL')
                                                                                          ?.toList())
                                                                                      ?.toString(),
                                                                                  '0',
                                                                                )),
                                                                          '0',
                                                                        ),
                                                                        valueAnterior: _model.mensalTypeSelected ==
                                                                                'Valores vs Quantidades'
                                                                            ? functions
                                                                                .doubleToInt(valueOrDefault<double>(
                                                                                  functions.sumListDouble(functions
                                                                                      .listFromJsonDouble(
                                                                                          getJsonField(
                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                            r'''$..value''',
                                                                                          ),
                                                                                          dateTimeFormat(
                                                                                                    "M",
                                                                                                    functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ) ==
                                                                                                  VendaDashMesSemanaCall.mes(
                                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                  )?.first?.toString()
                                                                                              ? 0
                                                                                              : 1,
                                                                                          'NUMERO')
                                                                                      ?.toList()),
                                                                                  0.0,
                                                                                ))
                                                                                .toString()
                                                                            : valueOrDefault<String>(
                                                                                functions.realFormat(valueOrDefault<String>(
                                                                                  functions
                                                                                      .sumListDouble(functions
                                                                                          .listFromJsonDouble(
                                                                                              getJsonField(
                                                                                                containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              dateTimeFormat(
                                                                                                        "M",
                                                                                                        functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ) ==
                                                                                                      VendaDashMesSemanaCall.mes(
                                                                                                        containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                      )?.first?.toString()
                                                                                                  ? 1
                                                                                                  : 0,
                                                                                              'TOTAL')
                                                                                          ?.toList())
                                                                                      ?.toString(),
                                                                                  '0',
                                                                                )),
                                                                                '0',
                                                                              ),
                                                                        titAtual: _model.mensalTypeSelected ==
                                                                                'Valores vs Quantidades'
                                                                            ? 'Valores'
                                                                            : dateTimeFormat(
                                                                                "MMMM",
                                                                                functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                        titAnterior: _model.mensalTypeSelected ==
                                                                                'Valores vs Quantidades'
                                                                            ? 'Quantidade'
                                                                            : dateTimeFormat(
                                                                                "MMMM",
                                                                                functions.difDateWithMonth(1, functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue)),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                        percentDifAtual:
                                                                            valueOrDefault<double>(
                                                                          ((valueOrDefault<double>(
                                                                                        functions.sumListDouble(functions
                                                                                            .listFromJsonDouble(
                                                                                                getJsonField(
                                                                                                  containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                dateTimeFormat(
                                                                                                          "M",
                                                                                                          functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                        ) ==
                                                                                                        VendaDashMesSemanaCall.mes(
                                                                                                          containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                        )?.first?.toString()
                                                                                                    ? 0
                                                                                                    : 1,
                                                                                                'SEMANA')
                                                                                            ?.toList()),
                                                                                        0.0,
                                                                                      ) /
                                                                                      valueOrDefault<double>(
                                                                                        functions.sumListDouble(functions
                                                                                            .listFromJsonDouble(
                                                                                                getJsonField(
                                                                                                  containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                dateTimeFormat(
                                                                                                          "M",
                                                                                                          functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                        ) ==
                                                                                                        VendaDashMesSemanaCall.mes(
                                                                                                          containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                        )?.first?.toString()
                                                                                                    ? 1
                                                                                                    : 0,
                                                                                                'SEMANA')
                                                                                            ?.toList()),
                                                                                        0.0,
                                                                                      )) *
                                                                                  100) -
                                                                              100,
                                                                          0.0,
                                                                        ),
                                                                        isCompareted:
                                                                            _model.mensalTypeSelected !=
                                                                                'Valores vs Quantidades',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          3.0,
                                                                          3.0,
                                                                          0.0),
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            7.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .zoom_out_map_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: Container(
                                                                                  height: MediaQuery.sizeOf(context).height * 0.9,
                                                                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                                                                  child: UnViewFrameChartExpansiveWidget(
                                                                                    sTitulo: '',
                                                                                    listValueY: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesSemanaCall.mes(
                                                                                                      containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 0
                                                                                                : 1,
                                                                                            'NUMSEMANA')!
                                                                                        : functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesSemanaCall.mes(
                                                                                                      containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 0
                                                                                                : 1,
                                                                                            'SEMANA')!,
                                                                                    interval: 1.0,
                                                                                    iDatesGen: 30,
                                                                                    iTipoChart: () {
                                                                                      if (_model.mensalTypeSelected == 'Linha') {
                                                                                        return 3;
                                                                                      } else if (_model.mensalTypeSelected == 'Valores vs Quantidades') {
                                                                                        return 6;
                                                                                      } else {
                                                                                        return 5;
                                                                                      }
                                                                                    }(),
                                                                                    listValueY2Comparated: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesSemanaCall.mes(
                                                                                                      containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 0
                                                                                                : 1,
                                                                                            'SEMANA')
                                                                                        : functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesSemanaCall.mes(
                                                                                                      containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 1
                                                                                                : 0,
                                                                                            'SEMANA'),
                                                                                    sDateFormat: 'dd',
                                                                                    dateAnt: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? 'Quantidade'
                                                                                        : dateTimeFormat(
                                                                                            "MMMM",
                                                                                            functions.difDateWithMonth(1, functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue)),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                    dateAtual: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? 'Valores'
                                                                                        : dateTimeFormat(
                                                                                            "MMMM",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                    sumAnt: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? functions
                                                                                            .doubleToInt(valueOrDefault<double>(
                                                                                              functions.sumListDouble(functions
                                                                                                  .listFromJsonDouble(
                                                                                                      getJsonField(
                                                                                                        containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                        r'''$..value''',
                                                                                                      ),
                                                                                                      dateTimeFormat(
                                                                                                                "M",
                                                                                                                functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              ) ==
                                                                                                              VendaDashMesSemanaCall.mes(
                                                                                                                containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                              )?.first?.toString()
                                                                                                          ? 0
                                                                                                          : 1,
                                                                                                      'NUMERO')
                                                                                                  ?.toList()),
                                                                                              0.0,
                                                                                            ))
                                                                                            .toString()
                                                                                        : valueOrDefault<String>(
                                                                                            functions.realFormat(valueOrDefault<String>(
                                                                                              functions
                                                                                                  .sumListDouble(functions
                                                                                                      .listFromJsonDouble(
                                                                                                          getJsonField(
                                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                            r'''$..value''',
                                                                                                          ),
                                                                                                          dateTimeFormat(
                                                                                                                    "M",
                                                                                                                    functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                  ) ==
                                                                                                                  VendaDashMesSemanaCall.mes(
                                                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                                  )?.first?.toString()
                                                                                                              ? 1
                                                                                                              : 0,
                                                                                                          'TOTAL')
                                                                                                      ?.toList())
                                                                                                  ?.toString(),
                                                                                              '0',
                                                                                            )),
                                                                                            '0',
                                                                                          ),
                                                                                    sumAtual: valueOrDefault<String>(
                                                                                      functions.realFormat(_model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                          ? valueOrDefault<String>(
                                                                                              functions
                                                                                                  .sumListDouble(functions
                                                                                                      .listFromJsonDouble(
                                                                                                          getJsonField(
                                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                            r'''$..value''',
                                                                                                          ),
                                                                                                          dateTimeFormat(
                                                                                                                    "M",
                                                                                                                    functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                  ) ==
                                                                                                                  VendaDashMesSemanaCall.mes(
                                                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                                  )?.first?.toString()
                                                                                                              ? 0
                                                                                                              : 1,
                                                                                                          'TOTAL')
                                                                                                      ?.toList())
                                                                                                  ?.toString(),
                                                                                              '0',
                                                                                            )
                                                                                          : valueOrDefault<String>(
                                                                                              functions
                                                                                                  .sumListDouble(functions
                                                                                                      .listFromJsonDouble(
                                                                                                          getJsonField(
                                                                                                            containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                            r'''$..value''',
                                                                                                          ),
                                                                                                          dateTimeFormat(
                                                                                                                    "M",
                                                                                                                    functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                  ) ==
                                                                                                                  VendaDashMesSemanaCall.mes(
                                                                                                                    containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                                  )?.first?.toString()
                                                                                                              ? 0
                                                                                                              : 1,
                                                                                                          'TOTAL')
                                                                                                      ?.toList())
                                                                                                  ?.toString(),
                                                                                              '0',
                                                                                            )),
                                                                                      '0',
                                                                                    ),
                                                                                    percentVariacao: valueOrDefault<double>(
                                                                                      ((valueOrDefault<double>(
                                                                                                    functions.sumListDouble(functions
                                                                                                        .listFromJsonDouble(
                                                                                                            getJsonField(
                                                                                                              containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                              r'''$..value''',
                                                                                                            ),
                                                                                                            dateTimeFormat(
                                                                                                                      "M",
                                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ) ==
                                                                                                                    VendaDashMesSemanaCall.mes(
                                                                                                                      containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                                    )?.first?.toString()
                                                                                                                ? 0
                                                                                                                : 1,
                                                                                                            'SEMANA')
                                                                                                        ?.toList()),
                                                                                                    0.0,
                                                                                                  ) /
                                                                                                  valueOrDefault<double>(
                                                                                                    functions.sumListDouble(functions
                                                                                                        .listFromJsonDouble(
                                                                                                            getJsonField(
                                                                                                              containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                              r'''$..value''',
                                                                                                            ),
                                                                                                            dateTimeFormat(
                                                                                                                      "M",
                                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ) ==
                                                                                                                    VendaDashMesSemanaCall.mes(
                                                                                                                      containerMensalSemanaDesktopVendaDashMesSemanaResponse.jsonBody,
                                                                                                                    )?.first?.toString()
                                                                                                                ? 1
                                                                                                                : 0,
                                                                                                            'SEMANA')
                                                                                                        ?.toList()),
                                                                                                    0.0,
                                                                                                  )) *
                                                                                              100) -
                                                                                          100,
                                                                                      0.0,
                                                                                    ),
                                                                                    listValueXString: functions.listDateSemanaAgrupado(getCurrentTimestamp),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    if (_model
                                                            .ccMensalDiaSemanaValue ==
                                                        'Dia')
                                                      FutureBuilder<
                                                          ApiCallResponse>(
                                                        future: (_model
                                                                    .apiRequestCompleter2 ??=
                                                                Completer<
                                                                    ApiCallResponse>()
                                                                  ..complete(
                                                                      VendaDashMesDiaCall
                                                                          .call(
                                                                    ip: FFAppState()
                                                                        .ConfigGlobaisServer
                                                                        .host,
                                                                    porta: FFAppState()
                                                                        .ConfigGlobaisServer
                                                                        .porta,
                                                                    path: FFAppState()
                                                                        .ConfigGlobaisServer
                                                                        .path,
                                                                    token: FFAppState()
                                                                        .Token,
                                                                    filterDate:
                                                                        '?\$Filter=((ANO eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "yyyy",
                                                                        functions.mMMMToDateTime(
                                                                            _model.dpdMensalMesDesktopValue,
                                                                            _model.dpdMensalAnoDesktopValue),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '2024',
                                                                    )}) and (MES eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "M",
                                                                        functions.mMMMToDateTime(
                                                                            _model.dpdMensalMesDesktopValue,
                                                                            _model.dpdMensalAnoDesktopValue),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '08',
                                                                    )})) or ((ANO eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "yyyy",
                                                                        functions.difDateWithMonth(
                                                                            1,
                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue,
                                                                                _model.dpdMensalAnoDesktopValue)),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '2024',
                                                                    )}) and (MES eq ${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                        "M",
                                                                        functions.difDateWithMonth(
                                                                            1,
                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue,
                                                                                _model.dpdMensalAnoDesktopValue)),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      '09',
                                                                    )}))',
                                                                  )))
                                                            .future,
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child:
                                                                  UnViewFrameLoadingWidget(),
                                                            );
                                                          }
                                                          final containerMensalDiaDesktopVendaDashMesDiaResponse =
                                                              snapshot.data!;

                                                          return Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (_model
                                                                            .mensalTypeSelected ==
                                                                        'Linha')
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              35.0,
                                                                              0.0,
                                                                              20.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            child:
                                                                                custom_widgets.DataTimeChartWithAreaComparateString(
                                                                              width: double.infinity,
                                                                              height: double.infinity,
                                                                              sTitulo: '',
                                                                              sDateFormat: 'sad',
                                                                              bVisibleMarker: true,
                                                                              colorLine: FlutterFlowTheme.of(context).primary,
                                                                              intervalAxisX: 1.0,
                                                                              colorLine2: FlutterFlowTheme.of(context).error,
                                                                              numberDate: 31,
                                                                              nameSeries1: 'Atual',
                                                                              nameSeries2: 'Anterior',
                                                                              sListValueX: functions.geraDias(31)!,
                                                                              vListValueY: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesDiaCall.mes(
                                                                                            containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 0
                                                                                      : 1,
                                                                                  'DIA')!,
                                                                              vListValueY2: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  dateTimeFormat(
                                                                                            "M",
                                                                                            functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ) ==
                                                                                          VendaDashMesDiaCall.mes(
                                                                                            containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                          )?.first?.toString()
                                                                                      ? 1
                                                                                      : 0,
                                                                                  'DIA')!,
                                                                              sListValueX2: functions.geraDias(31)!,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .mensalTypeSelected ==
                                                                        'Coluna')
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              35.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text(dateTimeFormat(
                                                                                      "M",
                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    )),
                                                                                    content: Text((VendaDashMesDiaCall.mes(
                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                    )![0])
                                                                                        .toString()),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              height: double.infinity,
                                                                              child: custom_widgets.DataTimeChartWithColumnComparate(
                                                                                width: double.infinity,
                                                                                height: double.infinity,
                                                                                sTitulo: '',
                                                                                sDateFormat: 'sad',
                                                                                bVisibleMarker: false,
                                                                                colorLine: FlutterFlowTheme.of(context).primary,
                                                                                intervalAxisX: 1.0,
                                                                                colorLine2: FlutterFlowTheme.of(context).error,
                                                                                numberDate: 12,
                                                                                nameSeries1: 'Atual',
                                                                                nameSeries2: 'Anterior',
                                                                                sListValueX: functions.geraDias(31)!,
                                                                                vListValueY: functions.listFromJsonDouble(
                                                                                    getJsonField(
                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                      r'''$..value''',
                                                                                    ),
                                                                                    dateTimeFormat(
                                                                                              "M",
                                                                                              functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            ) ==
                                                                                            VendaDashMesDiaCall.mes(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                            )?.first?.toString()
                                                                                        ? 0
                                                                                        : 1,
                                                                                    'DIA')!,
                                                                                sListValueX2: functions.geraDias(31)!,
                                                                                vListValueY2: functions.listFromJsonDouble(
                                                                                    getJsonField(
                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                      r'''$..value''',
                                                                                    ),
                                                                                    dateTimeFormat(
                                                                                              "M",
                                                                                              functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            ) ==
                                                                                            VendaDashMesDiaCall.mes(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                            )?.first?.toString()
                                                                                        ? 1
                                                                                        : 0,
                                                                                    'DIA')!,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .mensalTypeSelected ==
                                                                        'Valores vs Quantidades')
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              35.0,
                                                                              10.0,
                                                                              20.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            child:
                                                                                custom_widgets.DataTimeChartWithAreaAndColumns(
                                                                              width: double.infinity,
                                                                              height: double.infinity,
                                                                              sTitulo: '',
                                                                              sDateFormat: 'dsa',
                                                                              bVisibleMarker: true,
                                                                              colorLine: FlutterFlowTheme.of(context).primary,
                                                                              intervalAxisX: 1.0,
                                                                              colorLine2: FlutterFlowTheme.of(context).error,
                                                                              numberDate: 12,
                                                                              sListValueXArea: functions.geraDias(31)!,
                                                                              sListValueXColuna: functions.geraDias(31)!,
                                                                              vListValueYArea: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  valueOrDefault<int>(
                                                                                    dateTimeFormat(
                                                                                              "M",
                                                                                              functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            ) ==
                                                                                            VendaDashMesDiaCall.mes(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                            )?.first?.toString()
                                                                                        ? 0
                                                                                        : 1,
                                                                                    0,
                                                                                  ),
                                                                                  'NUMDIA')!,
                                                                              vListValueYColuna: functions.listFromJsonDouble(
                                                                                  getJsonField(
                                                                                    containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  valueOrDefault<int>(
                                                                                    dateTimeFormat(
                                                                                              "M",
                                                                                              functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                            ) ==
                                                                                            VendaDashMesDiaCall.mes(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                            )?.first?.toString()
                                                                                        ? 0
                                                                                        : 1,
                                                                                    0,
                                                                                  ),
                                                                                  'DIA')!,
                                                                              isArea: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Divider(
                                                                      height:
                                                                          3.0,
                                                                      thickness:
                                                                          0.5,
                                                                      indent:
                                                                          20.0,
                                                                      endIndent:
                                                                          20.0,
                                                                      color: Color(
                                                                          0x82636B91),
                                                                    ),
                                                                    wrapWithModel(
                                                                      model: _model
                                                                          .chartTotaisModel3,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      updateOnChange:
                                                                          true,
                                                                      child:
                                                                          ChartTotaisWidget(
                                                                        valueAtual:
                                                                            valueOrDefault<String>(
                                                                          functions
                                                                              .realFormat(valueOrDefault<String>(
                                                                            functions
                                                                                .sumListDouble(functions
                                                                                    .listFromJsonDouble(
                                                                                        getJsonField(
                                                                                          containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                          r'''$..value''',
                                                                                        ),
                                                                                        dateTimeFormat(
                                                                                                  "M",
                                                                                                  functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                ) ==
                                                                                                VendaDashMesDiaCall.mes(
                                                                                                  containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                )?.first?.toString()
                                                                                            ? 0
                                                                                            : 1,
                                                                                        'DIA')
                                                                                    ?.toList())
                                                                                ?.toString(),
                                                                            '0',
                                                                          )),
                                                                          '0',
                                                                        ),
                                                                        valueAnterior: _model.mensalTypeSelected ==
                                                                                'Valores vs Quantidades'
                                                                            ? functions
                                                                                .doubleToInt(valueOrDefault<double>(
                                                                                  functions.sumListDouble(functions
                                                                                      .listFromJsonDouble(
                                                                                          getJsonField(
                                                                                            containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                            r'''$..value''',
                                                                                          ),
                                                                                          dateTimeFormat(
                                                                                                    "M",
                                                                                                    functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ) ==
                                                                                                  VendaDashMesDiaCall.mes(
                                                                                                    containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                  )?.first?.toString()
                                                                                              ? 0
                                                                                              : 1,
                                                                                          'NUMDIA')
                                                                                      ?.toList()),
                                                                                  0.0,
                                                                                ))
                                                                                .toString()
                                                                            : functions.realFormat(valueOrDefault<String>(
                                                                                functions
                                                                                    .sumListDouble(functions
                                                                                        .listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesDiaCall.mes(
                                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 1
                                                                                                : 0,
                                                                                            'DIA')
                                                                                        ?.toList())
                                                                                    ?.toString(),
                                                                                '0',
                                                                              ))!,
                                                                        titAtual: _model.mensalTypeSelected ==
                                                                                'Valores vs Quantidades'
                                                                            ? 'Valores'
                                                                            : dateTimeFormat(
                                                                                "MMMM",
                                                                                functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                        titAnterior: _model.mensalTypeSelected ==
                                                                                'Valores vs Quantidades'
                                                                            ? 'Quantidade'
                                                                            : dateTimeFormat(
                                                                                "MMMM",
                                                                                functions.difDateWithMonth(1, functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue)),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                        percentDifAtual:
                                                                            valueOrDefault<double>(
                                                                          ((valueOrDefault<double>(
                                                                                        functions.sumListDouble(functions
                                                                                            .listFromJsonDouble(
                                                                                                getJsonField(
                                                                                                  containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                dateTimeFormat(
                                                                                                          "M",
                                                                                                          functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                        ) ==
                                                                                                        VendaDashMesDiaCall.mes(
                                                                                                          containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                        )?.first?.toString()
                                                                                                    ? 0
                                                                                                    : 1,
                                                                                                'DIA')
                                                                                            ?.toList()),
                                                                                        0.0,
                                                                                      ) /
                                                                                      valueOrDefault<double>(
                                                                                        functions.sumListDouble(functions
                                                                                            .listFromJsonDouble(
                                                                                                getJsonField(
                                                                                                  containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                dateTimeFormat(
                                                                                                          "M",
                                                                                                          functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                        ) ==
                                                                                                        VendaDashMesDiaCall.mes(
                                                                                                          containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                        )?.first?.toString()
                                                                                                    ? 1
                                                                                                    : 0,
                                                                                                'DIA')
                                                                                            ?.toList()),
                                                                                        0.0,
                                                                                      )) *
                                                                                  100) -
                                                                              100,
                                                                          0.0,
                                                                        ),
                                                                        isCompareted:
                                                                            _model.mensalTypeSelected !=
                                                                                'Valores vs Quantidades',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          3.0,
                                                                          3.0,
                                                                          0.0),
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            7.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .zoom_out_map_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          await showDialog(
                                                                            barrierDismissible:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: Container(
                                                                                  height: MediaQuery.sizeOf(context).height * 0.9,
                                                                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                                                                  child: UnViewFrameChartExpansiveWidget(
                                                                                    sTitulo: '',
                                                                                    listValueY: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesDiaCall.mes(
                                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 0
                                                                                                : 1,
                                                                                            'NUMDIA')!
                                                                                        : functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesDiaCall.mes(
                                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 0
                                                                                                : 1,
                                                                                            'DIA')!,
                                                                                    interval: 1.0,
                                                                                    iDatesGen: 30,
                                                                                    iTipoChart: () {
                                                                                      if (_model.mensalTypeSelected == 'Linha') {
                                                                                        return 3;
                                                                                      } else if (_model.mensalTypeSelected == 'Valores vs Quantidades') {
                                                                                        return 6;
                                                                                      } else {
                                                                                        return 5;
                                                                                      }
                                                                                    }(),
                                                                                    listValueY2Comparated: _model.mensalTypeSelected == 'Valores vs Quantidades'
                                                                                        ? functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesDiaCall.mes(
                                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 0
                                                                                                : 1,
                                                                                            'DIA')
                                                                                        : functions.listFromJsonDouble(
                                                                                            getJsonField(
                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                              r'''$..value''',
                                                                                            ),
                                                                                            dateTimeFormat(
                                                                                                      "M",
                                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ) ==
                                                                                                    VendaDashMesDiaCall.mes(
                                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                    )?.first?.toString()
                                                                                                ? 1
                                                                                                : 0,
                                                                                            'DIA'),
                                                                                    sDateFormat: 'dd',
                                                                                    dateAnt: dateTimeFormat(
                                                                                      "MMMM",
                                                                                      functions.difDateWithMonth(1, functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue)),
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ),
                                                                                    dateAtual: dateTimeFormat(
                                                                                      "MMMM",
                                                                                      functions.mMMMToDateTime(_model.dpdMensalMesDesktopValue, _model.dpdMensalAnoDesktopValue),
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ),
                                                                                    sumAnt: functions.realFormat(valueOrDefault<String>(
                                                                                      functions
                                                                                          .sumListDouble(functions
                                                                                              .listFromJsonDouble(
                                                                                                  getJsonField(
                                                                                                    containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                    r'''$..value''',
                                                                                                  ),
                                                                                                  1,
                                                                                                  'DIA')
                                                                                              ?.toList())
                                                                                          ?.toString(),
                                                                                      '0',
                                                                                    )),
                                                                                    sumAtual: valueOrDefault<String>(
                                                                                      functions.realFormat(valueOrDefault<String>(
                                                                                        functions
                                                                                            .sumListDouble(functions
                                                                                                .listFromJsonDouble(
                                                                                                    getJsonField(
                                                                                                      containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                      r'''$..value''',
                                                                                                    ),
                                                                                                    0,
                                                                                                    'DIA')
                                                                                                ?.toList())
                                                                                            ?.toString(),
                                                                                        '0',
                                                                                      )),
                                                                                      '0',
                                                                                    ),
                                                                                    percentVariacao: valueOrDefault<double>(
                                                                                      ((valueOrDefault<double>(
                                                                                                    functions.sumListDouble(functions
                                                                                                        .listFromJsonDouble(
                                                                                                            getJsonField(
                                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                              r'''$..value''',
                                                                                                            ),
                                                                                                            0,
                                                                                                            'DIA')
                                                                                                        ?.toList()),
                                                                                                    0.0,
                                                                                                  ) /
                                                                                                  valueOrDefault<double>(
                                                                                                    functions.sumListDouble(functions
                                                                                                        .listFromJsonDouble(
                                                                                                            getJsonField(
                                                                                                              containerMensalDiaDesktopVendaDashMesDiaResponse.jsonBody,
                                                                                                              r'''$..value''',
                                                                                                            ),
                                                                                                            1,
                                                                                                            'DIA')
                                                                                                        ?.toList()),
                                                                                                    0.0,
                                                                                                  )) *
                                                                                              100) -
                                                                                          100,
                                                                                      0.0,
                                                                                    ),
                                                                                    listValueXString: functions.geraDias(31),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  40.0,
                                                                  0.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 0.0,
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 42.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowChoiceChips(
                                                                      options: [
                                                                        ChipData(
                                                                            'Dia'),
                                                                        ChipData(
                                                                            'Semana')
                                                                      ],
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.ccMensalDiaSemanaValue =
                                                                                val?.firstOrNull);
                                                                        await Future.delayed(const Duration(
                                                                            milliseconds:
                                                                                600));
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter2 =
                                                                                null);
                                                                        await _model.waitForApiRequestCompleted2(
                                                                            minWait:
                                                                                300);
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter3 =
                                                                                null);
                                                                        await _model.waitForApiRequestCompleted3(
                                                                            minWait:
                                                                                300);
                                                                      },
                                                                      selectedChipStyle:
                                                                          ChipStyle(
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: Colors.white,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        iconColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        iconSize:
                                                                            12.0,
                                                                        elevation:
                                                                            1.0,
                                                                        borderColor:
                                                                            Color(0x2357636C),
                                                                        borderRadius:
                                                                            BorderRadius.circular(350.0),
                                                                      ),
                                                                      unselectedChipStyle:
                                                                          ChipStyle(
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        iconColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                        iconSize:
                                                                            12.0,
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(24.0),
                                                                      ),
                                                                      chipSpacing:
                                                                          8.0,
                                                                      rowSpacing:
                                                                          8.0,
                                                                      multiselect:
                                                                          false,
                                                                      initialized:
                                                                          _model.ccMensalDiaSemanaValue !=
                                                                              null,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      controller: _model
                                                                              .ccMensalDiaSemanaValueController ??=
                                                                          FormFieldController<
                                                                              List<String>>(
                                                                        ['Dia'],
                                                                      ),
                                                                      wrapped:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .dpdMensalMesDesktopValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.dpdMensalMesDesktopValue ??=
                                                                            dateTimeFormat(
                                                                          "MMMM",
                                                                          getCurrentTimestamp,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                      ),
                                                                      options:
                                                                          functions
                                                                              .listMonthInYear()!,
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dpdMensalMesDesktopValue =
                                                                                val);
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter3 =
                                                                                null);
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter2 =
                                                                                null);
                                                                      },
                                                                      width:
                                                                          130.0,
                                                                      height:
                                                                          30.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintText:
                                                                          'Mês',
                                                                      searchHintText:
                                                                          'Procurar',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      elevation:
                                                                          0.0,
                                                                      borderColor:
                                                                          Color(
                                                                              0x5A57636C),
                                                                      borderWidth:
                                                                          0.0,
                                                                      borderRadius:
                                                                          300.0,
                                                                      margin: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          false,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .dpdMensalAnoDesktopValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.dpdMensalAnoDesktopValue ??=
                                                                            dateTimeFormat(
                                                                          "yyyy",
                                                                          getCurrentTimestamp,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                      ),
                                                                      options: functions
                                                                          .difDateWithYear(4, getCurrentTimestamp)!
                                                                          .map((e) => dateTimeFormat(
                                                                                "yyyy",
                                                                                e,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ))
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dpdMensalAnoDesktopValue =
                                                                                val);
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter2 =
                                                                                null);
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter3 =
                                                                                null);
                                                                      },
                                                                      width:
                                                                          80.0,
                                                                      height:
                                                                          30.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintText:
                                                                          'Ano',
                                                                      searchHintText:
                                                                          'Procurar',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      elevation:
                                                                          0.0,
                                                                      borderColor:
                                                                          Color(
                                                                              0x5A57636C),
                                                                      borderWidth:
                                                                          0.0,
                                                                      borderRadius:
                                                                          300.0,
                                                                      margin: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          false,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ]
                                                                    .divide(SizedBox(
                                                                        width:
                                                                            5.0))
                                                                    .addToEnd(SizedBox(
                                                                        width:
                                                                            40.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    5.0,
                                                                    0.0,
                                                                    50.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child:
                                                                    FlutterFlowChoiceChips(
                                                                  options: [
                                                                    ChipData(
                                                                        'Linha'),
                                                                    ChipData(
                                                                        'Coluna'),
                                                                    ChipData(
                                                                        'Valores vs Quantidades')
                                                                  ],
                                                                  onChanged:
                                                                      (val) async {
                                                                    safeSetState(() =>
                                                                        _model.ccTypeChartMensalValue =
                                                                            val?.firstOrNull);
                                                                    _model.mensalTypeSelected =
                                                                        _model
                                                                            .ccTypeChartMensalValue!;
                                                                    safeSetState(
                                                                        () {});
                                                                    safeSetState(() =>
                                                                        _model.apiRequestCompleter3 =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted3();
                                                                    safeSetState(() =>
                                                                        _model.apiRequestCompleter2 =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted2();
                                                                  },
                                                                  selectedChipStyle:
                                                                      ChipStyle(
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    iconColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    iconSize:
                                                                        12.0,
                                                                    elevation:
                                                                        1.0,
                                                                    borderColor:
                                                                        Color(
                                                                            0x2357636C),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            350.0),
                                                                  ),
                                                                  unselectedChipStyle:
                                                                      ChipStyle(
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    iconColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    iconSize:
                                                                        12.0,
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.0),
                                                                  ),
                                                                  chipSpacing:
                                                                      8.0,
                                                                  rowSpacing:
                                                                      8.0,
                                                                  multiselect:
                                                                      false,
                                                                  initialized:
                                                                      _model.ccTypeChartMensalValue !=
                                                                          null,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  controller: _model
                                                                          .ccTypeChartMensalValueController ??=
                                                                      FormFieldController<
                                                                          List<
                                                                              String>>(
                                                                    ['Linha'],
                                                                  ),
                                                                  wrapped:
                                                                      false,
                                                                ),
                                                              ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                                controller: _model
                                                                        .dpdMobileTypeMensalValueController ??=
                                                                    FormFieldController<
                                                                        String>(
                                                                  _model.dpdMobileTypeMensalValue ??=
                                                                      _model
                                                                          .semanalTypeSelected,
                                                                ),
                                                                options: [
                                                                  'Linha',
                                                                  'Coluna',
                                                                  'Valores vs Quantidades'
                                                                ],
                                                                onChanged:
                                                                    (val) async {
                                                                  safeSetState(() =>
                                                                      _model.dpdMobileTypeMensalValue =
                                                                          val);
                                                                  _model.mensalTypeSelected =
                                                                      _model
                                                                          .dpdMobileTypeMensalValue!;
                                                                  safeSetState(
                                                                      () {});
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter3 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted3();
                                                                  safeSetState(() =>
                                                                      _model.apiRequestCompleter2 =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted2();
                                                                },
                                                                width: 100.0,
                                                                height: 30.0,
                                                                searchHintTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                searchTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                searchHintText:
                                                                    'Procurar',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    300.0,
                                                                margin: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    true,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                            .addToStart(SizedBox(height: 5.0))
                                            .addToEnd(SizedBox(height: 5.0)),
                                      ),
                                    ),
                                    KeepAliveWidgetWrapper(
                                      builder: (context) =>
                                          FutureBuilder<ApiCallResponse>(
                                        future: (_model.apiRequestCompleter4 ??=
                                                Completer<ApiCallResponse>()
                                                  ..complete(
                                                      VendaDashAnoMesCall.call(
                                                    ip: FFAppState()
                                                        .ConfigGlobaisServer
                                                        .host,
                                                    porta: FFAppState()
                                                        .ConfigGlobaisServer
                                                        .porta,
                                                    path: FFAppState()
                                                        .ConfigGlobaisServer
                                                        .path,
                                                    token: FFAppState().Token,
                                                    filterDate:
                                                        '?\$Filter=(ANO ge \' ${valueOrDefault<String>(
                                                      functions
                                                          .difDateWithYearString(
                                                              1,
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .dPDChartDesktopValue,
                                                                '2024',
                                                              ))
                                                          ?.toString(),
                                                      '2024',
                                                    )}\' and ANO le  \'${valueOrDefault<String>(
                                                      _model
                                                          .dPDChartDesktopValue,
                                                      '2024',
                                                    )}\')',
                                                  )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: UnViewFrameLoadingWidget(),
                                            );
                                          }
                                          final stackAnualDesktopVendaDashAnoMesResponse =
                                              snapshot.data!;

                                          return Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if ((_model.anualTypeSelected ==
                                                            'Linha (Comparada)') &&
                                                        (VendaDashAnoMesCall
                                                                    .valueLista(
                                                              stackAnualDesktopVendaDashAnoMesResponse
                                                                  .jsonBody,
                                                            )!
                                                                .length >=
                                                            2))
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      30.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            child: custom_widgets
                                                                .DataTimeChartWithAreaComparateString(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              sTitulo: '',
                                                              sDateFormat: 'sa',
                                                              bVisibleMarker:
                                                                  true,
                                                              colorLine:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              intervalAxisX:
                                                                  1.0,
                                                              colorLine2:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              numberDate: 12,
                                                              nameSeries1:
                                                                  'Atual',
                                                              nameSeries2:
                                                                  'Anterior',
                                                              sListValueX: functions
                                                                  .listMonthInYearResume()!,
                                                              sListValueX2:
                                                                  functions
                                                                      .listMonthInYearResume()!,
                                                              vListValueY: functions
                                                                  .listMonthInYearDoubleList(
                                                                      getJsonField(
                                                                        stackAnualDesktopVendaDashAnoMesResponse
                                                                            .jsonBody,
                                                                        r'''$..value''',
                                                                      ),
                                                                      0)!,
                                                              vListValueY2: functions
                                                                  .listMonthInYearDoubleList(
                                                                      getJsonField(
                                                                        stackAnualDesktopVendaDashAnoMesResponse
                                                                            .jsonBody,
                                                                        r'''$..value''',
                                                                      ),
                                                                      1)!,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if ((_model.anualTypeSelected ==
                                                            'Coluna') &&
                                                        (VendaDashAnoMesCall
                                                                    .valueLista(
                                                              stackAnualDesktopVendaDashAnoMesResponse
                                                                  .jsonBody,
                                                            )!
                                                                .length >=
                                                            2))
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      30.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            child: custom_widgets
                                                                .DataTimeChartWithColumnComparate(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              sTitulo: '',
                                                              sDateFormat:
                                                                  'sad',
                                                              bVisibleMarker:
                                                                  false,
                                                              colorLine:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              intervalAxisX:
                                                                  1.0,
                                                              colorLine2:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              numberDate: 12,
                                                              nameSeries1:
                                                                  'Atual',
                                                              nameSeries2:
                                                                  'Anterior',
                                                              sListValueX: functions
                                                                  .listMonthInYearResume()!,
                                                              vListValueY: functions
                                                                  .listMonthInYearDoubleList(
                                                                      getJsonField(
                                                                        stackAnualDesktopVendaDashAnoMesResponse
                                                                            .jsonBody,
                                                                        r'''$..value''',
                                                                      ),
                                                                      0)!,
                                                              sListValueX2:
                                                                  functions
                                                                      .listMonthInYearResume()!,
                                                              vListValueY2: functions
                                                                  .listMonthInYearDoubleList(
                                                                      getJsonField(
                                                                        stackAnualDesktopVendaDashAnoMesResponse
                                                                            .jsonBody,
                                                                        r'''$..value''',
                                                                      ),
                                                                      1)!,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (((_model.anualTypeSelected ==
                                                                'Linha') ||
                                                            (VendaDashAnoMesCall
                                                                    .valueLista(
                                                                  stackAnualDesktopVendaDashAnoMesResponse
                                                                      .jsonBody,
                                                                )?.length ==
                                                                1)) &&
                                                        (_model.anualTypeSelected !=
                                                            'Valores vs Quantidades'))
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        30.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              child: custom_widgets
                                                                  .DataTimeChartWithAreaString(
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                sTitulo: '',
                                                                sDateFormat:
                                                                    'sad',
                                                                bVisibleMarker:
                                                                    true,
                                                                colorLine:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                intervalAxisX:
                                                                    1.0,
                                                                colorLine2:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                numberDate: 5,
                                                                vListValueY: functions
                                                                    .listMonthInYearDoubleList(
                                                                        getJsonField(
                                                                          stackAnualDesktopVendaDashAnoMesResponse
                                                                              .jsonBody,
                                                                          r'''$..value''',
                                                                        ),
                                                                        0)!,
                                                                sListValueX:
                                                                    functions
                                                                        .listMonthInYearResume()!,
                                                                sConcatInfoPlus:
                                                                    '',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model
                                                            .anualTypeSelected ==
                                                        'Valores vs Quantidades')
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      40.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            child: custom_widgets
                                                                .DataTimeChartWithAreaAndColumns(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              sTitulo: '',
                                                              sDateFormat:
                                                                  'dsa',
                                                              bVisibleMarker:
                                                                  true,
                                                              colorLine:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              intervalAxisX:
                                                                  1.0,
                                                              colorLine2:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              numberDate: 12,
                                                              sListValueXArea:
                                                                  functions
                                                                      .listMonthInYearResume()!,
                                                              sListValueXColuna:
                                                                  functions
                                                                      .listMonthInYearResume()!,
                                                              vListValueYArea:
                                                                  functions
                                                                      .listMonthInYearDoubleListQuantity(
                                                                          getJsonField(
                                                                            stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                            r'''$..value''',
                                                                          ),
                                                                          0)!,
                                                              vListValueYColuna:
                                                                  functions
                                                                      .listMonthInYearDoubleList(
                                                                          getJsonField(
                                                                            stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                            r'''$..value''',
                                                                          ),
                                                                          0)!,
                                                              isArea: false,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    Divider(
                                                      height: 3.0,
                                                      thickness: 0.5,
                                                      indent: 20.0,
                                                      endIndent: 20.0,
                                                      color: Color(0x82636B91),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .chartTotaisModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ChartTotaisWidget(
                                                        valueAtual:
                                                            valueOrDefault<
                                                                String>(
                                                          functions.realFormat(
                                                              (VendaDashAnoMesCall
                                                                      .total(
                                                            stackAnualDesktopVendaDashAnoMesResponse
                                                                .jsonBody,
                                                          )?[0])
                                                                  ?.toString()),
                                                          '0',
                                                        ),
                                                        valueAnterior:
                                                            valueOrDefault<
                                                                String>(
                                                          _model.anualTypeSelected ==
                                                                  'Valores vs Quantidades'
                                                              ? functions
                                                                  .doubleToInt(
                                                                      valueOrDefault<
                                                                          double>(
                                                                    functions.sumListDouble(functions
                                                                        .listMonthInYearDoubleListQuantity(
                                                                            getJsonField(
                                                                              stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                              r'''$..value''',
                                                                            ),
                                                                            0)
                                                                        ?.toList()),
                                                                    0.0,
                                                                  ))
                                                                  ?.toString()
                                                              : ((VendaDashAnoMesCall
                                                                              .total(
                                                                        stackAnualDesktopVendaDashAnoMesResponse
                                                                            .jsonBody,
                                                                      )!
                                                                          .length <=
                                                                      1
                                                                  ? functions
                                                                      .realFormat(
                                                                          '0')
                                                                  : (valueOrDefault<
                                                                      String>(
                                                                      functions.realFormat(
                                                                          (VendaDashAnoMesCall.total(
                                                                        stackAnualDesktopVendaDashAnoMesResponse
                                                                            .jsonBody,
                                                                      )?[1])
                                                                              ?.toString()),
                                                                      '0',
                                                                    )))),
                                                          '0',
                                                        ),
                                                        titAtual: _model
                                                                    .anualTypeSelected ==
                                                                'Valores vs Quantidades'
                                                            ? 'Valores'
                                                            : valueOrDefault<
                                                                String>(
                                                                _model
                                                                    .dPDChartDesktopValue,
                                                                '2024',
                                                              ),
                                                        titAnterior: _model
                                                                    .anualTypeSelected ==
                                                                'Valores vs Quantidades'
                                                            ? 'Quantidade'
                                                            : valueOrDefault<
                                                                String>(
                                                                functions
                                                                    .difDateWithYearString(
                                                                        1,
                                                                        _model
                                                                            .dPDChartDesktopValue)
                                                                    ?.toString(),
                                                                '2024',
                                                              ),
                                                        percentDifAtual:
                                                            valueOrDefault<
                                                                double>(
                                                          ((valueOrDefault<
                                                                          double>(
                                                                        VendaDashAnoMesCall
                                                                            .total(
                                                                          stackAnualDesktopVendaDashAnoMesResponse
                                                                              .jsonBody,
                                                                        )?[0],
                                                                        0.0,
                                                                      ) /
                                                                      valueOrDefault<
                                                                          double>(
                                                                        VendaDashAnoMesCall.total(
                                                                                  stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                )!
                                                                                    .length <=
                                                                                1
                                                                            ? 0.0
                                                                            : (valueOrDefault<double>(
                                                                                VendaDashAnoMesCall.total(
                                                                                  stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                )?[1],
                                                                                0.0,
                                                                              )),
                                                                        0.0,
                                                                      )) *
                                                                  100) -
                                                              100,
                                                          0.0,
                                                        ),
                                                        isCompareted: _model
                                                                .anualTypeSelected !=
                                                            'Valores vs Quantidades',
                                                      ),
                                                    ),
                                                  ].addToEnd(
                                                      SizedBox(height: 10.0)),
                                                ),
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 0.0,
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 42.0,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child:
                                                              SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowChoiceChips(
                                                                      options: [
                                                                        ChipData(
                                                                            'Linha'),
                                                                        ChipData(
                                                                            'Linha (Comparada)'),
                                                                        ChipData(
                                                                            'Coluna'),
                                                                        ChipData(
                                                                            'Valores vs Quantidades')
                                                                      ],
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.choiceAnualTypeValue =
                                                                                val?.firstOrNull);
                                                                        _model.anualTypeSelected =
                                                                            _model.choiceAnualTypeValue!;
                                                                        safeSetState(
                                                                            () {});
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter4 =
                                                                                null);
                                                                        await _model
                                                                            .waitForApiRequestCompleted4();
                                                                      },
                                                                      selectedChipStyle:
                                                                          ChipStyle(
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: Colors.white,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        iconColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        iconSize:
                                                                            12.0,
                                                                        elevation:
                                                                            1.0,
                                                                        borderColor:
                                                                            Color(0x2357636C),
                                                                        borderRadius:
                                                                            BorderRadius.circular(350.0),
                                                                      ),
                                                                      unselectedChipStyle:
                                                                          ChipStyle(
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        iconColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                        iconSize:
                                                                            12.0,
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(24.0),
                                                                      ),
                                                                      chipSpacing:
                                                                          8.0,
                                                                      rowSpacing:
                                                                          8.0,
                                                                      multiselect:
                                                                          false,
                                                                      initialized:
                                                                          _model.choiceAnualTypeValue !=
                                                                              null,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      controller: _model
                                                                              .choiceAnualTypeValueController ??=
                                                                          FormFieldController<
                                                                              List<String>>(
                                                                        [
                                                                          _model
                                                                              .anualTypeSelected
                                                                        ],
                                                                      ),
                                                                      wrapped:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .dpdMobileTypeAnualValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.dpdMobileTypeAnualValue ??=
                                                                            _model.anualTypeSelected,
                                                                      ),
                                                                      options: [
                                                                        'Linha',
                                                                        'Linha (Comparada)',
                                                                        'Coluna',
                                                                        'Valores vs Quantidades'
                                                                      ],
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dpdMobileTypeAnualValue =
                                                                                val);
                                                                        _model.anualTypeSelected =
                                                                            _model.dpdMobileTypeAnualValue!;
                                                                        safeSetState(
                                                                            () {});
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter4 =
                                                                                null);
                                                                        await _model
                                                                            .waitForApiRequestCompleted4();
                                                                      },
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          30.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      searchHintText:
                                                                          'Procurar',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      borderWidth:
                                                                          0.0,
                                                                      borderRadius:
                                                                          300.0,
                                                                      margin: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          false,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                              ]
                                                                  .divide(SizedBox(
                                                                      width:
                                                                          5.0))
                                                                  .addToStart(
                                                                      SizedBox(
                                                                          width:
                                                                              10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child:
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                            controller: _model
                                                                    .dPDChartDesktopValueController ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dPDChartDesktopValue ??=
                                                                  dateTimeFormat(
                                                                "yyyy",
                                                                getCurrentTimestamp,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                            ),
                                                            options: functions
                                                                .difDateWithYear(
                                                                    4,
                                                                    getCurrentTimestamp)!
                                                                .map((e) =>
                                                                    dateTimeFormat(
                                                                      "yyyy",
                                                                      e,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ))
                                                                .toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.dPDChartDesktopValue =
                                                                      val);
                                                              safeSetState(() =>
                                                                  _model.apiRequestCompleter4 =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted4();
                                                              if (VendaDashAnoMesCall
                                                                          .valueLista(
                                                                    stackAnualDesktopVendaDashAnoMesResponse
                                                                        .jsonBody,
                                                                  )!
                                                                      .length <=
                                                                  1) {
                                                                _model.anualTypeSelected =
                                                                    'Linha';
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                            width: 100.0,
                                                            height: 30.0,
                                                            searchHintTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                            searchTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                            hintText: 'Ano',
                                                            searchHintText:
                                                                'Procurar',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 20.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            borderWidth: 0.0,
                                                            borderRadius: 300.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: true,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, -1.0),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          3.0,
                                                                          0.0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    7.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    35.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .zoom_out_map_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  size: 20.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  await showDialog(
                                                                    barrierDismissible:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.9,
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.9,
                                                                          child:
                                                                              UnViewFrameChartExpansiveWidget(
                                                                            sTitulo:
                                                                                '',
                                                                            listValueY: _model.anualTypeSelected == 'Valores vs Quantidades'
                                                                                ? functions.listMonthInYearDoubleListQuantity(
                                                                                    getJsonField(
                                                                                      stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                      r'''$..value''',
                                                                                    ),
                                                                                    0)!
                                                                                : functions.listMonthInYearDoubleList(
                                                                                    getJsonField(
                                                                                      stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                      r'''$..value''',
                                                                                    ),
                                                                                    1)!,
                                                                            interval:
                                                                                1.0,
                                                                            iDatesGen:
                                                                                30,
                                                                            iTipoChart:
                                                                                () {
                                                                              if (_model.anualTypeSelected == 'Linha') {
                                                                                return 4;
                                                                              } else if (_model.anualTypeSelected == 'Linha (Comparada)') {
                                                                                return 3;
                                                                              } else if (_model.anualTypeSelected == 'Valores vs Quantidades') {
                                                                                return 6;
                                                                              } else {
                                                                                return 5;
                                                                              }
                                                                            }(),
                                                                            listValueY2Comparated: functions.listMonthInYearDoubleList(
                                                                                getJsonField(
                                                                                  stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0),
                                                                            sDateFormat:
                                                                                'dd',
                                                                            dateAnt: _model.anualTypeSelected == 'Valores vs Quantidades'
                                                                                ? 'Quantidade'
                                                                                : valueOrDefault<String>(
                                                                                    functions.difDateWithYearString(1, _model.dPDChartDesktopValue)?.toString(),
                                                                                    '2024',
                                                                                  ),
                                                                            dateAtual: _model.anualTypeSelected == 'Valores vs Quantidades'
                                                                                ? 'Valores'
                                                                                : valueOrDefault<String>(
                                                                                    _model.dPDChartDesktopValue,
                                                                                    '2024',
                                                                                  ),
                                                                            sumAnt: _model.anualTypeSelected == 'Valores vs Quantidades'
                                                                                ? functions
                                                                                    .doubleToInt(valueOrDefault<double>(
                                                                                      functions.sumListDouble(functions
                                                                                          .listMonthInYearDoubleListQuantity(
                                                                                              getJsonField(
                                                                                                stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0)
                                                                                          ?.toList()),
                                                                                      0.0,
                                                                                    ))
                                                                                    ?.toString()
                                                                                : valueOrDefault<String>(
                                                                                    functions.realFormat(valueOrDefault<String>(
                                                                                      functions
                                                                                          .sumListDouble(functions
                                                                                              .listMonthInYearDoubleList(
                                                                                                  getJsonField(
                                                                                                    stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                                    r'''$..value''',
                                                                                                  ),
                                                                                                  1)
                                                                                              ?.toList())
                                                                                          ?.toString(),
                                                                                      '1',
                                                                                    )),
                                                                                    '0',
                                                                                  ),
                                                                            sumAtual:
                                                                                valueOrDefault<String>(
                                                                              functions.realFormat(functions
                                                                                  .sumListDouble(functions
                                                                                      .listMonthInYearDoubleList(
                                                                                          getJsonField(
                                                                                            stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                            r'''$..value''',
                                                                                          ),
                                                                                          0)
                                                                                      ?.toList())
                                                                                  ?.toString()),
                                                                              '0',
                                                                            ),
                                                                            percentVariacao:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.sumListDouble(functions
                                                                                                .listMonthInYearDoubleList(
                                                                                                    getJsonField(
                                                                                                      stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                                      r'''$..value''',
                                                                                                    ),
                                                                                                    1)
                                                                                                ?.toList()),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.sumListDouble(functions
                                                                                                .listMonthInYearDoubleList(
                                                                                                    getJsonField(
                                                                                                      stackAnualDesktopVendaDashAnoMesResponse.jsonBody,
                                                                                                      r'''$..value''',
                                                                                                    ),
                                                                                                    0)
                                                                                                ?.toList()),
                                                                                            0.0,
                                                                                          )) *
                                                                                      100) -
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            listValueXString:
                                                                                functions.listMonthInYear(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 5.0)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
