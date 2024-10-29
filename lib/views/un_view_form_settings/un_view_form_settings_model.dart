import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import 'dart:math';
import 'un_view_form_settings_widget.dart' show UnViewFormSettingsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class UnViewFormSettingsModel
    extends FlutterFlowModel<UnViewFormSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for unViewFrameHeader component.
  late UnViewFrameHeaderModel unViewFrameHeaderModel;
  // State field(s) for tbSettings widget.
  TabController? tbSettingsController;
  int get tbSettingsCurrentIndex =>
      tbSettingsController != null ? tbSettingsController!.index : 0;

  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode1;
  TextEditingController? emailAddressFieldTextController1;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextController1Validator;
  String? _emailAddressFieldTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, informe o Path do Servidor';
    }

    return null;
  }

  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode2;
  TextEditingController? emailAddressFieldTextController2;
  final emailAddressFieldMask2 =
      MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)?
      emailAddressFieldTextController2Validator;
  String? _emailAddressFieldTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o CNPJ';
    }

    return null;
  }

  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode3;
  TextEditingController? emailAddressFieldTextController3;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextController3Validator;
  String? _emailAddressFieldTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o IP primário do Server';
    }

    return null;
  }

  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode4;
  TextEditingController? emailAddressFieldTextController4;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextController4Validator;
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode5;
  TextEditingController? emailAddressFieldTextController5;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextController5Validator;
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode6;
  TextEditingController? emailAddressFieldTextController6;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextController6Validator;
  // State field(s) for swLogPersistente widget.
  bool? swLogPersistenteValue;
  // State field(s) for swAutLocal widget.
  bool? swAutLocalValue;
  // State field(s) for swNotificacao widget.
  bool? swNotificacaoValue1;
  // State field(s) for swNotificacao widget.
  bool? swNotificacaoValue2;

  @override
  void initState(BuildContext context) {
    unViewFrameHeaderModel =
        createModel(context, () => UnViewFrameHeaderModel());
    emailAddressFieldTextController1Validator =
        _emailAddressFieldTextController1Validator;
    emailAddressFieldTextController2Validator =
        _emailAddressFieldTextController2Validator;
    emailAddressFieldTextController3Validator =
        _emailAddressFieldTextController3Validator;
  }

  @override
  void dispose() {
    unViewFrameHeaderModel.dispose();
    tbSettingsController?.dispose();
    emailAddressFieldFocusNode1?.dispose();
    emailAddressFieldTextController1?.dispose();

    emailAddressFieldFocusNode2?.dispose();
    emailAddressFieldTextController2?.dispose();

    emailAddressFieldFocusNode3?.dispose();
    emailAddressFieldTextController3?.dispose();

    emailAddressFieldFocusNode4?.dispose();
    emailAddressFieldTextController4?.dispose();

    emailAddressFieldFocusNode5?.dispose();
    emailAddressFieldTextController5?.dispose();

    emailAddressFieldFocusNode6?.dispose();
    emailAddressFieldTextController6?.dispose();
  }
}
