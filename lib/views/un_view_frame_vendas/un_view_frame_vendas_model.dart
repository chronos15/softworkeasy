import '/backend/api_requests/api_calls.dart';
import '/components/un_view_frame_chart_vendas_widget.dart';
import '/components/un_view_frame_loading_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/message_box/message_box_widget.dart';
import '/frame_components/un_view_frame_filter_date/un_view_frame_filter_date_widget.dart';
import 'dart:math';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'un_view_frame_vendas_widget.dart' show UnViewFrameVendasWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class UnViewFrameVendasModel extends FlutterFlowModel<UnViewFrameVendasWidget> {
  ///  Local state fields for this component.

  DateTime? dateSelected;

  DateTime? dateSelectedSemanal;

  bool isAllLoading = false;

  ///  State fields for stateful widgets in this component.

  final unViewFrameVendasShortcutsFocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter;
  DateTime? datePicked;
  // Stores action output result for [Bottom Sheet - unViewFrameFilterDate] action in IconButton widget.
  DateTime? actionReturnDate;
  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;
  // Model for unViewFrameChartVendas component.
  late UnViewFrameChartVendasModel unViewFrameChartVendasModel1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 = FlutterFlowDataTableController<int>();
  // Model for unViewFrameChartVendas component.
  late UnViewFrameChartVendasModel unViewFrameChartVendasModel2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    unViewFrameChartVendasModel1 =
        createModel(context, () => UnViewFrameChartVendasModel());
    unViewFrameChartVendasModel2 =
        createModel(context, () => UnViewFrameChartVendasModel());
  }

  @override
  void dispose() {
    unViewFrameVendasShortcutsFocusNode.dispose();
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();

    unViewFrameChartVendasModel1.dispose();
    paginatedDataTableController1.dispose();
    unViewFrameChartVendasModel2.dispose();
    paginatedDataTableController2.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
