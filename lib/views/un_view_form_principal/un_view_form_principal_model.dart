import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_header/un_view_frame_header_widget.dart';
import '/frame_components/un_view_frame_profile/un_view_frame_profile_widget.dart';
import '/frame_components/un_view_frame_side_menu/un_view_frame_side_menu_widget.dart';
import '/views/un_view_frame_dash_painel/un_view_frame_dash_painel_widget.dart';
import '/views/un_view_frame_home/un_view_frame_home_widget.dart';
import '/views/un_view_frame_produtos/un_view_frame_produtos_widget.dart';
import '/views/un_view_frame_vendas/un_view_frame_vendas_widget.dart';
import '/views/un_view_lista_clientes/un_view_lista_clientes_widget.dart';
import 'un_view_form_principal_widget.dart' show UnViewFormPrincipalWidget;
import 'package:flutter/material.dart';

class UnViewFormPrincipalModel
    extends FlutterFlowModel<UnViewFormPrincipalWidget> {
  ///  Local state fields for this page.

  Pages? pageSelected = Pages.Inicio;

  ///  State fields for stateful widgets in this page.

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
  // Model for unViewFrameProfile component.
  late UnViewFrameProfileModel unViewFrameProfileModel;
  // Model for unViewFrameProdutos component.
  late UnViewFrameProdutosModel unViewFrameProdutosModel;
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
    unViewFrameProfileModel =
        createModel(context, () => UnViewFrameProfileModel());
    unViewFrameProdutosModel =
        createModel(context, () => UnViewFrameProdutosModel());
    unViewFrameSideMenuModel2 =
        createModel(context, () => UnViewFrameSideMenuModel());
  }

  @override
  void dispose() {
    unViewFrameHeaderModel.dispose();
    unViewFrameSideMenuModel1.dispose();
    unViewFrameHomeModel.dispose();
    unViewFrameDashPainelModel.dispose();
    unViewListaClientesModel.dispose();
    unViewFrameVendasModel.dispose();
    unViewFrameProfileModel.dispose();
    unViewFrameProdutosModel.dispose();
    unViewFrameSideMenuModel2.dispose();
  }
}
