import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/frame_components/un_view_frame_vazio/un_view_frame_vazio_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'unview_frame_vendas_vendedor_model.dart';
export 'unview_frame_vendas_vendedor_model.dart';

class UnviewFrameVendasVendedorWidget extends StatefulWidget {
  const UnviewFrameVendasVendedorWidget({
    super.key,
    required this.valueJson,
    required this.dateInicial,
    required this.dateFinal,
    required this.totalAcumulado,
    required this.numeroAcumulado,
  });

  final List<dynamic>? valueJson;
  final DateTime? dateInicial;
  final DateTime? dateFinal;
  final double? totalAcumulado;
  final int? numeroAcumulado;

  @override
  State<UnviewFrameVendasVendedorWidget> createState() =>
      _UnviewFrameVendasVendedorWidgetState();
}

class _UnviewFrameVendasVendedorWidgetState
    extends State<UnviewFrameVendasVendedorWidget> {
  late UnviewFrameVendasVendedorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnviewFrameVendasVendedorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 7.0,
            color: Color(0x2F1D2429),
            offset: Offset(
              0.0,
              3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                title: Text(
                                  'Vendas por vendedor'.maybeHandleOverflow(
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
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if ((widget.valueJson!.isNotEmpty) &&
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
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        AutoSizeText(
                                          'Faturamento',
                                          maxLines: 1,
                                          minFontSize: 1.0,
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
                                            functions.realFormat(
                                                valueOrDefault<String>(
                                              widget.totalAcumulado
                                                  ?.toString(),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                            widget.numeroAcumulado?.toString(),
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
                  if ((widget.valueJson!.isNotEmpty) &&
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
                                  functions.realFormat(valueOrDefault<String>(
                                    widget.totalAcumulado?.toString(),
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
                                          FlutterFlowTheme.of(context).primary,
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
                                  widget.numeroAcumulado?.toString(),
                                  '0',
                                ),
                                maxLines: 1,
                                minFontSize: 8.0,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 10.0)),
                    ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final listVendedor = widget.valueJson!.toList();
                        if (listVendedor.isEmpty) {
                          return const Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: UnViewFrameVazioWidget(
                                sTitulo: 'Lista Vazia',
                                sMessage: 'Não existem dados nesse período',
                              ),
                            ),
                          );
                        }

                        return FlutterFlowDataTable<dynamic>(
                          controller: _model.paginatedDataTableController,
                          data: listVendedor,
                          numRows: listVendedor.length,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Rank',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                              fixedWidth: 50.0,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Vendedor',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                              fixedWidth: 250.0,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Faturamento',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                              fixedWidth: 100.0,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Quantidade',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                              fixedWidth: 100.0,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Ticket Médio',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ),
                          ],
                          dataRowBuilder: (listVendedorItem, listVendedorIndex,
                                  selected, onSelectChanged) =>
                              DataRow(
                            color: WidgetStateProperty.all(
                              listVendedorIndex % 2 == 0
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                            ),
                            cells: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: AutoSizeText(
                                      (valueOrDefault<int>(
                                                listVendedorIndex,
                                                0,
                                              ) +
                                              1)
                                          .toString(),
                                      maxLines: 1,
                                      minFontSize: 4.0,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 3.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: LinearPercentIndicator(
                                          percent: ((valueOrDefault<double>(
                                                        functions
                                                            .valuesJsonToDouble(
                                                                getJsonField(
                                                          listVendedorItem,
                                                          r'''$..total''',
                                                        )),
                                                        0.0,
                                                      ) *
                                                      100) /
                                                  valueOrDefault<double>(
                                                    widget.totalAcumulado,
                                                    0.0,
                                                  )) /
                                              100,
                                          lineHeight: 25.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor: valueOrDefault<Color>(
                                            functions.addColorFromInt(
                                                valueOrDefault<int>(
                                                  listVendedorIndex * 25,
                                                  0,
                                                ),
                                                FlutterFlowTheme.of(context)
                                                    .primary),
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          backgroundColor: const Color(0x1B525252),
                                          center: Text(
                                            valueOrDefault<String>(
                                              functions.firstUpper(
                                                  valueOrDefault<String>(
                                                    getJsonField(
                                                      listVendedorItem,
                                                      r'''$..vendedor''',
                                                    )?.toString(),
                                                    '--',
                                                  ),
                                                  '--'),
                                              '--',
                                            ).maybeHandleOverflow(
                                              maxChars: 25,
                                              replacement: '…',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Urbanist',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          barRadius: const Radius.circular(50.0),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                      Container(
                                        width: 75.0,
                                        decoration: const BoxDecoration(),
                                        child: AutoSizeText(
                                          valueOrDefault<String>(
                                            '${valueOrDefault<String>(
                                              formatNumber(
                                                (getJsonField(
                                                          listVendedorItem,
                                                          r'''$..total''',
                                                        ) *
                                                        100) /
                                                    valueOrDefault<double>(
                                                      widget.totalAcumulado,
                                                      0.0,
                                                    ),
                                                formatType: FormatType.custom,
                                                format: '##.##',
                                                locale: 'pt_br',
                                              ),
                                              '0',
                                            )}%',
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 5.0)),
                                  ),
                                ],
                              ),
                              AutoSizeText(
                                valueOrDefault<String>(
                                  functions.realFormat(functions
                                      .valuesJsonToDouble(getJsonField(
                                        listVendedorItem,
                                        r'''$..total''',
                                      ))
                                      .toString()),
                                  '0',
                                ),
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width: 120.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0x194B39EF),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        functions
                                            .valuesJsonToInt(getJsonField(
                                              listVendedorItem,
                                              r'''$..numero''',
                                            ))
                                            .toString(),
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 8.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  functions.realFormat(valueOrDefault<String>(
                                    functions
                                        .valuesJsonToDouble(getJsonField(
                                          listVendedorItem,
                                          r'''$..valormedia''',
                                        ))
                                        .toString(),
                                    '0',
                                  )),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: const Color(0xFF00A13C),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ].map((c) => DataCell(c)).toList(),
                          ),
                          emptyBuilder: () => const Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: UnViewFrameVazioWidget(
                                sTitulo: 'Lista Vazia',
                                sMessage: 'Não existem dados nesse período',
                              ),
                            ),
                          ),
                          paginated: false,
                          selectable: false,
                          width: double.infinity,
                          height: double.infinity,
                          minWidth: 550.0,
                          headingRowHeight: 40.0,
                          dataRowHeight: 55.0,
                          columnSpacing: 10.0,
                          borderRadius: BorderRadius.circular(8.0),
                          addHorizontalDivider: false,
                          addTopAndBottomDivider: false,
                          hideDefaultHorizontalDivider: true,
                          addVerticalDivider: false,
                        );
                      },
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
