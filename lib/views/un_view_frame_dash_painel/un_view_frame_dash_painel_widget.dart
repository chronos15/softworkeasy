import '/backend/api_requests/api_calls.dart';
import '/components/un_view_frame_loading_widget.dart';
import '/components/un_view_frame_vendas_pgto_widget.dart';
import '/components/unview_frame_vendas_vendedor_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/frame_components/un_view_frame_card_menu/un_view_frame_card_menu_widget.dart';
import '/frame_components/un_view_frame_chart_expansive/un_view_frame_chart_expansive_widget.dart';
import '/frame_components/un_view_frame_indicadores/un_view_frame_indicadores_widget.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'un_view_frame_dash_painel_model.dart';
export 'un_view_frame_dash_painel_model.dart';

class UnViewFrameDashPainelWidget extends StatefulWidget {
  const UnViewFrameDashPainelWidget({super.key});

  @override
  State<UnViewFrameDashPainelWidget> createState() =>
      _UnViewFrameDashPainelWidgetState();
}

class _UnViewFrameDashPainelWidgetState
    extends State<UnViewFrameDashPainelWidget> with TickerProviderStateMixin {
  late UnViewFrameDashPainelModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameDashPainelModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'stackOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'unViewFrameVendasPgtoOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'unviewFrameVendasVendedorOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'unviewFrameVendasVendedorOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
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
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        const SingleActivator(
          LogicalKeyboardKey.f5,
        ): VoidCallbackIntent(() async {
          _model.iDateSub = () {
            if (_model.choiceChipsValue == 'Hoje') {
              return 0;
            } else if (_model.choiceChipsValue == 'Ontem') {
              return 1;
            } else if (_model.choiceChipsValue == '7 Dias') {
              return 7;
            } else if (_model.choiceChipsValue == '30 Dias') {
              return 30;
            } else if (_model.choiceChipsValue == '3 Meses') {
              return 90;
            } else {
              return 1;
            }
          }();
          _model.isAllLoading = true;
          safeSetState(() {});
          await action_blocks.verifyConnection(context);
          safeSetState(() {});
          if (_model.iDateSub! <= 2) {
            safeSetState(() => _model.apiRequestCompleter3 = null);
          } else {
            safeSetState(() => _model.apiRequestCompleter6 = null);
          }

          _model.isAllLoading = false;
          safeSetState(() {});
          await Future.wait([
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter5 = null);
              if (animationsMap['stackOnActionTriggerAnimation1'] != null) {
                await animationsMap['stackOnActionTriggerAnimation1']!
                    .controller
                    .forward(from: 0.0);
              }
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter7 = null);
              if (animationsMap['stackOnActionTriggerAnimation2'] != null) {
                await animationsMap['stackOnActionTriggerAnimation2']!
                    .controller
                    .forward(from: 0.0);
              }
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter2 = null);
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter1 = null);
            }),
            Future(() async {
              safeSetState(() => _model.apiRequestCompleter4 = null);
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
          focusNode: _model.unViewFrameDashPainelShortcutsFocusNode,
          child: GestureDetector(
              onTap: () => _model
                      .unViewFrameDashPainelShortcutsFocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(
                      _model.unViewFrameDashPainelShortcutsFocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
                          child: Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 160.0
                                      : 230.0,
                                  height: 105.0,
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.unViewFrameCardMenuModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UnViewFrameCardMenuWidget(
                                      sTitulo: 'R\$ 35,99',
                                      sSubtitulo: 'Total de Vendas',
                                      icon: Icon(
                                        Icons.shopping_basket,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 25.0,
                                      ),
                                      colorBase: const Color(0xFF00BC5B),
                                      colorText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubIcon: const Color(0xFF00D063),
                                      sToolTipMessage:
                                          'Total de vendas em reais.',
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 160.0
                                      : 230.0,
                                  height: 105.0,
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.unViewFrameCardMenuModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UnViewFrameCardMenuWidget(
                                      sTitulo: 'R\$ 2.789,99',
                                      sSubtitulo: 'Fluxo de Caixa',
                                      icon: Icon(
                                        Icons.numbers_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 25.0,
                                      ),
                                      colorBase:
                                          FlutterFlowTheme.of(context).error,
                                      colorText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubIcon: const Color(0xFFFF828A),
                                      sToolTipMessage:
                                          'Total do fluxo de caixa  em reais.',
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 160.0
                                      : 230.0,
                                  height: 105.0,
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.unViewFrameCardMenuModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UnViewFrameCardMenuWidget(
                                      sTitulo: 'R\$ 275,99',
                                      sSubtitulo: 'Total à Receber',
                                      icon: Icon(
                                        Icons.receipt_long,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 25.0,
                                      ),
                                      colorBase:
                                          FlutterFlowTheme.of(context).primary,
                                      colorText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubIcon: const Color(0xFF62A9FF),
                                      sToolTipMessage:
                                          'Total de contas à receber em reais.',
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 160.0
                                      : 230.0,
                                  height: 105.0,
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.unViewFrameCardMenuModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UnViewFrameCardMenuWidget(
                                      sTitulo: 'R\$ 275,99',
                                      sSubtitulo: 'Total à Pagar',
                                      icon: Icon(
                                        Icons.receipt_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 25.0,
                                      ),
                                      colorBase: const Color(0xFFFFC200),
                                      colorText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubText:
                                          FlutterFlowTheme.of(context).info,
                                      colorSubIcon: const Color(0xFFFFD95A),
                                      sToolTipMessage:
                                          'Total de contas à pagar em reais.',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FlutterFlowChoiceChips(
                                            options: const [
                                              ChipData(
                                                  'Hoje', Icons.update_sharp),
                                              ChipData(
                                                  'Ontem', Icons.turn_left),
                                              ChipData('7 Dias',
                                                  Icons.today_rounded),
                                              ChipData('30 Dias',
                                                  Icons.date_range_outlined),
                                              ChipData('3 Meses',
                                                  Icons.calendar_month)
                                            ],
                                            onChanged: (val) async {
                                              safeSetState(() =>
                                                  _model.choiceChipsValue =
                                                      val?.firstOrNull);
                                              _model.iDateSub = () {
                                                if (_model.choiceChipsValue ==
                                                    'Hoje') {
                                                  return 0;
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    'Ontem') {
                                                  return 1;
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    '7 Dias') {
                                                  return 7;
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    '30 Dias') {
                                                  return 30;
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    '3 Meses') {
                                                  return 90;
                                                } else {
                                                  return 1;
                                                }
                                              }();
                                              _model.isAllLoading = true;
                                              safeSetState(() {});
                                              await action_blocks
                                                  .verifyConnection(context);
                                              safeSetState(() {});
                                              if (_model.iDateSub! <= 2) {
                                                safeSetState(() => _model
                                                        .apiRequestCompleter3 =
                                                    null);
                                              } else {
                                                safeSetState(() => _model
                                                        .apiRequestCompleter6 =
                                                    null);
                                              }

                                              _model.isAllLoading = false;
                                              safeSetState(() {});
                                              await Future.wait([
                                                Future(() async {
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter5 =
                                                      null);
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation1'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation1']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                }),
                                                Future(() async {
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter7 =
                                                      null);
                                                  if (animationsMap[
                                                          'stackOnActionTriggerAnimation2'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'stackOnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                }),
                                                Future(() async {
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter2 =
                                                      null);
                                                }),
                                                Future(() async {
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter1 =
                                                      null);
                                                }),
                                                Future(() async {
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter4 =
                                                      null);
                                                }),
                                              ]);
                                            },
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              iconSize: 18.0,
                                              labelPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 5.0, 15.0, 5.0),
                                              elevation: 3.0,
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 17.0,
                                              labelPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 5.0, 15.0, 5.0),
                                              elevation: 3.0,
                                              borderWidth: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            chipSpacing: 5.0,
                                            rowSpacing: 12.0,
                                            multiselect: false,
                                            initialized:
                                                _model.choiceChipsValue != null,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .choiceChipsValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              ['Hoje'],
                                            ),
                                            wrapped: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            height: 280.0,
                                            constraints: const BoxConstraints(
                                              maxHeight: 280.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 250.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image:
                                                                Image.network(
                                                              '',
                                                            ).image,
                                                          ),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (!_model
                                                                .isAllLoading)
                                                              Expanded(
                                                                flex: 4,
                                                                child: FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future: (_model.apiRequestCompleter3 ??= Completer<
                                                                          ApiCallResponse>()
                                                                        ..complete(
                                                                            VendaDashDiaHoraCall.call(
                                                                          ip: FFAppState()
                                                                              .ConfigGlobaisServer
                                                                              .host,
                                                                          porta: FFAppState()
                                                                              .ConfigGlobaisServer
                                                                              .porta,
                                                                          path: FFAppState()
                                                                              .ConfigGlobaisServer
                                                                              .path,
                                                                          token:
                                                                              FFAppState().Token,
                                                                          filterDate:
                                                                              '?\$Filter=(DATA eq \'${dateTimeFormat(
                                                                            "MM-dd-yyyy",
                                                                            functions.difDateWithInteger(_model.iDateSub,
                                                                                getCurrentTimestamp),
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          )}\' )',
                                                                        )))
                                                                      .future,
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return const Center(
                                                                        child:
                                                                            UnViewFrameLoadingWidget(),
                                                                      );
                                                                    }
                                                                    final containerVendaDashDiaHoraResponse =
                                                                        snapshot
                                                                            .data!;

                                                                    return Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          0.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            280.0,
                                                                        constraints:
                                                                            const BoxConstraints(
                                                                          maxHeight:
                                                                              280.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Visibility(
                                                                          visible:
                                                                              !_model.isAllLoading,
                                                                          child:
                                                                              FutureBuilder<ApiCallResponse>(
                                                                            future: (_model.apiRequestCompleter6 ??= Completer<ApiCallResponse>()
                                                                                  ..complete(VendaDashTotaisCall.call(
                                                                                    ip: FFAppState().ConfigGlobaisServer.host,
                                                                                    porta: FFAppState().ConfigGlobaisServer.porta,
                                                                                    path: FFAppState().ConfigGlobaisServer.path,
                                                                                    token: FFAppState().Token,
                                                                                    filterDate: '',
                                                                                  )))
                                                                                .future,
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return const Center(
                                                                                  child: UnViewFrameLoadingWidget(),
                                                                                );
                                                                              }
                                                                              final stackDashTotaisVendaDashTotaisResponse = snapshot.data!;

                                                                              return Stack(
                                                                                children: [
                                                                                  if ((_model.iDateSub! <= 2) &&
                                                                                      (FFAppState().isConnected &&
                                                                                          (VendaDashDiaHoraCall.valueLista(
                                                                                                containerVendaDashDiaHoraResponse.jsonBody,
                                                                                              )!.isNotEmpty)))
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: SizedBox(
                                                                                        width: double.infinity,
                                                                                        height: double.infinity,
                                                                                        child: custom_widgets.DataTimeChartWithAreaString(
                                                                                          width: double.infinity,
                                                                                          height: double.infinity,
                                                                                          sTitulo: 'Vendas por Horas ${_model.choiceChipsValue}',
                                                                                          sDateFormat: 'sad',
                                                                                          bVisibleMarker: true,
                                                                                          colorLine: FlutterFlowTheme.of(context).primary,
                                                                                          intervalAxisX: 1.0,
                                                                                          colorLine2: FlutterFlowTheme.of(context).primary,
                                                                                          numberDate: 5,
                                                                                          vListValueY: VendaDashDiaHoraCall.totalValueY(
                                                                                            containerVendaDashDiaHoraResponse.jsonBody,
                                                                                          )!,
                                                                                          sListValueX: VendaDashDiaHoraCall.horaValueX(
                                                                                            containerVendaDashDiaHoraResponse.jsonBody,
                                                                                          )!
                                                                                              .map((e) => e.toString())
                                                                                              .toList(),
                                                                                          sConcatInfoPlus: 'h',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((_model.iDateSub! >= 7) &&
                                                                                      (FFAppState().isConnected &&
                                                                                          (VendaDashTotaisCall.valueList(
                                                                                                stackDashTotaisVendaDashTotaisResponse.jsonBody,
                                                                                              )!.isNotEmpty)))
                                                                                    SizedBox(
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      child: custom_widgets.DataTimeChartWithArea(
                                                                                        width: double.infinity,
                                                                                        height: double.infinity,
                                                                                        sTitulo: 'Vendas por Período ${_model.choiceChipsValue}',
                                                                                        sDateFormat: 'dd/MM',
                                                                                        bVisibleMarker: true,
                                                                                        colorLine: FlutterFlowTheme.of(context).primary,
                                                                                        intervalAxisX: () {
                                                                                          if (_model.iDateSub == 30) {
                                                                                            return 5.0;
                                                                                          } else if (_model.iDateSub == 90) {
                                                                                            return 10.0;
                                                                                          } else {
                                                                                            return 1.0;
                                                                                          }
                                                                                        }(),
                                                                                        colorLine2: FlutterFlowTheme.of(context).primary,
                                                                                        sListValueX: functions.difDateWithIntegerList(_model.iDateSub, getCurrentTimestamp)!,
                                                                                        vListValueY: functions.listDateByValues(
                                                                                            getCurrentTimestamp,
                                                                                            functions
                                                                                                .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                  stackDashTotaisVendaDashTotaisResponse.jsonBody,
                                                                                                )?.toList())
                                                                                                ?.toList(),
                                                                                            VendaDashTotaisCall.valueY(
                                                                                              stackDashTotaisVendaDashTotaisResponse.jsonBody,
                                                                                            )?.toList(),
                                                                                            _model.iDateSub)!,
                                                                                        numberDate: _model.iDateSub!,
                                                                                      ),
                                                                                    ),
                                                                                  if ((!FFAppState().isConnected ||
                                                                                          (VendaDashDiaHoraCall.valueLista(
                                                                                                containerVendaDashDiaHoraResponse.jsonBody,
                                                                                              )!.isEmpty)) &&
                                                                                      (_model.iDateSub! <= 2))
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: wrapWithModel(
                                                                                        model: _model.unViewFrameVazioHoraModel1,
                                                                                        updateCallback: () => safeSetState(() {}),
                                                                                        updateOnChange: true,
                                                                                        child: const UnViewFrameVazioWidget(
                                                                                          sTitulo: 'Não existem dados nesse período',
                                                                                          sMessage: 'Verifique seus filtros e tente novamente!',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((_model.iDateSub! >= 7) && !FFAppState().isConnected)
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: wrapWithModel(
                                                                                        model: _model.unViewFrameVazioDashTotaisModel,
                                                                                        updateCallback: () => safeSetState(() {}),
                                                                                        updateOnChange: true,
                                                                                        child: const UnViewFrameVazioWidget(
                                                                                          sTitulo: 'Não existem dados nesse período',
                                                                                          sMessage: 'Verifique seus filtros e tente novamente!',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((FFAppState().isConnected && (_model.iDateSub! >= 7)) || (FFAppState().isConnected && (_model.iDateSub! <= 2)))
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(1.0, -1.0),
                                                                                      child: Builder(
                                                                                        builder: (context) => Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 3.0, 0.0),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 7.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 35.0,
                                                                                            icon: Icon(
                                                                                              Icons.zoom_out_map_rounded,
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              await showDialog(
                                                                                                context: context,
                                                                                                builder: (dialogContext) {
                                                                                                  return Dialog(
                                                                                                    elevation: 0,
                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    child: SizedBox(
                                                                                                      height: MediaQuery.sizeOf(context).height * 0.9,
                                                                                                      width: MediaQuery.sizeOf(context).width * 0.9,
                                                                                                      child: UnViewFrameChartExpansiveWidget(
                                                                                                        sTitulo: '${_model.iDateSub! >= 7 ? 'Vendas por Período ' : 'Vendas por Horário '}${_model.choiceChipsValue}',
                                                                                                        listValueX: functions.difDateWithIntegerList(_model.iDateSub, getCurrentTimestamp),
                                                                                                        listValueY: _model.iDateSub! >= 7
                                                                                                            ? functions.listDateByValues(
                                                                                                                getCurrentTimestamp,
                                                                                                                functions
                                                                                                                    .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                                                                      stackDashTotaisVendaDashTotaisResponse.jsonBody,
                                                                                                                    )?.toList())
                                                                                                                    ?.toList(),
                                                                                                                VendaDashTotaisCall.valueY(
                                                                                                                  stackDashTotaisVendaDashTotaisResponse.jsonBody,
                                                                                                                )?.toList(),
                                                                                                                _model.iDateSub)!
                                                                                                            : VendaDashDiaHoraCall.totalValueY(
                                                                                                                containerVendaDashDiaHoraResponse.jsonBody,
                                                                                                              )!,
                                                                                                        interval: () {
                                                                                                          if (_model.iDateSub == 30) {
                                                                                                            return 5.0;
                                                                                                          } else if (_model.iDateSub == 90) {
                                                                                                            return 10.0;
                                                                                                          } else {
                                                                                                            return 1.0;
                                                                                                          }
                                                                                                        }(),
                                                                                                        iDatesGen: _model.iDateSub!,
                                                                                                        iTipoChart: valueOrDefault<int>(
                                                                                                          _model.iDateSub! >= 7 ? 0 : 1,
                                                                                                          0,
                                                                                                        ),
                                                                                                        listValueXString: _model.iDateSub! >= 7
                                                                                                            ? VendaDashTotaisCall.valueX(
                                                                                                                stackDashTotaisVendaDashTotaisResponse.jsonBody,
                                                                                                              )
                                                                                                            : VendaDashDiaHoraCall.horaValueX(
                                                                                                                containerVendaDashDiaHoraResponse.jsonBody,
                                                                                                              )?.map((e) => e.toString()).toList(),
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
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation1']!),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                  ))
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (!_model
                                                              .isAllLoading)
                                                            Expanded(
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: (_model.apiRequestCompleter5 ??= Completer<
                                                                        ApiCallResponse>()
                                                                      ..complete(
                                                                          VendaTotalIndicadoresCall
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
                                                                        dataInicio:
                                                                            valueOrDefault<String>(
                                                                          dateTimeFormat(
                                                                            "yyyy-MM-dd",
                                                                            functions.difDateWithInteger(
                                                                                valueOrDefault<int>(
                                                                                  _model.iDateSub,
                                                                                  0,
                                                                                ),
                                                                                getCurrentTimestamp),
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          '2024-09-15',
                                                                        ),
                                                                        dataFinal:
                                                                            dateTimeFormat(
                                                                          "yyyy-MM-dd",
                                                                          getCurrentTimestamp,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                      )))
                                                                    .future,
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return const Center(
                                                                      child:
                                                                          UnViewFrameLoadingWidget(),
                                                                    );
                                                                  }
                                                                  final stackIndicadoresVendaTotalIndicadoresResponse =
                                                                      snapshot
                                                                          .data!;

                                                                  return Stack(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    children: [
                                                                      if (FFAppState()
                                                                          .isConnected)
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.unViewFrameIndicadoresModel1,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              UnViewFrameIndicadoresWidget(
                                                                            rentabilidade:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'TotalLucro'),
                                                                              0.0,
                                                                            ),
                                                                            clientes:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'NumeroClientes'),
                                                                              0.0,
                                                                            ),
                                                                            margemLucro:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'MargemLucro'),
                                                                              0.0,
                                                                            ),
                                                                            mixProdutos:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'Mix_Produto'),
                                                                              0.0,
                                                                            ),
                                                                            nVendas:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'NumeroPed'),
                                                                              0.0,
                                                                            ),
                                                                            ticketMedio:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'ValorMedia'),
                                                                              0.0,
                                                                            ),
                                                                            faturamento:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'TotalVenda'),
                                                                              0.0,
                                                                            ),
                                                                            difFaturamento:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'TotalVenda'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'TotalVenda'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            difMargem:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'MargemLucro'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'MargemLucro'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            difNVendas:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'NumeroPed'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'NumeroPed'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            difTicketMedio:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'ValorMedia'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'ValorMedia'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            difMixProduto:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'Mix_Produto'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'Mix_Produto'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            difClienteVariadoss:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'NumeroClientes'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'NumeroClientes'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            descontos:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'descontosTotal'),
                                                                              0.0,
                                                                            ),
                                                                            difDescontos:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'descontosTotal'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'descontosTotal'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                            cmv:
                                                                                valueOrDefault<double>(
                                                                              functions.listJsonToDouble(
                                                                                  getJsonField(
                                                                                    stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                    r'''$..value''',
                                                                                  ),
                                                                                  0,
                                                                                  'cmv'),
                                                                              0.0,
                                                                            ),
                                                                            difCmv:
                                                                                valueOrDefault<double>(
                                                                              ((valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                0,
                                                                                                'cmv'),
                                                                                            0.0,
                                                                                          ) /
                                                                                          valueOrDefault<double>(
                                                                                            functions.listJsonToDouble(
                                                                                                getJsonField(
                                                                                                  stackIndicadoresVendaTotalIndicadoresResponse.jsonBody,
                                                                                                  r'''$..value''',
                                                                                                ),
                                                                                                1,
                                                                                                'cmv'),
                                                                                            0.0,
                                                                                          )) -
                                                                                      1) *
                                                                                  100,
                                                                              0.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (!FFAppState()
                                                                          .isConnected)
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.unViewFrameVazioHoraModel2,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            updateOnChange:
                                                                                true,
                                                                            child:
                                                                                const UnViewFrameVazioWidget(
                                                                              sTitulo: 'Falha',
                                                                              sMessage: 'Verifique sua conexão e tente novamente!',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ).animateOnActionTrigger(
                                                                    animationsMap[
                                                                        'stackOnActionTriggerAnimation1']!,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 10.0))
                                                    .around(
                                                        const SizedBox(width: 10.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                desktop: false,
                                              ))
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 0.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 270.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (!_model
                                                            .isAllLoading)
                                                          Expanded(
                                                            child: FutureBuilder<
                                                                ApiCallResponse>(
                                                              future: (_model.apiRequestCompleter7 ??= Completer<
                                                                      ApiCallResponse>()
                                                                    ..complete(
                                                                        VendaTotalIndicadoresCall
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
                                                                      dataInicio:
                                                                          valueOrDefault<
                                                                              String>(
                                                                        dateTimeFormat(
                                                                          "yyyy-MM-dd",
                                                                          functions.difDateWithInteger(
                                                                              valueOrDefault<int>(
                                                                                _model.iDateSub,
                                                                                0,
                                                                              ),
                                                                              getCurrentTimestamp),
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                        '2024-09-15',
                                                                      ),
                                                                      dataFinal:
                                                                          dateTimeFormat(
                                                                        "yyyy-MM-dd",
                                                                        getCurrentTimestamp,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                    )))
                                                                  .future,
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return const Center(
                                                                    child:
                                                                        UnViewFrameLoadingWidget(),
                                                                  );
                                                                }
                                                                final stackIndicadoresMobileVendaTotalIndicadoresResponse =
                                                                    snapshot
                                                                        .data!;

                                                                return Stack(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  children: [
                                                                    if (FFAppState()
                                                                        .isConnected)
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .unViewFrameIndicadoresModel2,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            UnViewFrameIndicadoresWidget(
                                                                          rentabilidade:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'TotalLucro'),
                                                                            0.0,
                                                                          ),
                                                                          clientes:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'NumeroClientes'),
                                                                            0.0,
                                                                          ),
                                                                          margemLucro:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'MargemLucro'),
                                                                            0.0,
                                                                          ),
                                                                          mixProdutos:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'Mix_Produto'),
                                                                            0.0,
                                                                          ),
                                                                          nVendas:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'NumeroPed'),
                                                                            0.0,
                                                                          ),
                                                                          ticketMedio:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'ValorMedia'),
                                                                            0.0,
                                                                          ),
                                                                          faturamento:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'TotalVenda'),
                                                                            0.0,
                                                                          ),
                                                                          difFaturamento:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'TotalVenda'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'TotalVenda'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          difMargem:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'MargemLucro'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'MargemLucro'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          difNVendas:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'NumeroPed'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'NumeroPed'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          difTicketMedio:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'ValorMedia'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'ValorMedia'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          difMixProduto:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'Mix_Produto'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'Mix_Produto'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          difClienteVariadoss:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'NumeroClientes'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'NumeroClientes'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          descontos:
                                                                              valueOrDefault<double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'descontosTotal'),
                                                                            0.0,
                                                                          ),
                                                                          difDescontos:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'descontosTotal'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'descontosTotal'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                          cmv: valueOrDefault<
                                                                              double>(
                                                                            functions.listJsonToDouble(
                                                                                getJsonField(
                                                                                  stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                  r'''$..value''',
                                                                                ),
                                                                                0,
                                                                                'cmv'),
                                                                            0.0,
                                                                          ),
                                                                          difCmv:
                                                                              valueOrDefault<double>(
                                                                            ((valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              0,
                                                                                              'cmv'),
                                                                                          0.0,
                                                                                        ) /
                                                                                        valueOrDefault<double>(
                                                                                          functions.listJsonToDouble(
                                                                                              getJsonField(
                                                                                                stackIndicadoresMobileVendaTotalIndicadoresResponse.jsonBody,
                                                                                                r'''$..value''',
                                                                                              ),
                                                                                              1,
                                                                                              'cmv'),
                                                                                          0.0,
                                                                                        )) -
                                                                                    1) *
                                                                                100,
                                                                            0.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (!FFAppState()
                                                                        .isConnected)
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.unViewFrameVazioHoraModel3,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          updateOnChange:
                                                                              true,
                                                                          child:
                                                                              const UnViewFrameVazioWidget(
                                                                            sTitulo:
                                                                                'Falha',
                                                                            sMessage:
                                                                                'Verifique sua conexão e tente novamente!',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'stackOnActionTriggerAnimation2']!,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 250.0,
                                                      height: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 550.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 450.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 450.0;
                                                        } else {
                                                          return 350.0;
                                                        }
                                                      }(),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 2.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    if (!_model
                                                                        .isAllLoading)
                                                                      FutureBuilder<
                                                                          ApiCallResponse>(
                                                                        future: (_model.apiRequestCompleter2 ??= Completer<ApiCallResponse>()
                                                                              ..complete(VendaDashTotaisPagamentoCall.call(
                                                                                ip: FFAppState().ConfigGlobaisServer.host,
                                                                                porta: FFAppState().ConfigGlobaisServer.porta,
                                                                                path: FFAppState().ConfigGlobaisServer.path,
                                                                                token: FFAppState().Token,
                                                                                dataInicial: dateTimeFormat(
                                                                                  "yyyy-MM-dd",
                                                                                  functions.difDateWithInteger(_model.iDateSub, getCurrentTimestamp),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ),
                                                                                dataFinal: valueOrDefault<String>(
                                                                                  dateTimeFormat(
                                                                                    "yyyy-MM-dd",
                                                                                    getCurrentTimestamp,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  '2024-10-26',
                                                                                ),
                                                                              )))
                                                                            .future,
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: UnViewFrameLoadingWidget(),
                                                                            );
                                                                          }
                                                                          final unViewFrameVendasPgtoVendaDashTotaisPagamentoResponse =
                                                                              snapshot.data!;

                                                                          return wrapWithModel(
                                                                            model:
                                                                                _model.unViewFrameVendasPgtoModel,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                UnViewFrameVendasPgtoWidget(
                                                                              listJson: FFAppState().isConnected
                                                                                  ? VendaDashTotaisPagamentoCall.valueLista(
                                                                                      unViewFrameVendasPgtoVendaDashTotaisPagamentoResponse.jsonBody,
                                                                                    )!
                                                                                  : functions.emptyJsonList()!,
                                                                              totalAcumulado: valueOrDefault<double>(
                                                                                VendaDashTotaisPagamentoCall.totalAcumulado(
                                                                                  unViewFrameVendasPgtoVendaDashTotaisPagamentoResponse.jsonBody,
                                                                                ),
                                                                                0.0,
                                                                              ),
                                                                              numeroAcumulado: valueOrDefault<int>(
                                                                                VendaDashTotaisPagamentoCall.numeroAcumulado(
                                                                                  unViewFrameVendasPgtoVendaDashTotaisPagamentoResponse.jsonBody,
                                                                                ),
                                                                                0,
                                                                              ),
                                                                              dateInicial: getCurrentTimestamp,
                                                                              dateFinal: functions.difDateWithInteger(
                                                                                  valueOrDefault<int>(
                                                                                    _model.iDateSub,
                                                                                    0,
                                                                                  ),
                                                                                  getCurrentTimestamp)!,
                                                                            ),
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['unViewFrameVendasPgtoOnPageLoadAnimation']!);
                                                                        },
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                          ))
                                                            Expanded(
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 2.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Stack(
                                                                    children: [
                                                                      if (!_model
                                                                          .isAllLoading)
                                                                        FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future: (_model.apiRequestCompleter1 ??= Completer<ApiCallResponse>()
                                                                                ..complete(VendaDashTotaisVendedorCall.call(
                                                                                  ip: FFAppState().ConfigGlobaisServer.host,
                                                                                  porta: FFAppState().ConfigGlobaisServer.porta,
                                                                                  path: FFAppState().ConfigGlobaisServer.path,
                                                                                  token: FFAppState().Token,
                                                                                  dataInicial: dateTimeFormat(
                                                                                    "yyyy-MM-dd",
                                                                                    functions.difDateWithInteger(
                                                                                        valueOrDefault<int>(
                                                                                          _model.iDateSub,
                                                                                          0,
                                                                                        ),
                                                                                        getCurrentTimestamp),
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  dataFinal: dateTimeFormat(
                                                                                    "yyyy-MM-dd",
                                                                                    getCurrentTimestamp,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                )))
                                                                              .future,
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return const Center(
                                                                                child: UnViewFrameLoadingWidget(),
                                                                              );
                                                                            }
                                                                            final unviewFrameVendasVendedorDesktopVendaDashTotaisVendedorResponse =
                                                                                snapshot.data!;

                                                                            return wrapWithModel(
                                                                              model: _model.unviewFrameVendasVendedorDesktopModel,
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: UnviewFrameVendasVendedorWidget(
                                                                                valueJson: FFAppState().isConnected
                                                                                    ? VendaDashTotaisVendedorCall.valueLista(
                                                                                        unviewFrameVendasVendedorDesktopVendaDashTotaisVendedorResponse.jsonBody,
                                                                                      )!
                                                                                    : functions.emptyJsonList()!,
                                                                                dateInicial: getCurrentTimestamp,
                                                                                totalAcumulado: valueOrDefault<double>(
                                                                                  functions.valuesJsonToDouble(VendaDashTotaisVendedorCall.totalAcumulado(
                                                                                    unviewFrameVendasVendedorDesktopVendaDashTotaisVendedorResponse.jsonBody,
                                                                                  )),
                                                                                  0.0,
                                                                                ),
                                                                                numeroAcumulado: valueOrDefault<int>(
                                                                                  VendaDashTotaisVendedorCall.numeroAcumulado(
                                                                                    unviewFrameVendasVendedorDesktopVendaDashTotaisVendedorResponse.jsonBody,
                                                                                  ),
                                                                                  0,
                                                                                ),
                                                                                dateFinal: functions.difDateWithInteger(
                                                                                    valueOrDefault<int>(
                                                                                      _model.iDateSub,
                                                                                      0,
                                                                                    ),
                                                                                    getCurrentTimestamp)!,
                                                                              ),
                                                                            ).animateOnPageLoad(animationsMap['unviewFrameVendasVendedorOnPageLoadAnimation1']!);
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ].divide(const SizedBox(
                                                            width: 5.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5.0)),
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 250.0,
                                                        height: 600.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 2.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 250.0,
                                                                  height: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Visibility(
                                                                    visible: !_model
                                                                        .isAllLoading,
                                                                    child: FutureBuilder<
                                                                        ApiCallResponse>(
                                                                      future: (_model
                                                                              .apiRequestCompleter4 ??= Completer<ApiCallResponse>()
                                                                            ..complete(VendaDashTotaisVendedorCall.call(
                                                                              ip: FFAppState().ConfigGlobaisServer.host,
                                                                              porta: FFAppState().ConfigGlobaisServer.porta,
                                                                              path: FFAppState().ConfigGlobaisServer.path,
                                                                              token: FFAppState().Token,
                                                                              dataInicial: dateTimeFormat(
                                                                                "yyyy-MM-dd",
                                                                                functions.difDateWithInteger(
                                                                                    valueOrDefault<int>(
                                                                                      _model.iDateSub,
                                                                                      0,
                                                                                    ),
                                                                                    getCurrentTimestamp),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              dataFinal: dateTimeFormat(
                                                                                "yyyy-MM-dd",
                                                                                getCurrentTimestamp,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                            )))
                                                                          .future,
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return const Center(
                                                                            child:
                                                                                UnViewFrameLoadingWidget(),
                                                                          );
                                                                        }
                                                                        final unviewFrameVendasVendedorMobileVendaDashTotaisVendedorResponse =
                                                                            snapshot.data!;

                                                                        return wrapWithModel(
                                                                          model:
                                                                              _model.unviewFrameVendasVendedorMobileModel,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              UnviewFrameVendasVendedorWidget(
                                                                            valueJson: FFAppState().isConnected
                                                                                ? VendaDashTotaisVendedorCall.valueLista(
                                                                                    unviewFrameVendasVendedorMobileVendaDashTotaisVendedorResponse.jsonBody,
                                                                                  )!
                                                                                : functions.emptyJsonList()!,
                                                                            dateInicial:
                                                                                getCurrentTimestamp,
                                                                            totalAcumulado:
                                                                                valueOrDefault<double>(
                                                                              functions.valuesJsonToDouble(VendaDashTotaisVendedorCall.totalAcumulado(
                                                                                unviewFrameVendasVendedorMobileVendaDashTotaisVendedorResponse.jsonBody,
                                                                              )),
                                                                              0.0,
                                                                            ),
                                                                            numeroAcumulado:
                                                                                valueOrDefault<int>(
                                                                              VendaDashTotaisVendedorCall.numeroAcumulado(
                                                                                unviewFrameVendasVendedorMobileVendaDashTotaisVendedorResponse.jsonBody,
                                                                              ),
                                                                              0,
                                                                            ),
                                                                            dateFinal: functions.difDateWithInteger(
                                                                                valueOrDefault<int>(
                                                                                  _model.iDateSub,
                                                                                  0,
                                                                                ),
                                                                                getCurrentTimestamp)!,
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['unviewFrameVendasVendedorOnPageLoadAnimation2']!);
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 5.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 5.0)),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 1.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.0),
                                                        ),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 250.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.network(
                                                                '',
                                                              ).image,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.0),
                                                          ),
                                                          child: SizedBox(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            child: custom_widgets
                                                                .DataTimeChartEntradaSaida(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              sTitulo:
                                                                  'Entradas x Saídas',
                                                              sDateFormat:
                                                                  'dd/MM',
                                                              sListValueX:
                                                                  FFAppState()
                                                                      .sDataTeste,
                                                              sListValueX2:
                                                                  FFAppState()
                                                                      .sDataTeste,
                                                              vListValueY2: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          7, 7),
                                                                  (index) => random_data
                                                                      .randomDouble(
                                                                          0.0,
                                                                          10.0)),
                                                              vListValueY: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          7, 7),
                                                                  (index) => random_data
                                                                      .randomDouble(
                                                                          0.0,
                                                                          10.0)),
                                                              colorColumn1:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              colorColumn2:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                    ))
                                                      Expanded(
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 1.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.6,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      ListTile(
                                                                    leading:
                                                                        Icon(
                                                                      Icons
                                                                          .list,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                    title: Text(
                                                                      'Vendas por forma de pagamento',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    dense: true,
                                                                    contentPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          12.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Total vendido',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w300,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  'R\$ 24.228,42',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                12.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Text(
                                                                                  'N° de vendas',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w300,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  '269',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const Divider(
                                                                        thickness:
                                                                            1.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final teste = List.generate(
                                                                          random_data.randomInteger(
                                                                              10,
                                                                              10),
                                                                          (index) => random_data.randomInteger(
                                                                              10,
                                                                              10)).toList();

                                                                      return ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            teste.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                testeIndex) {
                                                                          final testeItem =
                                                                              teste[testeIndex];
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                0.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 400.0,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                border: Border.all(
                                                                                  color: Colors.transparent,
                                                                                  width: 0.0,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 45.0,
                                                                                          height: 45.0,
                                                                                          decoration: const BoxDecoration(
                                                                                            color: Color(0x4D0064DA),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsets.all(4.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  await showModalBottomSheet<bool>(
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        final datePickedCupertinoTheme = CupertinoTheme.of(context);
                                                                                                        return ScrollConfiguration(
                                                                                                          behavior: const MaterialScrollBehavior().copyWith(
                                                                                                            dragDevices: {
                                                                                                              PointerDeviceKind.mouse,
                                                                                                              PointerDeviceKind.touch,
                                                                                                              PointerDeviceKind.stylus,
                                                                                                              PointerDeviceKind.unknown
                                                                                                            },
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            height: MediaQuery.of(context).size.height / 3,
                                                                                                            width: MediaQuery.of(context).size.width,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            child: CupertinoTheme(
                                                                                                              data: datePickedCupertinoTheme.copyWith(
                                                                                                                textTheme: datePickedCupertinoTheme.textTheme.copyWith(
                                                                                                                  dateTimePickerTextStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                                                        fontFamily: 'Outfit',
                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: CupertinoDatePicker(
                                                                                                                mode: CupertinoDatePickerMode.date,
                                                                                                                minimumDate: DateTime(1900),
                                                                                                                initialDateTime: getCurrentTimestamp,
                                                                                                                maximumDate: DateTime(2050),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                use24hFormat: false,
                                                                                                                onDateTimeChanged: (newDateTime) => safeSetState(() {
                                                                                                                  _model.datePicked = newDateTime;
                                                                                                                }),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      });
                                                                                                },
                                                                                                child: FaIcon(
                                                                                                  FontAwesomeIcons.moneyCheckAlt,
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  size: 20.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(const SizedBox(height: 5.0)),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Dinheiro',
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: 'Figtree',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            'R\$ 18.779,86',
                                                                                            maxLines: 1,
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Figtree',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(height: 4.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                      children: [
                                                                                        Text(
                                                                                          '215',
                                                                                          maxLines: 1,
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Figtree',
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        ),
                                                                                      ].divide(const SizedBox(height: 5.0)),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['containerOnPageLoadAnimation2']!);
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ].addToStart(
                                                                  const SizedBox(
                                                                      height:
                                                                          12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                  ].divide(
                                                      const SizedBox(width: 5.0)),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 1.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.0),
                                                        ),
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 250.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.network(
                                                                '',
                                                              ).image,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.0),
                                                          ),
                                                          child: SizedBox(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            child: custom_widgets
                                                                .DataTimeChart(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              sTitulo:
                                                                  'Projeções para os próximos 15 dias',
                                                              sListValueX:
                                                                  FFAppState()
                                                                      .sDataTeste,
                                                              vListValueY: List.generate(
                                                                  random_data
                                                                      .randomInteger(
                                                                          7, 7),
                                                                  (index) => random_data
                                                                      .randomDouble(
                                                                          0.0,
                                                                          10.0)),
                                                              sDateFormat:
                                                                  'dd/MM',
                                                              bVisibleMarker:
                                                                  true,
                                                              colorLine: const Color(
                                                                  0xFFFF691A),
                                                              intervalAxisX:
                                                                  0.0,
                                                              numberDate: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                            ].divide(const SizedBox(height: 5.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 5.0))
                                      .addToStart(const SizedBox(height: 20.0))
                                      .addToEnd(const SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
