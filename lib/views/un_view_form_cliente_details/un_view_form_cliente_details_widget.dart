import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'un_view_form_cliente_details_model.dart';
export 'un_view_form_cliente_details_model.dart';

class UnViewFormClienteDetailsWidget extends StatefulWidget {
  const UnViewFormClienteDetailsWidget({
    super.key,
    required this.iTabInitial,
  });

  final int? iTabInitial;

  @override
  State<UnViewFormClienteDetailsWidget> createState() =>
      _UnViewFormClienteDetailsWidgetState();
}

class _UnViewFormClienteDetailsWidgetState
    extends State<UnViewFormClienteDetailsWidget> {
  late UnViewFormClienteDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFormClienteDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.unViewFrameHeaderModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: UnViewFrameHeaderWidget(
                isPrincipal: false,
                sNamePag: 'Detalhes do Cliente',
                drawerAction: () async {},
                expanAction: () async {},
                actionMenuModal: () async {},
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
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
    );
  }
}
