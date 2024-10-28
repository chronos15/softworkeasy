import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'un_view_frame_indicadores_model.dart';
export 'un_view_frame_indicadores_model.dart';

class UnViewFrameIndicadoresWidget extends StatefulWidget {
  const UnViewFrameIndicadoresWidget({
    super.key,
    double? rentabilidade,
    required this.clientes,
    double? margemLucro,
    required this.mixProdutos,
    required this.nVendas,
    double? ticketMedio,
    double? faturamento,
    double? difFaturamento,
    double? difMargem,
    required this.difNVendas,
    double? difTicketMedio,
    double? difMixProduto,
    required this.difClienteVariadoss,
    double? descontos,
    double? difDescontos,
    double? cmv,
    double? difCmv,
  })  : rentabilidade = rentabilidade ?? 0.0,
        margemLucro = margemLucro ?? 0.0,
        ticketMedio = ticketMedio ?? 0.0,
        faturamento = faturamento ?? 0.0,
        difFaturamento = difFaturamento ?? 0.0,
        difMargem = difMargem ?? 0.0,
        difTicketMedio = difTicketMedio ?? 0.0,
        difMixProduto = difMixProduto ?? 0.0,
        descontos = descontos ?? 0.0,
        difDescontos = difDescontos ?? 0.0,
        cmv = cmv ?? 0.0,
        difCmv = difCmv ?? 0.0;

  final double rentabilidade;
  final double? clientes;
  final double margemLucro;
  final double? mixProdutos;
  final double? nVendas;
  final double ticketMedio;
  final double faturamento;
  final double difFaturamento;
  final double difMargem;
  final double? difNVendas;
  final double difTicketMedio;
  final double difMixProduto;
  final double? difClienteVariadoss;
  final double descontos;
  final double difDescontos;
  final double cmv;
  final double difCmv;

  @override
  State<UnViewFrameIndicadoresWidget> createState() =>
      _UnViewFrameIndicadoresWidgetState();
}

