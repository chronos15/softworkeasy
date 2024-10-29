import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import '/frame_components/un_view_frame_profile/un_view_frame_profile_widget.dart';
import '/frame_components/un_view_frame_side_menu/un_view_frame_side_menu_widget.dart';
import '/views/un_view_frame_dash_painel/un_view_frame_dash_painel_widget.dart';
import '/views/un_view_frame_home/un_view_frame_home_widget.dart';
import '/views/un_view_frame_produtos/un_view_frame_produtos_widget.dart';
import '/views/un_view_frame_vendas/un_view_frame_vendas_widget.dart';
import '/views/un_view_lista_clientes/un_view_lista_clientes_widget.dart';
import '/views/unview_frame_dashboard_financeiro/unview_frame_dashboard_financeiro_widget.dart';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'un_view_form_principal_widget.dart' show UnViewFormPrincipalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class UnViewFormPrincipalModel
    extends FlutterFlowModel<UnViewFormPrincipalWidget> {
  ///  Local state fields for this page.

  Pages? pageSelected = Pages.Inicio;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantVerifyToken;
  // Model for unViewFrameHeader component.
  late UnViewFrameHeaderModel unViewFrameHeaderModel;
  // Model for unViewFrameSideMenu component.
  late UnViewFrameSideMenuModel unViewFrameSideMenuModel1;
  // Model for unViewFrameHome component.
  late UnViewFrameHomeModel unViewFrameHomeModel;
  // Model for unViewFrameDashPainel component.
  late UnViewFrameDashPainelModel unViewFrameDashPainelModel;
  // Model for unViewListaClientes component.
  late UnViewListaClientesModel unViewListaClientesModel;
  // Model for unViewFrameVendas component.
  late UnViewFrameVendasModel unViewFrameVendasModel;
  // Model for unViewFrameProdutos component.
  late UnViewFrameProdutosModel unViewFrameProdutosModel;
  // Model for unviewFrameDashboardFinanceiro component.
  late UnviewFrameDashboardFinanceiroModel unviewFrameDashboardFinanceiroModel;
  // Model for unViewFrameProfile component.
  late UnViewFrameProfileModel unViewFrameProfileModel;
  // Model for unViewFrameSideMenu component.
  late UnViewFrameSideMenuModel unViewFrameSideMenuModel2;

  @override
  void initState(BuildContext context) {
    unViewFrameHeaderModel =
        createModel(context, () => UnViewFrameHeaderModel());
    unViewFrameSideMenuModel1 =
        createModel(context, () => UnViewFrameSideMenuModel());
    unViewFrameHomeModel = createModel(context, () => UnViewFrameHomeModel());
    unViewFrameDashPainelModel =
        createModel(context, () => UnViewFrameDashPainelModel());
    unViewListaClientesModel =
        createModel(context, () => UnViewListaClientesModel());
    unViewFrameVendasModel =
        createModel(context, () => UnViewFrameVendasModel());
    unViewFrameProdutosModel =
        createModel(context, () => UnViewFrameProdutosModel());
    unviewFrameDashboardFinanceiroModel =
        createModel(context, () => UnviewFrameDashboardFinanceiroModel());
    unViewFrameProfileModel =
        createModel(context, () => UnViewFrameProfileModel());
    unViewFrameSideMenuModel2 =
        createModel(context, () => UnViewFrameSideMenuModel());
  }

  @override
  void dispose() {
    instantVerifyToken?.cancel();
    unViewFrameHeaderModel.dispose();
    unViewFrameSideMenuModel1.dispose();
    unViewFrameHomeModel.dispose();
    unViewFrameDashPainelModel.dispose();
    unViewListaClientesModel.dispose();
    unViewFrameVendasModel.dispose();
    unViewFrameProdutosModel.dispose();
    unviewFrameDashboardFinanceiroModel.dispose();
    unViewFrameProfileModel.dispose();
    unViewFrameSideMenuModel2.dispose();
  }
}
