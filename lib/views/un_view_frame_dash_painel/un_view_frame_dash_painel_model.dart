import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/frame_components/un_view_frame_card_menu/un_view_frame_card_menu_widget.dart';
import '/frame_components/un_view_frame_indicadores/un_view_frame_indicadores_widget.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import 'dart:async';
import 'un_view_frame_dash_painel_widget.dart' show UnViewFrameDashPainelWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnViewFrameDashPainelModel
    extends FlutterFlowModel<UnViewFrameDashPainelWidget> {
  ///  Local state fields for this component.

  int? iDateSub;

  ///  State fields for stateful widgets in this component.

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
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel1;
  // Model for unViewFrameIndicadores component.
  late UnViewFrameIndicadoresModel unViewFrameIndicadoresModel1;
  // Model for unViewFrameIndicadores component.
  late UnViewFrameIndicadoresModel unViewFrameIndicadoresModel2;
  // Model for unViewFrameVazio component.
  late UnViewFrameVazioModel unViewFrameVazioModel2;
  DateTime? datePicked1;
  DateTime? datePicked2;

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
    unViewFrameVazioModel1 =
        createModel(context, () => UnViewFrameVazioModel());
    unViewFrameIndicadoresModel1 =
        createModel(context, () => UnViewFrameIndicadoresModel());
    unViewFrameIndicadoresModel2 =
        createModel(context, () => UnViewFrameIndicadoresModel());
    unViewFrameVazioModel2 =
        createModel(context, () => UnViewFrameVazioModel());
  }

  @override
  void dispose() {
    unViewFrameCardMenuModel1.dispose();
    unViewFrameCardMenuModel2.dispose();
    unViewFrameCardMenuModel3.dispose();
    unViewFrameCardMenuModel4.dispose();
    unViewFrameVazioModel1.dispose();
    unViewFrameIndicadoresModel1.dispose();
    unViewFrameIndicadoresModel2.dispose();
    unViewFrameVazioModel2.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
