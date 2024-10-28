// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_gauges/gauges.dart';

//
class GaugeMeta extends StatefulWidget {
  const GaugeMeta({
    super.key,
    this.width,
    this.height,
    this.valueMetaTotal = 100, // Valor padrão
    this.valueMetaAlcancada = 50, // Valor padrão
  });

  final double? width;
  final double? height;
  final double? valueMetaTotal;
  final double? valueMetaAlcancada;

  @override
  State<GaugeMeta> createState() => _GaugeMetaState();
}

class _GaugeMetaState extends State<GaugeMeta> {
  final Color _pointerColor = const Color(0xFF494CA2);
  @override
  Widget build(BuildContext context) {
    final double porcentagem =
        (widget.valueMetaAlcancada! / widget.valueMetaTotal!) * 100;
    return Container(
      width: widget.width ?? 200, // Definir largura padrão
      height: widget.height ?? 200, // Definir altura padrão
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: widget.valueMetaTotal!,
            axisLineStyle: const AxisLineStyle(
              thickness: 0.2,
              thicknessUnit: GaugeSizeUnit.factor,
            ),
            pointers: <GaugePointer>[
              NeedlePointer(
                  enableAnimation: true,
                  gradient: const LinearGradient(colors: <Color>[
                    Color.fromRGBO(203, 126, 223, 0),
                    Color(0xFFCB7EDF)
                  ], stops: <double>[
                    0.25,
                    0.75
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  animationType: AnimationType.easeOutBack,
                  value: widget.valueMetaAlcancada!,
                  animationDuration: 1300,
                  needleStartWidth: 3,
                  needleEndWidth: 6,
                  needleLength: 0.8,
                  knobStyle: const KnobStyle(
                    knobRadius: 0,
                  )),
              RangePointer(
                  value: widget.valueMetaAlcancada!,
                  width: 0.20,
                  sizeUnit: GaugeSizeUnit.factor,
                  color: _pointerColor,
                  animationDuration: 1300,
                  animationType: AnimationType.easeOutBack,
                  gradient: const SweepGradient(
                      colors: <Color>[Color(0xFF9E40DC), Color(0xFFE63B86)],
                      stops: <double>[0.25, 0.75]),
                  enableAnimation: true)
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Text(
                  '${porcentagem.toStringAsFixed(1)}%',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                angle: 90,
                positionFactor: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
