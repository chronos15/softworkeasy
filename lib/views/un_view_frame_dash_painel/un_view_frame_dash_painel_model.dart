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
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'un_view_frame_dash_painel_widget.dart' show UnViewFrameDashPainelWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnViewFrameDashPainelModel
    extends FlutterFlowModel<UnViewFrameDashPainelWidget> {
  ///  Local state fields for this component.

  int? iDateSub = 0;

  bool isAllLoading = false;

  ///  State fields for stateful widgets in this component.

  final unViewFrameDashPainelShortcutsFocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter3;
  Completer<ApiCallResponse>? apiRequestCompleter6;
  Completer<ApiCallResponse>? apiRequestCompleter5;
  Completer<ApiCallResponse>? apiRequestCompleter7;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  Completer<ApiCallResponse>? apiRequestCompleter4;
  // Model for unViewFrameCardMenu component.
  late UnViewFrameCardMenuModel unViewFrameCardMenuModel1;
  // Model for unViewFrameCardMenu component.
  late UnViewFrameCardMenuModel unViewFrameCardMenuModel2;
  // Model for unViewFrameCardMenu component.
  late UnViewFrameCardMenuModel unViewFrameCardMenuModel3;
  // Model for unViewFrameCardMenu component.
  late UnViewFrameCardMenuModel unViewFrameCardMenuModel4;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for unViewFrameVazioHora.
  late UnViewFrameVazioModel unViewFrameVazioHoraModel1;
  // Model for unViewFrameVazioDashTotais.
  late UnViewFrameVazioModel unViewFrameVazioDashTotaisModel;
  // Model for unViewFrameIndicadores component.
  late UnViewFrameIndicadoresModel unViewFrameIndicadoresModel1;
  // Model for unViewFrameVazioHora.
  late UnViewFrameVazioModel unViewFrameVazioHoraModel2;
  // Model for unViewFrameIndicadores component.
  late UnViewFrameIndicadoresModel unViewFrameIndicadoresModel2;
  // Model for unViewFrameVazioHora.
  late UnViewFrameVazioModel unViewFrameVazioHoraModel3;
  // Model for unViewFrameVendasPgto component.
  late UnViewFrameVendasPgtoModel unViewFrameVendasPgtoModel;
  // Model for unviewFrameVendasVendedorDesktop.
  late UnviewFrameVendasVendedorModel unviewFrameVendasVendedorDesktopModel;
  // Model for unviewFrameVendasVendedorMobile.
  late UnviewFrameVendasVendedorModel unviewFrameVendasVendedorMobileModel;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    unViewFrameCardMenuModel1 =
        createModel(context, () => UnViewFrameCardMenuModel());
    unViewFrameCardMenuModel2 =
        createModel(context, () => UnViewFrameCardMenuModel());
    unViewFrameCardMenuModel3 =
        createModel(context, () => UnViewFrameCardMenuModel());
    unViewFrameCardMenuModel4 =
        createModel(context, () => UnViewFrameCardMenuModel());
    unViewFrameVazioHoraModel1 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameVazioDashTotaisModel =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameIndicadoresModel1 =
        createModel(context, () => UnViewFrameIndicadoresModel());
    unViewFrameVazioHoraModel2 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameIndicadoresModel2 =
        createModel(context, () => UnViewFrameIndicadoresModel());
    unViewFrameVazioHoraModel3 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameVendasPgtoModel =
        createModel(context, () => UnViewFrameVendasPgtoModel());
    unviewFrameVendasVendedorDesktopModel =
        createModel(context, () => UnviewFrameVendasVendedorModel());
    unviewFrameVendasVendedorMobileModel =
        createModel(context, () => UnviewFrameVendasVendedorModel());
  }

  @override
  void dispose() {
    unViewFrameDashPainelShortcutsFocusNode.dispose();
    unViewFrameCardMenuModel1.dispose();
    unViewFrameCardMenuModel2.dispose();
    unViewFrameCardMenuModel3.dispose();
    unViewFrameCardMenuModel4.dispose();
    unViewFrameVazioHoraModel1.dispose();
    unViewFrameVazioDashTotaisModel.dispose();
    unViewFrameIndicadoresModel1.dispose();
    unViewFrameVazioHoraModel2.dispose();
    unViewFrameIndicadoresModel2.dispose();
    unViewFrameVazioHoraModel3.dispose();
    unViewFrameVendasPgtoModel.dispose();
    unviewFrameVendasVendedorDesktopModel.dispose();
    unviewFrameVendasVendedorMobileModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted6({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter6?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter5?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted7({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter7?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
