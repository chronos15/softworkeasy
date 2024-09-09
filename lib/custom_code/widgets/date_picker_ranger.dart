// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerRanger extends StatefulWidget {
  const DatePickerRanger({
    super.key,
    this.width,
    this.height,
    this.dateInitial,
    required this.actionConfirm,
    this.actionCancel,
  });

  final double? width;
  final double? height;
  final DateTime? dateInitial;
  final Future Function() actionConfirm;
  final Future Function()? actionCancel;

  @override
  State<DatePickerRanger> createState() => _DatePickerRangerState();
}

class _DatePickerRangerState extends State<DatePickerRanger> {
  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      view: DateRangePickerView.month,
      backgroundColor: Colors.transparent,
      selectionMode: DateRangePickerSelectionMode.range,
      showActionButtons: true,
      onSubmit: (Object? value) async {
        await widget.actionConfirm();
      },
      onCancel: () {
        Navigator.pop(context);
      },
      monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
    );
  }
}
