import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stat_item_model.dart';
export 'stat_item_model.dart';

class StatItemWidget extends StatefulWidget {
  const StatItemWidget({
    super.key,
    String? label,
    String? value,
  })  : this.label = label ?? 'Saved',
        this.value = value ?? '24';

  final String label;
  final String value;

  @override
  State<StatItemWidget> createState() => _StatItemWidgetState();
}

class _StatItemWidgetState extends State<StatItemWidget> {
  late StatItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          valueOrDefault<String>(
            widget!.value,
            '24',
          ),
          style: FlutterFlowTheme.of(context).titleMedium.override(
                font: GoogleFonts.cabin(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                lineHeight: 1.35,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.label,
            'Saved',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.cabin(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.2,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
