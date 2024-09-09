import '/components/un_view_frame_indicadores_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/frame_components/un_view_frame_card_menu/un_view_frame_card_menu_widget.dart';
import 'un_view_frame_dash_painel_widget.dart' show UnViewFrameDashPainelWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnViewFrameDashPainelModel
    extends FlutterFlowModel<UnViewFrameDashPainelWidget> {
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
  // Model for unViewFrameIndicadores component.
  late UnViewFrameIndicadoresModel unViewFrameIndicadoresModel;
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
    unViewFrameIndicadoresModel =
        createModel(context, () => UnViewFrameIndicadoresModel());
  }

  @override
  void dispose() {
    unViewFrameCardMenuModel1.dispose();
    unViewFrameCardMenuModel2.dispose();
    unViewFrameCardMenuModel3.dispose();
    unViewFrameCardMenuModel4.dispose();
    unViewFrameIndicadoresModel.dispose();
  }
}
