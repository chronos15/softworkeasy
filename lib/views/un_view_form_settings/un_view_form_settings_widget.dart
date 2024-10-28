import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'un_view_form_settings_model.dart';
export 'un_view_form_settings_model.dart';

class UnViewFormSettingsWidget extends StatefulWidget {
  const UnViewFormSettingsWidget({
    super.key,
    required this.iTabInitial,
  });

  final int? iTabInitial;

  @override
  State<UnViewFormSettingsWidget> createState() =>
      _UnViewFormSettingsWidgetState();
}

class _UnViewFormSettingsWidgetState extends State<UnViewFormSettingsWidget>
    with TickerProviderStateMixin {
  late UnViewFormSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFormSettingsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: min(
          valueOrDefault<int>(
            widget.iTabInitial,
            0,
          ),
          1),
    )..addListener(() => safeSetState(() {}));
    _model.emailAddressFieldTextController1 ??=
        TextEditingController(text: FFAppState().ConfigGlobaisServer.path);
    _model.emailAddressFieldFocusNode1 ??= FocusNode();

    _model.emailAddressFieldTextController2 ??=
        TextEditingController(text: FFAppState().ConfigGlobaisServer.cnpj);
    _model.emailAddressFieldFocusNode2 ??= FocusNode();

    _model.emailAddressFieldTextController3 ??= TextEditingController(
        text: FFAppState().ConfigGlobaisServer.hostPrimario);
    _model.emailAddressFieldFocusNode3 ??= FocusNode();

    _model.emailAddressFieldTextController4 ??= TextEditingController(
        text: FFAppState().ConfigGlobaisServer.hostSecundario);
    _model.emailAddressFieldFocusNode4 ??= FocusNode();

    _model.emailAddressFieldTextController5 ??= TextEditingController(
        text: FFAppState().ConfigGlobaisServer.porta.toString());
    _model.emailAddressFieldFocusNode5 ??= FocusNode();

    _model.emailAddressFieldTextController6 ??= TextEditingController(
        text: FFAppState().ConfigGlobaisServer.terminal.toString());
    _model.emailAddressFieldFocusNode6 ??= FocusNode();

    animationsMap.addAll({
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
      'textFieldOnPageLoadAnimation3': AnimationInfo(
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
      'textFieldOnPageLoadAnimation4': AnimationInfo(
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
      'textFieldOnPageLoadAnimation5': AnimationInfo(
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
      'textFieldOnPageLoadAnimation6': AnimationInfo(
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
      'buttonOnPageLoadAnimation': AnimationInfo(
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
    });

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.unViewFrameHeaderModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: UnViewFrameHeaderWidget(
                isPrincipal: false,
                sNamePag: 'Configuração',
                drawerAction: () async {},
                expanAction: () async {},
                actionMenuModal: () async {},
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 440.0,
                        ),
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 0.0),
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: const Alignment(0.0, 0),
                                                  child: TabBar(
                                                    labelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    unselectedLabelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    labelPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 2.0,
                                                                5.0, 2.0),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    unselectedLabelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                    indicatorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    tabs: const [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .login_rounded,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: 'Acesso',
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .app_settings_alt_rounded,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: 'Opções',
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                    controller:
                                                        _model.tabBarController,
                                                    onTap: (i) async {
                                                      [
                                                        () async {},
                                                        () async {}
                                                      ][i]();
                                                    },
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    controller:
                                                        _model.tabBarController,
                                                    children: [
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      32.0,
                                                                      12.0,
                                                                      32.0,
                                                                      12.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Form(
                                                                  key: _model
                                                                      .formKey,
                                                                  autovalidateMode:
                                                                      AutovalidateMode
                                                                          .disabled,
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _model.emailAddressFieldTextController1,
                                                                              focusNode: _model.emailAddressFieldFocusNode1,
                                                                              autofocus: false,
                                                                              textInputAction: TextInputAction.next,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Path',
                                                                                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                alignLabelWithHint: true,
                                                                                hintText: 'Path',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                              maxLength: 140,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              validator: _model.emailAddressFieldTextController1Validator.asValidator(context),
                                                                            ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation1']!),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _model.emailAddressFieldTextController2,
                                                                              focusNode: _model.emailAddressFieldFocusNode2,
                                                                              autofocus: false,
                                                                              textInputAction: TextInputAction.next,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'CNPJ',
                                                                                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                alignLabelWithHint: true,
                                                                                hintText: 'CNPJ',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                              maxLength: 140,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.number,
                                                                              validator: _model.emailAddressFieldTextController2Validator.asValidator(context),
                                                                              inputFormatters: [
                                                                                _model.emailAddressFieldMask2
                                                                              ],
                                                                            ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation2']!),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _model.emailAddressFieldTextController3,
                                                                              focusNode: _model.emailAddressFieldFocusNode3,
                                                                              autofocus: false,
                                                                              textInputAction: TextInputAction.next,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'IP Primário',
                                                                                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                alignLabelWithHint: true,
                                                                                hintText: '127.0.0.1',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                              maxLength: 140,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.number,
                                                                              validator: _model.emailAddressFieldTextController3Validator.asValidator(context),
                                                                            ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation3']!),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _model.emailAddressFieldTextController4,
                                                                              focusNode: _model.emailAddressFieldFocusNode4,
                                                                              autofocus: false,
                                                                              textInputAction: TextInputAction.next,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'IP Secundário',
                                                                                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                alignLabelWithHint: true,
                                                                                hintText: '192.168.1.1',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                              maxLength: 140,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.number,
                                                                              validator: _model.emailAddressFieldTextController4Validator.asValidator(context),
                                                                            ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation4']!),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _model.emailAddressFieldTextController5,
                                                                              focusNode: _model.emailAddressFieldFocusNode5,
                                                                              autofocus: false,
                                                                              textInputAction: TextInputAction.done,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Porta',
                                                                                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                alignLabelWithHint: true,
                                                                                hintText: '3040',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                              maxLength: 140,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.number,
                                                                              validator: _model.emailAddressFieldTextController5Validator.asValidator(context),
                                                                            ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation5']!),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _model.emailAddressFieldTextController6,
                                                                              focusNode: _model.emailAddressFieldFocusNode6,
                                                                              autofocus: false,
                                                                              textInputAction: TextInputAction.done,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Terminal',
                                                                                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                alignLabelWithHint: true,
                                                                                hintText: '1',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xFFFDA29B),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                              maxLength: 140,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.number,
                                                                              validator: _model.emailAddressFieldTextController6Validator.asValidator(context),
                                                                            ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation6']!),
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
                                                      ),
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  SwitchListTile
                                                                      .adaptive(
                                                                value: _model
                                                                        .swLogPersistenteValue ??=
                                                                    FFAppState()
                                                                        .ConfigGlobais
                                                                        .logPersistente,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.swLogPersistenteValue =
                                                                          newValue);
                                                                },
                                                                title: Text(
                                                                  'Usuário Persistente',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                ),
                                                                subtitle: Text(
                                                                  'Fechar o app não desloga o usuário, mantendo persistência na nova inicialização.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                tileColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                activeTrackColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                dense: true,
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .leading,
                                                              ),
                                                            ),
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  SwitchListTile
                                                                      .adaptive(
                                                                value: _model
                                                                        .swAutLocalValue ??=
                                                                    FFAppState()
                                                                        .ConfigGlobais
                                                                        .autLocal,
                                                                onChanged:
                                                                    !isAndroid
                                                                        ? null
                                                                        : (newValue) async {
                                                                            safeSetState(() =>
                                                                                _model.swAutLocalValue = newValue);
                                                                          },
                                                                title: Text(
                                                                  'Sistema de Biometria (mobile)',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                ),
                                                                subtitle: Text(
                                                                  'Usa sistema de autentificação local para acessar o aplicativo.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                tileColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                activeColor: !isAndroid
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                activeTrackColor: !isAndroid
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                dense: true,
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .leading,
                                                              ),
                                                            ),
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  SwitchListTile
                                                                      .adaptive(
                                                                value: _model
                                                                        .swNotificacaoValue1 ??=
                                                                    FFAppState()
                                                                        .ConfigGlobais
                                                                        .ativaNotificacoes,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.swNotificacaoValue1 =
                                                                          newValue);
                                                                },
                                                                title: Text(
                                                                  'Notificações',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                ),
                                                                subtitle: Text(
                                                                  'Ativa notificações locais no aplicativo.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                tileColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                activeTrackColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                dense: true,
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .leading,
                                                              ),
                                                            ),
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  SwitchListTile
                                                                      .adaptive(
                                                                value: _model
                                                                    .swNotificacaoValue2 ??= Theme.of(
                                                                            context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.swNotificacaoValue2 =
                                                                          newValue);
                                                                  if (newValue) {
                                                                    setDarkModeSetting(
                                                                        context,
                                                                        ThemeMode
                                                                            .dark);
                                                                  } else {
                                                                    setDarkModeSetting(
                                                                        context,
                                                                        ThemeMode
                                                                            .light);
                                                                  }
                                                                },
                                                                title: Text(
                                                                  'Tema Escuro',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                ),
                                                                subtitle: Text(
                                                                  'Ativa tema escuro em todo aplicativo.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                tileColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                activeTrackColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                dense: true,
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .leading,
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
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 16.0, 24.0, 10.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              FFAppState().ConfigGlobaisServer =
                                                  ConfigGlobaisServerStruct(
                                                host: _model
                                                    .emailAddressFieldTextController3
                                                    .text,
                                                hostPrimario: _model
                                                    .emailAddressFieldTextController3
                                                    .text,
                                                hostSecundario: _model
                                                    .emailAddressFieldTextController4
                                                    .text,
                                                porta: int.tryParse(_model
                                                    .emailAddressFieldTextController5
                                                    .text),
                                                path: _model
                                                    .emailAddressFieldTextController1
                                                    .text,
                                                cnpj: _model
                                                    .emailAddressFieldTextController2
                                                    .text,
                                                terminal: int.tryParse(_model
                                                    .emailAddressFieldTextController6
                                                    .text),
                                              );
                                              safeSetState(() {});
                                              FFAppState()
                                                  .updateConfigGlobaisStruct(
                                                (e) => e
                                                  ..logPersistente = _model
                                                      .swLogPersistenteValue
                                                  ..autLocal =
                                                      _model.swAutLocalValue
                                                  ..ativaNotificacoes = _model
                                                      .swNotificacaoValue1,
                                              );
                                              safeSetState(() {});
                                              if (widget.iTabInitial == 0) {
                                                context.pushNamed(
                                                    'unViewFormLogin');
                                              } else {
                                                context.safePop();
                                              }
                                            },
                                            text: 'Salvar',
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 55.0,
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
                                                    fontSize: 16.0,
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
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'buttonOnPageLoadAnimation']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
