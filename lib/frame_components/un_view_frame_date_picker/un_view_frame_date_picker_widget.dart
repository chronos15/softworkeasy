import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'un_view_frame_date_picker_model.dart';
export 'un_view_frame_date_picker_model.dart';

class UnViewFrameDatePickerWidget extends StatefulWidget {
  const UnViewFrameDatePickerWidget({super.key});

  @override
  State<UnViewFrameDatePickerWidget> createState() =>
      _UnViewFrameDatePickerWidgetState();
}

class _UnViewFrameDatePickerWidgetState
    extends State<UnViewFrameDatePickerWidget> {
  late UnViewFrameDatePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnViewFrameDatePickerModel());

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: custom_widgets.DatePickerRanger(
          width: double.infinity,
          height: double.infinity,
          dateInitial: getCurrentTimestamp,
          actionConfirm: () async {
            Navigator.pop(context);
          },
          actionCancel: () async {},
        ),
      ),
    );
  }
}
