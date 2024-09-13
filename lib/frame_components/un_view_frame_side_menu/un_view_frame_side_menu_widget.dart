import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'un_view_frame_side_menu_model.dart';
export 'un_view_frame_side_menu_model.dart';

class UnViewFrameSideMenuWidget extends StatefulWidget {
  const UnViewFrameSideMenuWidget({
    super.key,
    required this.pageSelected,
    this.callBackHome,
    this.callBackPainel,
    bool? isExpansible,
    this.mouseRegionEnter,
    this.mouseRegionExit,
    this.callBackClientes,
    required this.callBackVendas,
    required this.callBackProdutos,
  }) : isExpansible = isExpansible ?? false;

  final Pages? pageSelected;
  final Future Function()? callBackHome;
  final Future Function()? callBackPainel;
  final bool isExpansible;
  final Future Function()? mouseRegionEnter;
  final Future Function()? mouseRegionExit;
  final Future Function()? callBackClientes;
  final Future Function()? callBackVendas;
  final Future Function()? callBackProdutos;

  @override
  State<UnViewFrameSideMenuWidget> createState() =>
      _UnViewFrameSideMenuWidgetState();
}

class _UnViewFrameSideMenuWidgetState extends State<UnViewFrameSideMenuWidget>
    with TickerProviderStateMixin {
  late UnViewFrameSideMenuModel _model;

  var hasColumnTriggered1 = false;
  var hasColumnTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameSideMenuModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.subMenuDashboard = false;
      _model.subMenuCadastro = false;
      _model.updatePage(() {});
      if (animationsMap['columnOnActionTriggerAnimation1'] != null) {
        await animationsMap['columnOnActionTriggerAnimation1']!
            .controller
            .reverse();
      }
      if (animationsMap['columnOnActionTriggerAnimation2'] != null) {
        await animationsMap['columnOnActionTriggerAnimation2']!
            .controller
            .reverse();
      }
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'columnOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 330.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 330.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'columnOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 330.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 330.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconOnPageLoadAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 650.0.ms,
            color: const Color(0xFF0064DA),
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 650.0.ms,
            color: const Color(0xFF0064DA),
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
        await widget.mouseRegionEnter?.call();
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
        await widget.mouseRegionExit?.call();
      }),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Material(
              color: Colors.transparent,
              elevation: 0.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(12.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(12.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).sideMenu,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(12.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).sideMenu,
                      width: 0.0,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 10.0, 0.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.subMenuDashboard = false;
                                    _model.subMenuCadastro = false;
                                    safeSetState(() {});
                                    await widget.callBackHome?.call();
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color:
                                            widget.pageSelected == Pages.Inicio
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Stack(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        7.0, 0.0, 7.0, 0.0),
                                                child: Icon(
                                                  Icons.home_sharp,
                                                  color: widget.pageSelected ==
                                                          Pages.Inicio
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .info
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  size: 24.0,
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconOnPageLoadAnimation1']!),
                                              ),
                                            ],
                                          ),
                                          if (widget.isExpansible)
                                            Expanded(
                                              child: Text(
                                                'Ínicio',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: widget
                                                                  .pageSelected ==
                                                              Pages.Inicio
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .info
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (!_model.subMenuDashboard) {
                                            _model.subMenuDashboard = true;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation1'] !=
                                                null) {
                                              safeSetState(() =>
                                                  hasColumnTriggered1 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'columnOnActionTriggerAnimation1']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                            await widget.callBackPainel?.call();
                                          } else {
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation1'] !=
                                                null) {
                                              animationsMap[
                                                      'columnOnActionTriggerAnimation1']!
                                                  .controller
                                                  .reverse();
                                            }
                                            _model.subMenuDashboard = false;
                                            safeSetState(() {});
                                          }
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            constraints: const BoxConstraints(
                                              minHeight: 50.0,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: (widget
                                                                      .pageSelected ==
                                                                  Pages
                                                                      .Painel) ||
                                                              (widget.pageSelected ==
                                                                  Pages
                                                                      .Vendas) ||
                                                              (widget.pageSelected ==
                                                                  Pages
                                                                      .Financeiro)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Stack(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          7.0,
                                                                          0.0,
                                                                          7.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .bar_chart_rounded,
                                                                color: (widget
                                                                                .pageSelected ==
                                                                            Pages
                                                                                .Painel) ||
                                                                        (widget.pageSelected ==
                                                                            Pages
                                                                                .Vendas) ||
                                                                        (widget.pageSelected ==
                                                                            Pages
                                                                                .Financeiro)
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .info
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                size: 24.0,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation2']!),
                                                            ),
                                                          ],
                                                        ),
                                                        if (widget
                                                            .isExpansible)
                                                          Expanded(
                                                            child: Text(
                                                              'Dashboard',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: (widget.pageSelected == Pages.Painel) ||
                                                                            (widget.pageSelected ==
                                                                                Pages
                                                                                    .Vendas) ||
                                                                            (widget.pageSelected ==
                                                                                Pages
                                                                                    .Financeiro)
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        if (widget
                                                                .isExpansible &&
                                                            _model
                                                                .subMenuDashboard)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        7.0,
                                                                        0.0,
                                                                        7.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: (widget
                                                                              .pageSelected ==
                                                                          Pages
                                                                              .Painel) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Vendas) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Financeiro)
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .info
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              size: 15.0,
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'iconOnPageLoadAnimation3']!),
                                                          ),
                                                        if (widget
                                                                .isExpansible &&
                                                            !_model
                                                                .subMenuDashboard)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        7.0,
                                                                        0.0,
                                                                        7.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: (widget
                                                                              .pageSelected ==
                                                                          Pages
                                                                              .Painel) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Vendas) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Financeiro)
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .info
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              size: 15.0,
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'iconOnPageLoadAnimation4']!),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (_model.subMenuDashboard)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  18.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
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
                                                                await widget
                                                                    .callBackPainel
                                                                    ?.call();
                                                                _model.subMenuCadastro =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
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
                                                                              12.0),
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
                                                                            12.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Stack(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                7.0,
                                                                                0.0,
                                                                                7.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.bubble_chart_sharp,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 24.0,
                                                                            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation5']!),
                                                                          ),
                                                                          Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                0.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 3.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(
                                                                                color: widget.pageSelected == Pages.Painel ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (widget
                                                                          .isExpansible)
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            'Painel',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
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
                                                                await widget
                                                                    .callBackVendas
                                                                    ?.call();
                                                                _model.subMenuCadastro =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
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
                                                                              12.0),
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
                                                                            12.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Stack(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                7.0,
                                                                                0.0,
                                                                                7.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.shopping_bag_rounded,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 24.0,
                                                                            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation6']!),
                                                                          ),
                                                                          Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                0.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 3.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(
                                                                                color: widget.pageSelected == Pages.Vendas ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (widget
                                                                          .isExpansible)
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            'Vendas',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
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
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              7.0,
                                                                              0.0,
                                                                              7.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.attach_money_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            size:
                                                                                24.0,
                                                                          ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation7']!),
                                                                        ),
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              0.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                3.0,
                                                                            height:
                                                                                30.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: widget.pageSelected == Pages.Financeiro ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    if (widget
                                                                        .isExpansible)
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          'Financeiro',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Outfit',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'columnOnActionTriggerAnimation1']!,
                                                          hasBeenTriggered:
                                                              hasColumnTriggered1),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (!_model.subMenuCadastro) {
                                            _model.subMenuCadastro = true;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation2'] !=
                                                null) {
                                              safeSetState(() =>
                                                  hasColumnTriggered2 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'columnOnActionTriggerAnimation2']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          } else {
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation2'] !=
                                                null) {
                                              animationsMap[
                                                      'columnOnActionTriggerAnimation2']!
                                                  .controller
                                                  .reverse();
                                            }
                                            _model.subMenuCadastro = false;
                                            safeSetState(() {});
                                          }
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            constraints: const BoxConstraints(
                                              minHeight: 50.0,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: (widget
                                                                      .pageSelected ==
                                                                  Pages
                                                                      .Clientes) ||
                                                              (widget.pageSelected ==
                                                                  Pages
                                                                      .Produtos) ||
                                                              (widget.pageSelected ==
                                                                  Pages
                                                                      .Forncedores)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Stack(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          7.0,
                                                                          0.0,
                                                                          7.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .playlist_add_circle_rounded,
                                                                color: (widget
                                                                                .pageSelected ==
                                                                            Pages
                                                                                .Clientes) ||
                                                                        (widget.pageSelected ==
                                                                            Pages
                                                                                .Produtos) ||
                                                                        (widget.pageSelected ==
                                                                            Pages
                                                                                .Forncedores)
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .info
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                size: 24.0,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation8']!),
                                                            ),
                                                          ],
                                                        ),
                                                        if (widget
                                                            .isExpansible)
                                                          Expanded(
                                                            child: Text(
                                                              'Cadastros',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: (widget.pageSelected == Pages.Clientes) ||
                                                                            (widget.pageSelected ==
                                                                                Pages
                                                                                    .Produtos) ||
                                                                            (widget.pageSelected ==
                                                                                Pages
                                                                                    .Forncedores)
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        if (_model
                                                                .subMenuCadastro &&
                                                            widget
                                                                .isExpansible)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        7.0,
                                                                        0.0,
                                                                        7.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_sharp,
                                                              color: (widget
                                                                              .pageSelected ==
                                                                          Pages
                                                                              .Clientes) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Produtos) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Forncedores)
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .info
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              size: 15.0,
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'iconOnPageLoadAnimation9']!),
                                                          ),
                                                        if (widget
                                                                .isExpansible &&
                                                            !_model
                                                                .subMenuCadastro)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        7.0,
                                                                        0.0,
                                                                        7.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: (widget
                                                                              .pageSelected ==
                                                                          Pages
                                                                              .Clientes) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Produtos) ||
                                                                      (widget.pageSelected ==
                                                                          Pages
                                                                              .Forncedores)
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .info
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              size: 15.0,
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'iconOnPageLoadAnimation10']!),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (_model.subMenuCadastro)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  18.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
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
                                                                await widget
                                                                    .callBackClientes
                                                                    ?.call();
                                                                _model.subMenuDashboard =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
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
                                                                              12.0),
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
                                                                            12.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Stack(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                7.0,
                                                                                0.0,
                                                                                7.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.groups,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 20.0,
                                                                            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation11']!),
                                                                          ),
                                                                          Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                0.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 3.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(
                                                                                color: widget.pageSelected == Pages.Clientes ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (widget
                                                                          .isExpansible)
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            'Clientes',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
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
                                                                await widget
                                                                    .callBackProdutos
                                                                    ?.call();
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
                                                                              12.0),
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
                                                                            12.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Stack(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                7.0,
                                                                                0.0,
                                                                                7.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.boxOpen,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 15.0,
                                                                            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation12']!),
                                                                          ),
                                                                          Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                0.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 3.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(
                                                                                color: widget.pageSelected == Pages.Produtos ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (widget
                                                                          .isExpansible)
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            'Produtos',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
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
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              7.0,
                                                                              0.0,
                                                                              7.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.fire_truck_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            size:
                                                                                22.0,
                                                                          ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation13']!),
                                                                        ),
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              0.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                3.0,
                                                                            height:
                                                                                30.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: widget.pageSelected == Pages.Forncedores ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    if (widget
                                                                        .isExpansible)
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          'Fornecedores',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Outfit',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'columnOnActionTriggerAnimation2']!,
                                                          hasBeenTriggered:
                                                              hasColumnTriggered2),
                                                    ),
                                                ],
                                              ),
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Stack(
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 0.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Container(
                                                width: 5.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                            ),
                                            badges.Badge(
                                              badgeContent: Text(
                                                '1',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              showBadge: true,
                                              shape: badges.BadgeShape.circle,
                                              badgeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              elevation: 2.0,
                                              padding: const EdgeInsets.all(7.0),
                                              position: badges.BadgePosition
                                                  .topStart(),
                                              animationType: badges
                                                  .BadgeAnimationType.scale,
                                              toAnimate: true,
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 40.0,
                                                  icon: Icon(
                                                    Icons.notifications,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconButtonOnPageLoadAnimation']!),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Expanded(
                                          child: Text(
                                            'Ínicio',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      Expanded(
                                        child: Text(
                                          'Notificações',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ].divide(const SizedBox(height: 5.0)),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 0.5,
                        indent: 20.0,
                        endIndent: 20.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'unViewFormSettings',
                                queryParameters: {
                                  'iTabInitial': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50.0,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 7.0, 0.0),
                                          child: Icon(
                                            Icons.settings_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            size: 24.0,
                                          ).animateOnPageLoad(animationsMap[
                                              'iconOnPageLoadAnimation14']!),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Expanded(
                                    child: Text(
                                      'Ínicio',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                if (widget.isExpansible)
                                  Expanded(
                                    child: Text(
                                      'Configuração',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth(
                                'unViewFormLogin', context.mounted);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: SizedBox(
                                  height: 50.0,
                                  child: Stack(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            7.0, 0.0, 7.0, 0.0),
                                        child: Icon(
                                          Icons.exit_to_app_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 24.0,
                                        ).animateOnPageLoad(animationsMap[
                                            'iconOnPageLoadAnimation15']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (widget.isExpansible)
                                Expanded(
                                  child: Text(
                                    'Loggout',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ].addToStart(SizedBox(
                        height:
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 40.0
                                : 0.0)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
