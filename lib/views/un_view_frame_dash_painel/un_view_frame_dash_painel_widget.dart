import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/frame_components/un_view_frame_card_menu/un_view_frame_card_menu_widget.dart';
import '/frame_components/un_view_frame_indicadores/un_view_frame_indicadores_widget.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
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

    return Stack(
      children: [
        SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
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
                        width:
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                            colorText: FlutterFlowTheme.of(context).info,
                            colorSubText: FlutterFlowTheme.of(context).info,
                            colorSubIcon: const Color(0xFF00D063),
                            sToolTipMessage: 'Total de vendas em reais.',
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Container(
                        width:
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                            colorBase: FlutterFlowTheme.of(context).error,
                            colorText: FlutterFlowTheme.of(context).info,
                            colorSubText: FlutterFlowTheme.of(context).info,
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
                        width:
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                            colorBase: FlutterFlowTheme.of(context).primary,
                            colorText: FlutterFlowTheme.of(context).info,
                            colorSubText: FlutterFlowTheme.of(context).info,
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
                        width:
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                            colorText: FlutterFlowTheme.of(context).info,
                            colorSubText: FlutterFlowTheme.of(context).info,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
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
                                    ChipData('Hoje', Icons.update_sharp),
                                    ChipData('Ontem', Icons.turn_left),
                                    ChipData('7 Dias', Icons.today_rounded),
                                    ChipData(
                                        '30 Dias', Icons.date_range_outlined),
                                    ChipData('3 Meses', Icons.calendar_month)
                                  ],
                                  onChanged: (val) async {
                                    safeSetState(() => _model.choiceChipsValue =
                                        val?.firstOrNull);
                                    _model.iDateSub = () {
                                      if (_model.choiceChipsValue == 'Hoje') {
                                        return 0;
                                      } else if (_model.choiceChipsValue ==
                                          'Ontem') {
                                        return 1;
                                      } else if (_model.choiceChipsValue ==
                                          '7 Dias') {
                                        return 7;
                                      } else if (_model.choiceChipsValue ==
                                          '30 Dias') {
                                        return 30;
                                      } else if (_model.choiceChipsValue ==
                                          '3 Meses') {
                                        return 90;
                                      } else {
                                        return 1;
                                      }
                                    }();
                                    safeSetState(() {});
                                    safeSetState(() =>
                                        _model.apiRequestCompleter = null);
                                    await _model.waitForApiRequestCompleted();
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 18.0,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 15.0, 5.0),
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 17.0,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 15.0, 5.0),
                                    elevation: 3.0,
                                    borderWidth: 0.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 5.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  initialized: _model.choiceChipsValue != null,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
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
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
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
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 0.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Container(
                                              width: 100.0,
                                              height: 250.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.network(
                                                    '',
                                                  ).image,
                                                ),
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
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 3,
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
                                                        width: double.infinity,
                                                        height: 246.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future: (_model
                                                                      .apiRequestCompleter ??=
                                                                  Completer<
                                                                      ApiCallResponse>()
                                                                    ..complete(
                                                                        VendaDashTotaisCall
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
                                                                          '?\$Filter=(DATA ge \'${dateTimeFormat(
                                                                        "MM-dd-yyyy",
                                                                        functions.difDateWithInteger(
                                                                            _model.iDateSub,
                                                                            getCurrentTimestamp),
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      )}\' and DATA le \'${dateTimeFormat(
                                                                        "MM-dd-yyyy",
                                                                        getCurrentTimestamp,
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
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  child:
                                                                      SpinKitRipple(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 60.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final stackVendaDashTotaisResponse =
                                                                snapshot.data!;

                                                            return Stack(
                                                              children: [
                                                                if ((VendaDashTotaisCall
                                                                            .valueList(
                                                                          stackVendaDashTotaisResponse
                                                                              .jsonBody,
                                                                        )?.length !=
                                                                        0) &&
                                                                    responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                  SizedBox(
                                                                    width: double
                                                                        .infinity,
                                                                    height: double
                                                                        .infinity,
                                                                    child: custom_widgets
                                                                        .DataTimeChart(
                                                                      width: double
                                                                          .infinity,
                                                                      height: double
                                                                          .infinity,
                                                                      sTitulo:
                                                                          'Vendas por Período ${_model.choiceChipsValue}',
                                                                      sListValueX:
                                                                          functions
                                                                              .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                        stackVendaDashTotaisResponse
                                                                            .jsonBody,
                                                                      )?.toList())!,
                                                                      vListValueY:
                                                                          VendaDashTotaisCall
                                                                              .valueY(
                                                                        stackVendaDashTotaisResponse
                                                                            .jsonBody,
                                                                      )!,
                                                                      sDateFormat:
                                                                          'dd/MM',
                                                                      bVisibleMarker:
                                                                          true,
                                                                      colorLine:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      intervalAxisX:
                                                                          0.0,
                                                                    ),
                                                                  ),
                                                                if (VendaDashTotaisCall
                                                                        .valueList(
                                                                      stackVendaDashTotaisResponse
                                                                          .jsonBody,
                                                                    )?.length ==
                                                                    0)
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .unViewFrameVazioModel1,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    updateOnChange:
                                                                        true,
                                                                    child:
                                                                        UnViewFrameVazioWidget(
                                                                      sTitulo: !stackVendaDashTotaisResponse
                                                                              .succeeded
                                                                          ? 'Falha ao realizar conexão'
                                                                          : 'Não existem dados nesse período',
                                                                      sMessage: !stackVendaDashTotaisResponse
                                                                              .succeeded
                                                                          ? 'Verifique sua conexão e tente novamente!'
                                                                          : 'Verifique seus filtros e tente novamente!',
                                                                    ),
                                                                  ),
                                                                if (VendaDashTotaisCall
                                                                        .valueList(
                                                                      stackVendaDashTotaisResponse
                                                                          .jsonBody,
                                                                    )?.length !=
                                                                    0)
                                                                  SizedBox(
                                                                    width: double
                                                                        .infinity,
                                                                    height: double
                                                                        .infinity,
                                                                    child: custom_widgets
                                                                        .DataTimeChartWithArea(
                                                                      width: double
                                                                          .infinity,
                                                                      height: double
                                                                          .infinity,
                                                                      sTitulo:
                                                                          'Vendas por Período ${_model.choiceChipsValue}',
                                                                      sDateFormat:
                                                                          'dd/MM',
                                                                      bVisibleMarker:
                                                                          true,
                                                                      colorLine:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      intervalAxisX:
                                                                          0.0,
                                                                      colorLine2:
                                                                          const Color(
                                                                              0xFF003DE1),
                                                                      sListValueX:
                                                                          functions
                                                                              .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                        stackVendaDashTotaisResponse
                                                                            .jsonBody,
                                                                      )?.toList())!,
                                                                      vListValueY:
                                                                          VendaDashTotaisCall
                                                                              .valueY(
                                                                        stackVendaDashTotaisResponse
                                                                            .jsonBody,
                                                                      )!,
                                                                    ),
                                                                  ),
                                                              ],
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
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Expanded(
                                            flex: 1,
                                            child: wrapWithModel(
                                              model: _model
                                                  .unViewFrameIndicadoresModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  const UnViewFrameIndicadoresWidget(),
                                            ),
                                          ),
                                      ]
                                          .divide(const SizedBox(width: 10.0))
                                          .around(const SizedBox(width: 10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          height: 270.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model
                                                .unViewFrameIndicadoresModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                const UnViewFrameIndicadoresWidget(),
                                          ),
                                        ),
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 250.0,
                                            height: 250.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 2.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Container(
                                                      width: 250.0,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
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
                                                                .circular(12.0),
                                                      ),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            VendaDashTotaisCall
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
                                                              '?\$Filter=(DATA ge \'${dateTimeFormat(
                                                            "MM-dd-yyyy",
                                                            functions
                                                                .listDateSemanal(
                                                                    getCurrentTimestamp)
                                                                ?.first,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\' and DATA le \'${dateTimeFormat(
                                                            "MM-dd-yyyy",
                                                            getCurrentTimestamp,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\' )',
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 60.0,
                                                                height: 60.0,
                                                                child:
                                                                    SpinKitRipple(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 60.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final stackVendaDashTotaisResponse =
                                                              snapshot.data!;

                                                          return Stack(
                                                            children: [
                                                              if (VendaDashTotaisCall
                                                                      .valueList(
                                                                    stackVendaDashTotaisResponse
                                                                        .jsonBody,
                                                                  )?.length ==
                                                                  0)
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .unViewFrameVazioModel2,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  updateOnChange:
                                                                      true,
                                                                  child:
                                                                      UnViewFrameVazioWidget(
                                                                    sTitulo: !stackVendaDashTotaisResponse
                                                                            .succeeded
                                                                        ? 'Falha ao realizar conexão'
                                                                        : 'Não existem dados nesse período',
                                                                    sMessage: !stackVendaDashTotaisResponse
                                                                            .succeeded
                                                                        ? 'Verifique sua conexão e tente novamente!'
                                                                        : 'Verifique seus filtros e tente novamente!',
                                                                  ),
                                                                ),
                                                              if (VendaDashTotaisCall
                                                                      .valueList(
                                                                    stackVendaDashTotaisResponse
                                                                        .jsonBody,
                                                                  )?.length !=
                                                                  0)
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  child: custom_widgets
                                                                      .DataTimeChart(
                                                                    width: double
                                                                        .infinity,
                                                                    height: double
                                                                        .infinity,
                                                                    sTitulo:
                                                                        'Venda Semanal',
                                                                    sListValueX:
                                                                        functions
                                                                            .listDateSemanal(getCurrentTimestamp)!,
                                                                    vListValueY: functions.listDateSemanalDouble(
                                                                        getCurrentTimestamp,
                                                                        functions
                                                                            .dateFormatToDateTimeList(VendaDashTotaisCall.valueX(
                                                                              stackVendaDashTotaisResponse.jsonBody,
                                                                            )?.toList())
                                                                            ?.toList(),
                                                                        VendaDashTotaisCall.valueY(
                                                                          stackVendaDashTotaisResponse
                                                                              .jsonBody,
                                                                        )?.toList())!,
                                                                    sDateFormat:
                                                                        'E',
                                                                    bVisibleMarker:
                                                                        true,
                                                                    colorLine: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    intervalAxisX:
                                                                        1.0,
                                                                  ),
                                                                ),
                                                            ],
                                                          );
                                                        },
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
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: 250.0,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
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
                                                                      12.0),
                                                        ),
                                                        child: SizedBox(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          child: custom_widgets
                                                              .DataTimeChartBarHorizontal(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            sTitulo:
                                                                'Vendas por Horarios',
                                                            sDateFormat:
                                                                'HH:mm',
                                                            bVisibleMarker:
                                                                false,
                                                            colorLine:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            intervalAxisX: 0.0,
                                                            colorLine2:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                        1.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ].divide(const SizedBox(width: 5.0)),
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
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(7.0),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 250.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      '',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: custom_widgets
                                                      .DataTimeChartEntradaSaida(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    sTitulo:
                                                        'Entradas x Saídas',
                                                    sDateFormat: 'dd/MM',
                                                    sListValueX:
                                                        FFAppState().sDataTeste,
                                                    sListValueX2:
                                                        FFAppState().sDataTeste,
                                                    vListValueY2: List.generate(
                                                        random_data
                                                            .randomInteger(
                                                                7, 7),
                                                        (index) => random_data
                                                            .randomDouble(
                                                                0.0, 10.0)),
                                                    vListValueY: List.generate(
                                                        random_data
                                                            .randomInteger(
                                                                7, 7),
                                                        (index) => random_data
                                                            .randomDouble(
                                                                0.0, 10.0)),
                                                  ),
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
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 340.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.6,
                                              constraints: const BoxConstraints(
                                                minWidth: 200.0,
                                                minHeight: 340.0,
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
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ListTile(
                                                    leading: Icon(
                                                      Icons.list,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    title: Text(
                                                      'Vendas por forma de pagamento',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                    ),
                                                    dense: true,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12.0,
                                                                12.0,
                                                                12.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Total vendido',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
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
                                                                  Text(
                                                                    'R\$ 24.228,42',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    'N° de vendas',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
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
                                                                  Text(
                                                                    '269',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Divider(
                                                          thickness: 1.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Builder(
                                                      builder: (context) {
                                                        final teste = List.generate(
                                                            random_data
                                                                .randomInteger(
                                                                    10, 10),
                                                            (index) => random_data
                                                                .randomInteger(
                                                                    10,
                                                                    10)).toList();

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              teste.length,
                                                          itemBuilder: (context,
                                                              testeIndex) {
                                                            final testeItem =
                                                                teste[
                                                                    testeIndex];
                                                            return Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              child: Container(
                                                                width: 400.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 0.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                45.0,
                                                                            height:
                                                                                45.0,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              color: Color(0x4D0064DA),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Align(
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
                                                                                          final datePicked1CupertinoTheme = CupertinoTheme.of(context);
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
                                                                                                data: datePicked1CupertinoTheme.copyWith(
                                                                                                  textTheme: datePicked1CupertinoTheme.textTheme.copyWith(
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
                                                                                                    _model.datePicked1 = newDateTime;
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
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
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
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            '215',
                                                                            maxLines:
                                                                                1,
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
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'containerOnPageLoadAnimation1']!);
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ].addToStart(
                                                    const SizedBox(height: 12.0)),
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
                                              color: Colors.transparent,
                                              elevation: 1.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.6,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    ListTile(
                                                      leading: Icon(
                                                        Icons.list,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      title: Text(
                                                        'Vendas por forma de pagamento',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                      dense: true,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  12.0,
                                                                  12.0,
                                                                  12.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Total vendido',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
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
                                                                    Text(
                                                                      'R\$ 24.228,42',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Text(
                                                                      'N° de vendas',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
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
                                                                    Text(
                                                                      '269',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(
                                                            thickness: 1.0,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Builder(
                                                        builder: (context) {
                                                          final teste = List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      10, 10),
                                                              (index) => random_data
                                                                  .randomInteger(
                                                                      10,
                                                                      10)).toList();

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                teste.length,
                                                            itemBuilder:
                                                                (context,
                                                                    testeIndex) {
                                                              final testeItem =
                                                                  teste[
                                                                      testeIndex];
                                                              return Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 0.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 400.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          0.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
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
                                                                                            final datePicked2CupertinoTheme = CupertinoTheme.of(context);
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
                                                                                                  data: datePicked2CupertinoTheme.copyWith(
                                                                                                    textTheme: datePicked2CupertinoTheme.textTheme.copyWith(
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
                                                                                                      _model.datePicked2 = newDateTime;
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
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children:
                                                                              [
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
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation2']!);
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ].addToStart(
                                                      const SizedBox(height: 12.0)),
                                                ),
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
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(7.0),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 250.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      '',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: custom_widgets
                                                      .DataTimeChart(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    sTitulo:
                                                        'Projeções para os próximos 15 dias',
                                                    sListValueX:
                                                        FFAppState().sDataTeste,
                                                    vListValueY: List.generate(
                                                        random_data
                                                            .randomInteger(
                                                                7, 7),
                                                        (index) => random_data
                                                            .randomDouble(
                                                                0.0, 10.0)),
                                                    sDateFormat: 'dd/MM',
                                                    bVisibleMarker: true,
                                                    colorLine:
                                                        const Color(0xFFFF691A),
                                                    intervalAxisX: 0.0,
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
    );
  }
}
