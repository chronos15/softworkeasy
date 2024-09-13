import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_card_hor/un_view_frame_card_hor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'un_view_frame_home_model.dart';
export 'un_view_frame_home_model.dart';

class UnViewFrameHomeWidget extends StatefulWidget {
  const UnViewFrameHomeWidget({
    super.key,
    required this.actionDashboard,
    required this.actionCliente,
    required this.actionVendas,
    required this.actionProdutos,
  });

  final Future Function()? actionDashboard;
  final Future Function()? actionCliente;
  final Future Function()? actionVendas;
  final Future Function()? actionProdutos;

  @override
  State<UnViewFrameHomeWidget> createState() => _UnViewFrameHomeWidgetState();
}

class _UnViewFrameHomeWidgetState extends State<UnViewFrameHomeWidget>
    with TickerProviderStateMixin {
  late UnViewFrameHomeModel _model;

  var hasWrapTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameHomeModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().menuRapidoExpanded) {
        FFAppState().menuRapidoExpanded = true;
        FFAppState().update(() {});
        if (animationsMap['wrapOnActionTriggerAnimation'] != null) {
          safeSetState(() => hasWrapTriggered = true);
          SchedulerBinding.instance.addPostFrameCallback((_) async =>
              animationsMap['wrapOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0));
        }
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          animationsMap['iconOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
      } else {
        FFAppState().menuRapidoExpanded = false;
        FFAppState().update(() {});
        await Future.wait([
          Future(() async {
            if (animationsMap['iconOnActionTriggerAnimation'] != null) {
              animationsMap['iconOnActionTriggerAnimation']!
                  .controller
                  .reverse();
            }
          }),
          Future(() async {
            if (animationsMap['wrapOnActionTriggerAnimation'] != null) {
              await animationsMap['wrapOnActionTriggerAnimation']!
                  .controller
                  .reverse();
            }
          }),
        ]);
        HapticFeedback.lightImpact();
      }
    });

    animationsMap.addAll({
      'wrapOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
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
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 650.0.ms,
            color: const Color(0xFF0064DA),
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 0.5,
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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (FFAppState().menuRapidoExpanded)
                            Expanded(
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
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.actionProdutos?.call();
                                    },
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            380.0) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointSmall) {
                                          return 160.0;
                                        } else {
                                          return 170.0;
                                        }
                                      }(),
                                      height: 60.0,
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.unViewFrameCardHorModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: UnViewFrameCardHorWidget(
                                          sTitulo: 'Produtos',
                                          icon: FaIcon(
                                            FontAwesomeIcons.boxOpen,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 20.0,
                                          ),
                                          colorGrad01:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          colorGrad02: const Color(0xFFCB0002),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.actionCliente?.call();
                                    },
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            380.0) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointSmall) {
                                          return 160.0;
                                        } else {
                                          return 170.0;
                                        }
                                      }(),
                                      height: 60.0,
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.unViewFrameCardHorModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: UnViewFrameCardHorWidget(
                                          sTitulo: 'Clientes',
                                          icon: Icon(
                                            Icons.groups,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 25.0,
                                          ),
                                          colorGrad01: const Color(0xFF6F0092),
                                          colorGrad02: const Color(0xFF54A4FF),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.actionVendas?.call();
                                    },
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            380.0) {
                                          return 150.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointSmall) {
                                          return 160.0;
                                        } else {
                                          return 170.0;
                                        }
                                      }(),
                                      height: 60.0,
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.unViewFrameCardHorModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: UnViewFrameCardHorWidget(
                                          sTitulo: 'Vendas',
                                          icon: Icon(
                                            Icons.shopping_bag,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 25.0,
                                          ),
                                          colorGrad01: const Color(0xFFFF8100),
                                          colorGrad02: const Color(0xFFFF8100),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          380.0) {
                                        return 150.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointSmall) {
                                        return 160.0;
                                      } else {
                                        return 170.0;
                                      }
                                    }(),
                                    height: 60.0,
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.unViewFrameCardHorModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: UnViewFrameCardHorWidget(
                                        sTitulo: 'Financeiro',
                                        icon: Icon(
                                          Icons.attach_money_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 25.0,
                                        ),
                                        colorGrad01: const Color(0xFF00BF64),
                                        colorGrad02: const Color(0xFF067100),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          380.0) {
                                        return 150.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointSmall) {
                                        return 160.0;
                                      } else {
                                        return 170.0;
                                      }
                                    }(),
                                    height: 60.0,
                                    decoration: const BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.unViewFrameCardHorModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: UnViewFrameCardHorWidget(
                                        sTitulo: 'DF-e',
                                        icon: Icon(
                                          Icons.sticky_note_2,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 25.0,
                                        ),
                                        colorGrad01:
                                            FlutterFlowTheme.of(context).error,
                                        colorGrad02: const Color(0xFF6F0092),
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnActionTrigger(
                                  animationsMap[
                                      'wrapOnActionTriggerAnimation']!,
                                  hasBeenTriggered: hasWrapTriggered),
                            ),
                          Container(
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        7.0, 0.0, 7.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (FFAppState().menuRapidoExpanded) {
                                          FFAppState().menuRapidoExpanded =
                                              false;
                                          FFAppState().update(() {});
                                          if (animationsMap[
                                                  'wrapOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'wrapOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'iconOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'iconOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                        } else {
                                          FFAppState().menuRapidoExpanded =
                                              true;
                                          FFAppState().update(() {});
                                          await Future.wait([
                                            Future(() async {
                                              if (animationsMap[
                                                      'iconOnActionTriggerAnimation'] !=
                                                  null) {
                                                animationsMap[
                                                        'iconOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                            }),
                                            Future(() async {
                                              if (animationsMap[
                                                      'wrapOnActionTriggerAnimation'] !=
                                                  null) {
                                                safeSetState(() =>
                                                    hasWrapTriggered = true);
                                                SchedulerBinding.instance
                                                    .addPostFrameCallback(
                                                        (_) async =>
                                                            await animationsMap[
                                                                    'wrapOnActionTriggerAnimation']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0));
                                              }
                                            }),
                                          ]);
                                        }
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                    )
                                        .animateOnPageLoad(animationsMap[
                                            'iconOnPageLoadAnimation']!)
                                        .animateOnActionTrigger(
                                          animationsMap[
                                              'iconOnActionTriggerAnimation']!,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
          .divide(const SizedBox(height: 10.0))
          .addToStart(const SizedBox(height: 10.0))
          .addToEnd(const SizedBox(height: 10.0)),
    );
  }
}
