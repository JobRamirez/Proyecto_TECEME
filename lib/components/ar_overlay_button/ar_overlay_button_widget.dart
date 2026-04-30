import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ar_overlay_button_model.dart';
export 'ar_overlay_button_model.dart';

class ArOverlayButtonWidget extends StatefulWidget {
  const ArOverlayButtonWidget({
    super.key,
    this.icon,
  });

  final Widget? icon;

  @override
  State<ArOverlayButtonWidget> createState() => _ArOverlayButtonWidgetState();
}

class _ArOverlayButtonWidgetState extends State<ArOverlayButtonWidget> {
  late ArOverlayButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArOverlayButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9999.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            color: Color(0x44000000),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).onPrimary20,
              width: 1.0,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: widget!.icon!,
        ),
      ),
    );
  }
}
