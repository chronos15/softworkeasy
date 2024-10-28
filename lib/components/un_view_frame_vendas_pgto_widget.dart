import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'un_view_frame_vendas_pgto_model.dart';
export 'un_view_frame_vendas_pgto_model.dart';

class UnViewFrameVendasPgtoWidget extends StatefulWidget {
  const UnViewFrameVendasPgtoWidget({
    super.key,
    required this.listJson,
    double? totalAcumulado,
    int? numeroAcumulado,
    required this.dateInicial,
    required this.dateFinal,
  })  : totalAcumulado = totalAcumulado ?? 0.0,
        numeroAcumulado = numeroAcumulado ?? 0;

  final List<dynamic>? listJson;
  final double totalAcumulado;
  final int numeroAcumulado;
  final DateTime? dateInicial;
  final DateTime? dateFinal;

  @override
  State<UnViewFrameVendasPgtoWidget> createState() =>
      _UnViewFrameVendasPgtoWidgetState();
}

class _UnViewFrameVendasPgtoWidgetState
    extends State<UnViewFrameVendasPgtoWidget> {
  late UnViewFrameVendasPgtoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameVendasPgtoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.list,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      title: Text(
                                        'Vendas por pagamento'
                                            .maybeHandleOverflow(
                                          maxChars: 25,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                      subtitle: Text(
                                        '${dateTimeFormat(
                                          "dd/MM/yyyy",
                                          widget.dateFinal,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )} - ${dateTimeFormat(
                                          "dd/MM/yyyy",
                                          widget.dateInicial,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}'
                                            .maybeHandleOverflow(
                                          maxChars: 25,
                                          replacement: '…',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Urbanist',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                      dense: true,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10.0, 0.0, 0.0, 0.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if ((widget.listJson!.isNotEmpty) &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                              Expanded(
                                flex: 2,
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  child: Container(
                                    width: 100.0,
                                    decoration: const BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Faturamento',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                              AutoSizeText(
                                                valueOrDefault<String>(
                                                  functions.realFormat(
                                                      valueOrDefault<String>(
                                                    widget.totalAcumulado
                                                        .toString(),
                                                    '0',
                                                  )),
                                                  '0',
                                                ),
                                                maxLines: 1,
                                                minFontSize: 8.0,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'N°',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                              AutoSizeText(
                                                valueOrDefault<String>(
                                                  widget.numeroAcumulado
                                                      .toString(),
                                                  '0',
                                                ),
                                                maxLines: 1,
                                                minFontSize: 8.0,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 10.0)),
                                    ),
                                  ),
                                ),
                              ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                        if ((widget.listJson!.isNotEmpty) &&
                            responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Faturamento',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    AutoSizeText(
                                      valueOrDefault<String>(
                                        functions
                                            .realFormat(valueOrDefault<String>(
                                          widget.totalAcumulado.toString(),
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'N°',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    AutoSizeText(
                                      valueOrDefault<String>(
                                        widget.numeroAcumulado.toString(),
                                        '0',
                                      ),
                                      maxLines: 1,
                                      minFontSize: 8.0,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (widget.listJson!.isNotEmpty)
                                        Expanded(
                                          flex: 4,
                                          child: Builder(
                                            builder: (context) {
                                              final listVendedor =
                                                  widget.listJson!.toList();

                                              return FlutterFlowDataTable<
                                                  dynamic>(
                                                controller: _model
                                                    .paginatedDataTableController,
                                                data: listVendedor,
                                                numRows: listVendedor.length,
                                                columnsBuilder:
                                                    (onSortChanged) => [
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        'Nome',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Colors
                                                                      .transparent,
                                                                  fontSize: 1.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                    fixedWidth: 55.0,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Text(
                                                        'Nome',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                    fixedWidth: 150.0,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: AutoSizeText(
                                                          'Números',
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    fixedWidth: 100.0,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Ticket Médio',
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    fixedWidth: 100.0,
                                                  ),
                                                  DataColumn2(
                                                    label:
                                                        DefaultTextStyle.merge(
                                                      softWrap: true,
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Mix Produtos',
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    fixedWidth: 80.0,
                                                  ),
                                                ],
                                                dataRowBuilder:
                                                    (listVendedorItem,
                                                            listVendedorIndex,
                                                            selected,
                                                            onSelectChanged) =>
                                                        DataRow(
                                                  color:
                                                      WidgetStateProperty.all(
                                                    listVendedorIndex % 2 == 0
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  cells: [
                                                    AlignedTooltip(
                                                      content: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Text(
                                                          'Faturamento: ${valueOrDefault<String>(
                                                            functions.realFormat(
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                listVendedorItem,
                                                                r'''$..total''',
                                                              )?.toString(),
                                                              '--',
                                                            )),
                                                            '0',
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      offset: 4.0,
                                                      preferredDirection:
                                                          AxisDirection.down,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      backgroundColor:
                                                          valueOrDefault<Color>(
                                                        FFAppConstants
                                                                .colorsArrayCondPag[
                                                            valueOrDefault<int>(
                                                          listVendedorIndex,
                                                          0,
                                                        )],
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                      elevation: 4.0,
                                                      tailBaseWidth: 24.0,
                                                      tailLength: 12.0,
                                                      waitDuration: const Duration(
                                                          milliseconds: 100),
                                                      showDuration: const Duration(
                                                          milliseconds: 1500),
                                                      triggerMode:
                                                          TooltipTriggerMode
                                                              .tap,
                                                      child: Card(
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        color: valueOrDefault<
                                                            Color>(
                                                          FFAppConstants
                                                                  .colorsArrayCondPag[
                                                              valueOrDefault<
                                                                  int>(
                                                            listVendedorIndex,
                                                            0,
                                                          )],
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                        elevation: 0.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50.0),
                                                        ),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  7.0),
                                                          child: Icon(
                                                            Icons
                                                                .credit_card_outlined,
                                                            color: Colors.white,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        AutoSizeText(
                                                          valueOrDefault<
                                                              String>(
                                                            getJsonField(
                                                              listVendedorItem,
                                                              r'''$..tipo_venda''',
                                                            )?.toString(),
                                                            '--',
                                                          ),
                                                          maxLines: 2,
                                                          minFontSize: 5.0,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Urbanist',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                        AutoSizeText(
                                                          valueOrDefault<
                                                              String>(
                                                            functions.realFormat(
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                listVendedorItem,
                                                                r'''$..total''',
                                                              )?.toString(),
                                                              '0',
                                                            )),
                                                            '0',
                                                          ),
                                                          maxLines: 1,
                                                          minFontSize: 4.0,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Urbanist',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ]
                                                          .addToStart(const SizedBox(
                                                              height: 5.0))
                                                          .addToEnd(const SizedBox(
                                                              height: 5.0)),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          getJsonField(
                                                            listVendedorItem,
                                                            r'''$..numero''',
                                                          )?.toString(),
                                                          '0',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 1,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Urbanist',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 0.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Container(
                                                          width: 120.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0x194B39EF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(5.0),
                                                              child:
                                                                  AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.realFormat(
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      listVendedorItem,
                                                                      r'''$..valormedia''',
                                                                    )?.toString(),
                                                                    '0',
                                                                  )),
                                                                  '0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Urbanist',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          getJsonField(
                                                            listVendedorItem,
                                                            r'''$..Mix_Produto''',
                                                          )?.toString(),
                                                          '0',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 1,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Urbanist',
                                                              color: const Color(
                                                                  0xFF00A13C),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                  ]
                                                      .map((c) => DataCell(c))
                                                      .toList(),
                                                ),
                                                paginated: false,
                                                selectable: false,
                                                height: double.infinity,
                                                headingRowHeight: 40.0,
                                                dataRowHeight: 50.0,
                                                columnSpacing: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                addHorizontalDivider: false,
                                                addTopAndBottomDivider: false,
                                                hideDefaultHorizontalDivider:
                                                    true,
                                                addVerticalDivider: false,
                                              );
                                            },
                                          ),
                                        ),
                                      if ((widget.listJson!.isNotEmpty) &&
                                          responsiveVisibility(
                                            context: context,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: custom_widgets
                                                        .DoughnutDefault(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      sTitulo: '',
                                                      bLegendsVisible: false,
                                                      sListXValue: widget
                                                          .listJson!
                                                          .map((e) =>
                                                              getJsonField(
                                                                e,
                                                                r'''$..tipo_venda''',
                                                              ))
                                                          .toList()
                                                          .map((e) =>
                                                              e.toString())
                                                          .toList(),
                                                      vListYValue: functions
                                                          .valuesJsonToDoubleList(widget
                                                              .listJson
                                                              ?.map((e) =>
                                                                  getJsonField(
                                                                    e,
                                                                    r'''$..total''',
                                                                  ))
                                                              .toList()
                                                              .map((e) =>
                                                                  e.toString())
                                                              .toList()
                                                              .toList())!,
                                                      colorslist: FFAppConstants
                                                          .colorsArrayCondPag,
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
                              ),
                              if ((widget.listJson!.isNotEmpty) &&
                                  responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child:
                                                custom_widgets.DoughnutDefault(
                                              width: double.infinity,
                                              height: double.infinity,
                                              sTitulo: '',
                                              bLegendsVisible: false,
                                              sListXValue: widget.listJson!
                                                  .map((e) => getJsonField(
                                                        e,
                                                        r'''$..tipo_venda''',
                                                      ))
                                                  .toList()
                                                  .map((e) => e.toString())
                                                  .toList(),
                                              vListYValue: functions
                                                  .valuesJsonToDoubleList(
                                                      widget.listJson
                                                          ?.map((e) =>
                                                              getJsonField(
                                                                e,
                                                                r'''$..total''',
                                                              ))
                                                          .toList()
                                                          .map((e) =>
                                                              e.toString())
                                                          .toList()
                                                          .toList())!,
                                              colorslist: FFAppConstants
                                                  .colorsArrayCondPag,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (widget.listJson!.isEmpty)
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 110.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.unViewFrameVazioModel,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: const UnViewFrameVazioWidget(
                        sTitulo: 'Lista Vazia',
                        sMessage: 'Não existem dados nesse período',
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
