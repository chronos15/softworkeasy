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

import 'package:flutter/services.dart';

class CustomEditCurrency extends StatefulWidget {
  const CustomEditCurrency({
    super.key,
    this.width,
    this.height,
    this.sLabel,
    this.icon,
  });

  final double? width;
  final double? height;
  final String? sLabel;
  final Widget? icon;

  @override
  State<CustomEditCurrency> createState() => _CustomEditCurrencyState();
}

class _CustomEditCurrencyState extends State<CustomEditCurrency> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 60),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          icon: widget.icon,
          labelText: widget.sLabel,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          // Formata o texto conforme o usuário digita
          String formattedValue = _formatCurrency(value);

          setState(() {
            _controller.value = TextEditingValue(
              text: formattedValue,
              selection: TextSelection.collapsed(offset: formattedValue.length),
            );
            FFAppState().valueCurrency =
                formattedValue; // Atualiza o estado global
          });
        },
      ),
    );
  }

  String _formatCurrency(String value) {
    if (value.isEmpty) {
      return "R\$ 0,00";
    }

    double valueAsDouble = double.parse(value);
    final formatter = NumberFormat("#,##0.00", "pt_BR");
    return "R\$ " + formatter.format(valueAsDouble / 100);
  }
}