class _UnViewFrameIndicadoresWidgetState
    extends State<UnViewFrameIndicadoresWidget> {
  late UnViewFrameIndicadoresModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameIndicadoresModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          color: Colors.transparent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: double.infinity,
            height: 260.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: ListTile(
                      title: Text(
                        'Indicadores',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      dense: true,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Faturamento: ${valueOrDefault<String>(
                                          functions.realFormat(
                                              valueOrDefault<String>(
                                            widget.faturamento.toString(),
                                            '0',
                                          )),
                                          '0',
                                        )}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered1 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered1 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.coins,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 17.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        valueOrDefault<String>(
                                          functions.realFormat(
                                              widget.faturamento.toString()),
                                          '0',
                                        ),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'Faturamento',
                                                    maxLines: 1,
                                                    minFontSize: 8.0,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difFaturamento >=
                                                    0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difFaturamento <
                                                    0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difFaturamento >=
                                                    -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${valueOrDefault<String>(
                                                        formatNumber(
                                                          widget
                                                              .difFaturamento,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '##.##',
                                                          locale: 'pt_br',
                                                        ),
                                                        '0',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    minFontSize: 3.0,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difFaturamento <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Rentabilidade: ${functions.realFormat(widget.rentabilidade.toString())}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered2 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered2 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFF005DC7),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.percent_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        valueOrDefault<String>(
                                          '${valueOrDefault<String>(
                                            formatNumber(
                                              widget.margemLucro,
                                              formatType: FormatType.custom,
                                              format: '##.##',
                                              locale: 'pt_br',
                                            ),
                                            '0',
                                          )}%',
                                          '0',
                                        ),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'Margem de Lucro',
                                                    maxLines: 1,
                                                    minFontSize: 8.0,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difMargem >= 0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difMargem < 0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difMargem >= -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${formatNumber(
                                                        widget.difMargem,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '##.##',
                                                        locale: 'pt_br',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difMargem <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Número de vendas: ${functions.doubleToInt(valueOrDefault<double>(
                                              widget.nVendas,
                                              0.0,
                                            )).toString()}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered3 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered3 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFF00BD30),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.shopping_cart_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        functions
                                            .doubleToInt(valueOrDefault<double>(
                                              widget.nVendas,
                                              0.0,
                                            ))
                                            .toString(),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'N° de Vendas',
                                                    maxLines: 1,
                                                    minFontSize: 8.0,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difNVendas! >= 0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difNVendas! < 0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difNVendas! >=
                                                    -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${formatNumber(
                                                        widget.difNVendas,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '##.##',
                                                        locale: 'pt_br',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difNVendas! <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Descontos: ${widget.descontos.toString()}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered4 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered4 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFFFF0010),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.percent_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        valueOrDefault<String>(
                                          functions.realFormat(
                                              valueOrDefault<String>(
                                            widget.descontos.toString(),
                                            '0',
                                          )),
                                          '0',
                                        ),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'Desconto',
                                                    maxLines: 1,
                                                    minFontSize: 8.0,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difDescontos >= 0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difDescontos < 0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difDescontos >=
                                                    -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${valueOrDefault<String>(
                                                        formatNumber(
                                                          widget.difDescontos,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '##.##',
                                                          locale: 'pt_br',
                                                        ),
                                                        '0',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difDescontos <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Ticket Médio: ${valueOrDefault<String>(
                                          functions.realFormat(
                                              valueOrDefault<String>(
                                            widget.ticketMedio.toString(),
                                            '0',
                                          )),
                                          '0',
                                        )}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered5 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered5 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFFFF494B),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.timeline,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        valueOrDefault<String>(
                                          functions.realFormat(
                                              widget.ticketMedio.toString()),
                                          '0',
                                        ),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'Ticket Médio',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difTicketMedio >=
                                                    0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difTicketMedio <
                                                    0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difTicketMedio >=
                                                    -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${formatNumber(
                                                        widget.difTicketMedio,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '##.##',
                                                        locale: 'pt_br',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difTicketMedio <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Mix de Produtos: ${valueOrDefault<String>(
                                          widget.mixProdutos?.toString(),
                                          '0',
                                        )}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered6 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered6 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFFFF691A),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.boxes,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 17.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        functions
                                            .doubleToInt(valueOrDefault<double>(
                                              widget.mixProdutos,
                                              0.0,
                                            ))
                                            .toString(),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'Mix de Produtos',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difMixProduto >=
                                                    0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difMixProduto < 0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difMixProduto >=
                                                    -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${valueOrDefault<String>(
                                                        formatNumber(
                                                          widget.difMixProduto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '##.##',
                                                          locale: 'pt_br',
                                                        ),
                                                        '0',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difMixProduto <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Clientes variados: ${valueOrDefault<String>(
                                          widget.clientes?.toString(),
                                          '0',
                                        )}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered7 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered7 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.groups_sharp,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        functions
                                            .doubleToInt(valueOrDefault<double>(
                                              widget.clientes,
                                              0.0,
                                            ))
                                            .toString(),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'Clientes variados',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget
                                                        .difClienteVariadoss! >=
                                                    0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget
                                                        .difClienteVariadoss! <
                                                    0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget
                                                        .difClienteVariadoss! >=
                                                    -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${formatNumber(
                                                        widget
                                                            .difClienteVariadoss,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '##.##',
                                                        locale: 'pt_br',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difClienteVariadoss! <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        'Custo de Mercadoria Vendida: ${valueOrDefault<String>(
                                          functions.realFormat(
                                              widget.cmv.toString()),
                                          '0',
                                        )}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: const Color(0xFFFF8800),
                                  elevation: 4.0,
                                  tailBaseWidth: 20.0,
                                  tailLength: 16.0,
                                  waitDuration: const Duration(milliseconds: 0),
                                  showDuration: const Duration(milliseconds: 0),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: MouseRegion(
                                    opaque: true,
                                    cursor: SystemMouseCursors.click ??
                                        MouseCursor.defer,
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered8 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegionHovered8 = false);
                                    }),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFFFFC519),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.monetization_on_outlined,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        valueOrDefault<String>(
                                          functions.realFormat(
                                              valueOrDefault<String>(
                                            widget.cmv.toString(),
                                            '0',
                                          )),
                                          '0',
                                        ),
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    'CMV',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                if (widget.difCmv >= 0.0)
                                                  Icon(
                                                    Icons.trending_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difCmv < 0.0)
                                                  Icon(
                                                    Icons
                                                        .trending_down_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 17.0,
                                                  ),
                                                if (widget.difCmv >= -200.0)
                                                  AutoSizeText(
                                                    valueOrDefault<String>(
                                                      '${valueOrDefault<String>(
                                                        formatNumber(
                                                          widget.difCmv,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '##.##',
                                                          locale: 'pt_br',
                                                        ),
                                                        '0',
                                                      )}%',
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: widget
                                                                          .difCmv <
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 10.0))
                        .addToStart(const SizedBox(width: 0.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
