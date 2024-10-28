import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'un_view_form_login_model.dart';
export 'un_view_form_login_model.dart';

class UnViewFormLoginWidget extends StatefulWidget {
  const UnViewFormLoginWidget({super.key});

  @override
  State<UnViewFormLoginWidget> createState() => _UnViewFormLoginWidgetState();
}

class _UnViewFormLoginWidgetState extends State<UnViewFormLoginWidget>
    with TickerProviderStateMixin {
  late UnViewFormLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFormLoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (RootPageContext.isInactiveRootPage(context)) {
        return;
      }
      if (FFAppState().ConfigGlobaisServer.hostPrimario != '') {
        _model.disableByError = true;
        _model.sMessageError = 'Realizando conexão com o servidor...';
        _model.bTentarNovamente = false;
        safeSetState(() {});
        if (animationsMap['rowOnActionTriggerAnimation'] != null) {
          await animationsMap['rowOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
        FFAppState().updateConfigGlobaisServerStruct(
          (e) => e..host = FFAppState().ConfigGlobaisServer.hostPrimario,
        );
        safeSetState(() {});
        _model.gettoken = await GetTokenCall.call(
          ip: FFAppState().ConfigGlobaisServer.host,
          porta: FFAppState().ConfigGlobaisServer.porta,
          path: FFAppState().ConfigGlobaisServer.path,
          cnpj: FFAppState().ConfigGlobaisServer.cnpj,
        );

        if ((_model.gettoken?.statusCode ?? 200) == 200) {
          if (animationsMap['rowOnActionTriggerAnimation'] != null) {
            await animationsMap['rowOnActionTriggerAnimation']!
                .controller
                .reverse();
          }
          FFAppState().Token = GetTokenCall.token(
            (_model.gettoken?.jsonBody ?? ''),
          )!;
          safeSetState(() {});
          _model.disableByError = false;
          safeSetState(() {});
          if (FFAppState().ConfigGlobais.autLocal &&
              FFAppState().ConfigGlobais.lembrar) {
            final localAuth = LocalAuthentication();
            bool isBiometricSupported = await localAuth.isDeviceSupported();

            if (isBiometricSupported) {
              try {
                _model.autBiometric = await localAuth.authenticate(
                    localizedReason:
                        'Por favor, entre com sua biometria ou outra forma de autentificação para conectar ao sistema.');
              } on PlatformException {
                _model.autBiometric = false;
              }
              safeSetState(() {});
            }

            if (_model.autBiometric) {
              _model.actionLoginBiometric =
                  await _model.loginActionBlock(context);
              GoRouter.of(context).prepareAuthEvent();
              await authManager.signIn(
                authenticationToken: FFAppState().Token,
                tokenExpiration:
                    functions.addTimeDouble(60.0, getCurrentTimestamp),
                userData: _model.actionLoginBiometric,
              );

              context.pushNamedAuth('unViewFormPrincipal', context.mounted);

              return;
            } else {
              await actions.elegantNotificationError(
                context,
                'Biometria inválida',
                'Falha ao ler modo de autentificação local.',
                FlutterFlowTheme.of(context).primaryText,
                FlutterFlowTheme.of(context).secondaryBackground,
                360.0,
                'bottomcenter',
                'frombottom',
              );
              return;
            }
          } else {
            return;
          }
        } else {
          FFAppState().updateConfigGlobaisServerStruct(
            (e) => e..host = FFAppState().ConfigGlobaisServer.hostSecundario,
          );
          safeSetState(() {});
          _model.gettokenSecundario = await GetTokenCall.call(
            ip: FFAppState().ConfigGlobaisServer.host,
            porta: FFAppState().ConfigGlobaisServer.porta,
            path: FFAppState().ConfigGlobaisServer.path,
            cnpj: FFAppState().ConfigGlobaisServer.cnpj,
          );

          if ((_model.gettokenSecundario?.succeeded ?? true)) {
            if (animationsMap['rowOnActionTriggerAnimation'] != null) {
              await animationsMap['rowOnActionTriggerAnimation']!
                  .controller
                  .reverse();
            }
            FFAppState().Token = GetTokenCall.token(
              (_model.gettokenSecundario?.jsonBody ?? ''),
            )!;
            safeSetState(() {});
            _model.disableByError = false;
            safeSetState(() {});
            return;
          } else {
            if (animationsMap['rowOnActionTriggerAnimation'] != null) {
              await animationsMap['rowOnActionTriggerAnimation']!
                  .controller
                  .reverse();
            }
            _model.bTentarNovamente = true;
            _model.sMessageError =
                'Falha ao estabelecer conexão com o servidor...';
            safeSetState(() {});
            unawaited(
              () async {
                await actions.elegantNotificationError(
                  context,
                  'Falha',
                  'Não foi possível conectar ao servidor da aplicação!!!',
                  FlutterFlowTheme.of(context).primaryText,
                  FlutterFlowTheme.of(context).secondaryBackground,
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
                  'bottomcenter',
                  'frombottom',
                );
              }(),
            );
            await Future.delayed(const Duration(milliseconds: 3000));
            if (animationsMap['rowOnActionTriggerAnimation'] != null) {
              await animationsMap['rowOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0);
            }
            return;
          }
        }
      } else {
        context.pushNamedAuth(
          'unViewFormSettings',
          context.mounted,
          queryParameters: {
            'iTabInitial': serializeParam(
              0,
              ParamType.int,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.bottomToTop,
            ),
          },
        );

        return;
      }
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.emailAddressFieldTextController ??=
        TextEditingController(text: FFAppState().ConfigGlobais.usuario);
    _model.emailAddressFieldFocusNode ??= FocusNode();

    _model.passwordFieldTextController ??=
        TextEditingController(text: FFAppState().ConfigGlobais.senha);
    _model.passwordFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'lottieAnimationOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 830.0.ms,
            color: Colors.white,
            angle: 1.292,
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation1': AnimationInfo(
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
      'textFieldOnPageLoadAnimation2': AnimationInfo(
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
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 160.0.ms,
            duration: 600.0.ms,
            color: const Color(0xFFF1F4F8),
            angle: 0.524,
          ),
        ],
      ),
      'rowOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 100.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
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
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 440.0,
                    decoration: const BoxDecoration(),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      32.0, 12.0, 32.0, 12.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 40.0, 0.0, 24.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x1917171C),
                                                    offset: Offset(
                                                      2.0,
                                                      6.0,
                                                    ),
                                                    spreadRadius: 2.0,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Lottie.asset(
                                                  'assets/jsons/Animation_-_1706711829998.json',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  fit: BoxFit.cover,
                                                  animate: true,
                                                ).animateOnPageLoad(animationsMap[
                                                    'lottieAnimationOnPageLoadAnimation']!),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SelectionArea(
                                            child: Text(
                                          'Bem-Vindo',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                lineHeight: 1.2,
                                              ),
                                        )),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: SelectionArea(
                                              child: Text(
                                            'Por favor, entre com suas credenciais para ter acesso!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.5,
                                                ),
                                          )),
                                        ),
                                        Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    TextFormField(
                                                      controller: _model
                                                          .emailAddressFieldTextController,
                                                      focusNode: _model
                                                          .emailAddressFieldFocusNode,
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      readOnly:
                                                          _model.disableByError,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Usuário',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        alignLabelWithHint:
                                                            true,
                                                        hintText: 'Usuário',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    10.0,
                                                                    14.0,
                                                                    10.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      maxLength: 140,
                                                      maxLengthEnforcement:
                                                          MaxLengthEnforcement
                                                              .none,
                                                      buildCounter: (context,
                                                              {required currentLength,
                                                              required isFocused,
                                                              maxLength}) =>
                                                          null,
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      validator: _model
                                                          .emailAddressFieldTextControllerValidator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation1']!),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    TextFormField(
                                                      controller: _model
                                                          .passwordFieldTextController,
                                                      focusNode: _model
                                                          .passwordFieldFocusNode,
                                                      onFieldSubmitted:
                                                          (_) async {
                                                        var shouldSetState =
                                                            false;
                                                        if (_model.formKey
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }
                                                        FFAppState()
                                                            .updateConfigGlobaisStruct(
                                                          (e) => e
                                                            ..usuario = _model
                                                                .emailAddressFieldTextController
                                                                .text
                                                            ..senha = _model
                                                                .passwordFieldTextController
                                                                .text
                                                            ..lembrar = _model
                                                                .checkboxListTileValue,
                                                        );
                                                        safeSetState(() {});
                                                        _model.loginBlockOnSubmite =
                                                            await _model
                                                                .loginActionBlock(
                                                                    context);
                                                        shouldSetState = true;
                                                        if (_model
                                                                .loginBlockOnSubmite!
                                                                .idCodigo >=
                                                            1) {
                                                          GoRouter.of(context)
                                                              .prepareAuthEvent();
                                                          await authManager
                                                              .signIn(
                                                            authenticationToken:
                                                                FFAppState()
                                                                    .Token,
                                                            tokenExpiration: functions
                                                                .addTimeDouble(
                                                                    60.0,
                                                                    getCurrentTimestamp),
                                                            userData: _model
                                                                .loginBlockOnSubmite,
                                                          );
                                                        } else {
                                                          if (shouldSetState) {
                                                            safeSetState(() {});
                                                          }
                                                          return;
                                                        }

                                                        context.goNamedAuth(
                                                            'unViewFormPrincipal',
                                                            context.mounted);

                                                        if (shouldSetState) {
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      readOnly:
                                                          _model.disableByError,
                                                      obscureText: !_model
                                                          .passwordFieldVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Senha',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        hintText: '••••••••',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    10.0,
                                                                    14.0,
                                                                    10.0),
                                                        suffixIcon: InkWell(
                                                          onTap: () =>
                                                              safeSetState(
                                                            () => _model
                                                                    .passwordFieldVisibility =
                                                                !_model
                                                                    .passwordFieldVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.passwordFieldVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 22.0,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      validator: _model
                                                          .passwordFieldTextControllerValidator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation2']!),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            child: Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              child: CheckboxListTile(
                                                value: _model
                                                        .checkboxListTileValue ??=
                                                    true,
                                                onChanged: (newValue) async {
                                                  safeSetState(() => _model
                                                          .checkboxListTileValue =
                                                      newValue!);
                                                },
                                                title: Text(
                                                  'Lembrar usuário',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
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
                                                ),
                                                tileColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                checkColor: Colors.white,
                                                dense: true,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: SelectionArea(
                                              child: Text(
                                            'Esqueceu sua senha?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: _model.disableByError
                                                ? null
                                                : () async {
                                                    var shouldSetState = false;
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    FFAppState()
                                                        .updateConfigGlobaisStruct(
                                                      (e) => e
                                                        ..usuario = _model
                                                            .emailAddressFieldTextController
                                                            .text
                                                        ..senha = _model
                                                            .passwordFieldTextController
                                                            .text
                                                        ..lembrar = _model
                                                            .checkboxListTileValue,
                                                    );
                                                    safeSetState(() {});
                                                    _model.loginBlock =
                                                        await _model
                                                            .loginActionBlock(
                                                                context);
                                                    shouldSetState = true;
                                                    if (_model.loginBlock!
                                                            .idCodigo >=
                                                        1) {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      await authManager.signIn(
                                                        authenticationToken:
                                                            FFAppState().Token,
                                                        refreshToken:
                                                            FFAppState().Token,
                                                        tokenExpiration: functions
                                                            .addTimeDouble(60.0,
                                                                getCurrentTimestamp),
                                                        userData:
                                                            _model.loginBlock,
                                                      );
                                                    } else {
                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    }

                                                    context.goNamedAuth(
                                                        'unViewFormPrincipal',
                                                        context.mounted);

                                                    if (shouldSetState) {
                                                      safeSetState(() {});
                                                    }
                                                  },
                                            text: 'Entrar',
                                            icon: const Icon(
                                              Icons.login_rounded,
                                              size: 22.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 60.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                              elevation: 2.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              disabledColor: const Color(0xFFDBDBDB),
                                              disabledTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'buttonOnPageLoadAnimation1']!),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SelectionArea(
                                                  child: AutoSizeText(
                                                'Não consegue conectar? ',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                              )),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'unViewFormSettings',
                                                    queryParameters: {
                                                      'iTabInitial':
                                                          serializeParam(
                                                        0,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .bottomToTop,
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  'Obter Acesso',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 5.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (!(isWeb
                              ? MediaQuery.viewInsetsOf(context).bottom > 0
                              : _isKeyboardVisible))
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 360.0,
                                        height: 50.0,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(12.0),
                                            topRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            if (!_model.bTentarNovamente!)
                                              Lottie.asset(
                                                'assets/jsons/universal-universal.json',
                                                width: 50.0,
                                                height: 50.0,
                                                fit: BoxFit.cover,
                                                animate: true,
                                              ),
                                            if (_model.bTentarNovamente ?? true)
                                              Lottie.asset(
                                                'assets/jsons/LotAlert.json',
                                                width: 35.0,
                                                height: 35.0,
                                                fit: BoxFit.scaleDown,
                                                animate: true,
                                              ),
                                            Expanded(
                                              child: SelectionArea(
                                                  child: AutoSizeText(
                                                _model.sMessageError,
                                                textAlign: TextAlign.start,
                                                maxLines: 2,
                                                minFontSize: 8.0,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              )),
                                            ),
                                            if (_model.bTentarNovamente ?? true)
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'unViewFormLogin',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  text: 'Tentar Novamente',
                                                  options: FFButtonOptions(
                                                    width: 120.0,
                                                    height: 40.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Colors.transparent,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFFFF8D00),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFFF8D00),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'buttonOnPageLoadAnimation2']!),
                                              ),
                                          ]
                                              .divide(const SizedBox(width: 10.0))
                                              .addToStart(const SizedBox(width: 10.0))
                                              .addToEnd(const SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ).animateOnActionTrigger(
                                  animationsMap['rowOnActionTriggerAnimation']!,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                if ((!isAndroid && !isiOS && !isWeb) &&
                    responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                  Align(
                    alignment: const AlignmentDirectional(1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.minimize_outlined,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              await actions.winCustomAction(
                                1,
                              );
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.fullscreen_rounded,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              await actions.winCustomAction(
                                2,
                              );
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              await actions.winCustomAction(
                                3,
                              );
                            },
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
    );
  }
}
