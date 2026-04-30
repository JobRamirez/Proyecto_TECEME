import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'action_button_model.dart';
export 'action_button_model.dart';

class ActionButtonWidget extends StatefulWidget {
  const ActionButtonWidget({
    super.key,
    this.bg,
    this.icon,
    this.icon_color,
    this.label,
  });

  final Color? bg;
  final Widget? icon;
  final Color? icon_color;
  final String? label;

  @override
  State<ActionButtonWidget> createState() => _ActionButtonWidgetState();
}

class _ActionButtonWidgetState extends State<ActionButtonWidget> {
  late ActionButtonModel _model;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActionButtonModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: widget.bg ?? FlutterFlowTheme.of(context).primary,
            borderRadius: BorderRadius.circular(9999),
          ),
          alignment: Alignment.center,
          child: widget.icon,
        ),
        const SizedBox(height: 4),
        Text(
          widget.label ?? 'Directions',
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.cabin(),
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
        ),
      ],
    );
  }
}