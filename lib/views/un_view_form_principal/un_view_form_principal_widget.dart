import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import '/frame_components/un_view_frame_profile/un_view_frame_profile_widget.dart';
import '/frame_components/un_view_frame_side_menu/un_view_frame_side_menu_widget.dart';
import '/views/un_view_frame_dash_painel/un_view_frame_dash_painel_widget.dart';
import '/views/un_view_frame_home/un_view_frame_home_widget.dart';
import '/views/un_view_frame_produtos/un_view_frame_produtos_widget.dart';
import '/views/un_view_frame_vendas/un_view_frame_vendas_widget.dart';
import '/views/un_view_lista_clientes/un_view_lista_clientes_widget.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'un_view_form_principal_model.dart';
export 'un_view_form_principal_model.dart';

class UnViewFormPrincipalWidget extends StatefulWidget {
  const UnViewFormPrincipalWidget({super.key});

  @override
  State<UnViewFormPrincipalWidget> createState() =>
      _UnViewFormPrincipalWidgetState();
}

class _UnViewFormPrincipalWidgetState extends State<UnViewFormPrincipalWidget>
    with TickerProviderStateMixin {
  late UnViewFormPrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFormPrincipalModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Function() navigate = () {};
      if (FFAppState().isOpenAppLoggin &&
          !FFAppState().ConfigGlobais.logPersistente) {
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        navigate =
            () => context.goNamedAuth('unViewFormLogin', context.mounted);
        FFAppState().isOpenAppLoggin = false;
        safeSetState(() {});
        await actions.elegantNotificationInfo(
          context,
          'Deslogado',
          'Usuário redirecionado para a área de login',
          FlutterFlowTheme.of(context).primaryText,
          FlutterFlowTheme.of(context).primaryBackground,
          () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return MediaQuery.sizeOf(context).width;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 360.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 360.0;
            } else {
              return 360.0;
            }
          }(),
        );

        navigate();
        return;
      } else {
        FFAppState().modalUserMenu = false;
        FFAppState().SideMenuExpansable = true;
        FFAppState().update(() {});
        if (animationsMap['columnOnActionTriggerAnimation'] != null) {
          await animationsMap['columnOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
        _model.instantVerifyToken = InstantTimer.periodic(
          duration: const Duration(milliseconds: 300000),
          callback: (timer) async {
            if (!functions.verifyToken(currentAuthTokenExpiration)!) {
              await action_blocks.getToken(context);
              safeSetState(() {});
              authManager.updateAuthUserData(
                authenticationToken: FFAppState().Token,
                refreshToken: FFAppState().Token,
                tokenExpiration:
                    functions.addTimeDouble(60.0, getCurrentTimestamp),
                authUid: currentUserUid,
                userData: UsuarioStruct(
                  idCodigo: currentUserData?.idCodigo,
                  codempresa: currentUserData?.codempresa,
                  usuario: currentUserData?.usuario,
                  nome: currentUserData?.nome,
                  funcao: currentUserData?.funcao,
                  inserir: currentUserData?.inserir,
                  editar: currentUserData?.editar,
                  excluir: currentUserData?.excluir,
                ),
              );
              await actions.elegantNotificationInfo(
                context,
                'Atualização',
                'Acesso ao servidor atualizado com sucesso.',
                FlutterFlowTheme.of(context).primaryText,
                FlutterFlowTheme.of(context).primaryBackground,
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return MediaQuery.sizeOf(context).width;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 360.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 360.0;
                  } else {
                    return 360.0;
                  }
                }(),
              );

              navigate();
              return;
            }
          },
          startImmediately: true,
        );
      }

      navigate();
    });

    animationsMap.addAll({
      'columnOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 30.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 30.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 30.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: SizedBox(
          width: 220.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.unViewFrameSideMenuModel2,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: UnViewFrameSideMenuWidget(
                pageSelected: () {
                  if (_model.pageSelected == Pages.Inicio) {
                    return Pages.Inicio;
                  } else if (_model.pageSelected == Pages.Painel) {
                    return Pages.Painel;
                  } else if (_model.pageSelected == Pages.Vendas) {
                    return Pages.Vendas;
                  } else if (_model.pageSelected == Pages.Produtos) {
                    return Pages.Produtos;
                  } else {
                    return Pages.Clientes;
                  }
                }(),
                isExpansible: FFAppState().SideMenuExpansable,
                callBackHome: () async {
                  _model.pageSelected = Pages.Inicio;
                  safeSetState(() {});
                  if (scaffoldKey.currentState!.isDrawerOpen ||
                      scaffoldKey.currentState!.isEndDrawerOpen) {
                    Navigator.pop(context);
                  }
                },
                callBackPainel: () async {
                  _model.pageSelected = Pages.Painel;
                  safeSetState(() {});
                },
                mouseRegionEnter: () async {},
                mouseRegionExit: () async {},
                callBackClientes: () async {
                  _model.pageSelected = Pages.Clientes;
                  safeSetState(() {});
                  if (scaffoldKey.currentState!.isDrawerOpen ||
                      scaffoldKey.currentState!.isEndDrawerOpen) {
                    Navigator.pop(context);
                  }
                },
                callBackVendas: () async {
                  _model.pageSelected = Pages.Vendas;
                  safeSetState(() {});
                  if (scaffoldKey.currentState!.isDrawerOpen ||
                      scaffoldKey.currentState!.isEndDrawerOpen) {
                    Navigator.pop(context);
                  }
                },
                callBackProdutos: () async {
                  _model.pageSelected = Pages.Produtos;
                  safeSetState(() {});
                  if (scaffoldKey.currentState!.isDrawerOpen ||
                      scaffoldKey.currentState!.isEndDrawerOpen) {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.unViewFrameHeaderModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: UnViewFrameHeaderWidget(
                isPrincipal: true,
                sNamePag: 'Inicio',
                drawerAction: () async {
                  FFAppState().SideMenuExpansable = true;
                  FFAppState().update(() {});
                  scaffoldKey.currentState!.openDrawer();
                },
                expanAction: () async {
                  FFAppState().SideMenuExpansable =
                      !(FFAppState().SideMenuExpansable ?? true);
                  FFAppState().update(() {});
                },
                actionMenuModal: () async {
                  FFAppState().modalUserMenu =
                      !(FFAppState().modalUserMenu ?? true);
                  safeSetState(() {});
                },
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                elevation: 0.0,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Container(
                                  width: FFAppState().SideMenuExpansable
                                      ? 220.0
                                      : 80.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).sideMenu,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).sideMenu,
                                      width: 0.0,
                                    ),
                                  ),
                                  child: wrapWithModel(
                                    model: _model.unViewFrameSideMenuModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    updateOnChange: true,
                                    child: UnViewFrameSideMenuWidget(
                                      pageSelected: () {
                                        if (_model.pageSelected ==
                                            Pages.Inicio) {
                                          return Pages.Inicio;
                                        } else if (_model.pageSelected ==
                                            Pages.Painel) {
                                          return Pages.Painel;
                                        } else if (_model.pageSelected ==
                                            Pages.Vendas) {
                                          return Pages.Vendas;
                                        } else if (_model.pageSelected ==
                                            Pages.Produtos) {
                                          return Pages.Produtos;
                                        } else {
                                          return Pages.Clientes;
                                        }
                                      }(),
                                      isExpansible:
                                          FFAppState().SideMenuExpansable,
                                      callBackHome: () async {
                                        _model.pageSelected = Pages.Inicio;
                                        safeSetState(() {});
                                      },
                                      callBackPainel: () async {
                                        _model.pageSelected = Pages.Painel;
                                        safeSetState(() {});
                                      },
                                      mouseRegionEnter: () async {
                                        FFAppState().modalUserMenu = false;
                                        safeSetState(() {});
                                      },
                                      mouseRegionExit: () async {},
                                      callBackClientes: () async {
                                        _model.pageSelected = Pages.Clientes;
                                        safeSetState(() {});
                                      },
                                      callBackVendas: () async {
                                        _model.pageSelected = Pages.Vendas;
                                        safeSetState(() {});
                                      },
                                      callBackProdutos: () async {
                                        _model.pageSelected = Pages.Produtos;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ).animateOnActionTrigger(
                        animationsMap['columnOnActionTriggerAnimation']!,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    if (_model.pageSelected == Pages.Inicio)
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(35.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(35.0),
                                            ),
                                          ),
                                          child: SafeArea(
                                            child: AnimatedContainer(
                                              duration:
                                                  const Duration(milliseconds: 100),
                                              curve: Curves.easeIn,
                                              width: 270.0,
                                              height: 270.0,
                                              decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      0.0,
                                                    ),
                                                    spreadRadius: 1.0,
                                                  )
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground
                                                  ],
                                                  stops: const [0.0, 1.0],
                                                  begin: const AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: const AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(35.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(35.0),
                                                ),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 0.0,
                                                ),
                                              ),
                                              child: ClipRect(
                                                child: ImageFiltered(
                                                  imageFilter: ImageFilter.blur(
                                                    sigmaX: 0.0,
                                                    sigmaY: 0.0,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(10.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/SOFTWORK__2_-removebg-preview-transformed_(1).png',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  true,
                                                              tag: 'imageTag1',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag1',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/SOFTWORK__2_-removebg-preview-transformed_(1).png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation']!),
                                      ),
                                    if (_model.pageSelected == Pages.Inicio)
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? 'assets/images/SOFTWORK__3_-removebg-preview.png'
                                                  : 'assets/images/SOFTWORK__3_-removebg-preview.png',
                                              width: 200.0,
                                              height: 50.0,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (_model.pageSelected == Pages.Inicio)
                                      wrapWithModel(
                                        model: _model.unViewFrameHomeModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: UnViewFrameHomeWidget(
                                          actionDashboard: () async {
                                            _model.pageSelected = Pages.Painel;
                                            safeSetState(() {});
                                          },
                                          actionCliente: () async {
                                            _model.pageSelected =
                                                Pages.Clientes;
                                            safeSetState(() {});
                                          },
                                          actionVendas: () async {
                                            _model.pageSelected = Pages.Vendas;
                                            safeSetState(() {});
                                          },
                                          actionProdutos: () async {
                                            _model.pageSelected =
                                                Pages.Produtos;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    if (_model.pageSelected == Pages.Painel)
                                      wrapWithModel(
                                        model:
                                            _model.unViewFrameDashPainelModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const UnViewFrameDashPainelWidget(),
                                      ),
                                    if (_model.pageSelected == Pages.Clientes)
                                      wrapWithModel(
                                        model: _model.unViewListaClientesModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const UnViewListaClientesWidget(),
                                      ),
                                    if (_model.pageSelected == Pages.Vendas)
                                      wrapWithModel(
                                        model: _model.unViewFrameVendasModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const UnViewFrameVendasWidget(),
                                      ),
                                    if (FFAppState().modalUserMenu)
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  10.0,
                                                  valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 5.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 120.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 120.0;
                                                      } else {
                                                        return 120.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  ),
                                                  0.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 250.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.75,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      2.0,
                                                      4.0,
                                                    ),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                              ),
                                              child: wrapWithModel(
                                                model: _model
                                                    .unViewFrameProfileModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                updateOnChange: true,
                                                child:
                                                    const UnViewFrameProfileWidget(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (_model.pageSelected == Pages.Produtos)
                                      wrapWithModel(
                                        model: _model.unViewFrameProdutosModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const UnViewFrameProdutosWidget(),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
