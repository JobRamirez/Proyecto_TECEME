import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'map_marker_card_model.dart';
export 'map_marker_card_model.dart';

class MapMarkerCardWidget extends StatefulWidget {
  const MapMarkerCardWidget({
    super.key,
    String? category,
    String? distance,
    String? img_desc,
    String? rating,
    String? title,
  })  : this.category = category ?? 'Nature',
        this.distance = distance ?? '0.8 miles away',
        this.img_desc = img_desc ??
            'https://dimg.dreamflow.cloud/v1/image/modern%20architecture%20mountain%20top%20observatory%20sunset',
        this.rating = rating ?? '4.9',
        this.title = title ?? 'Vantage Peak Observatory';

  final String category;
  final String distance;
  final String img_desc;
  final String rating;
  final String title;

  @override
  State<MapMarkerCardWidget> createState() => _MapMarkerCardWidgetState();
}

class _MapMarkerCardWidgetState extends State<MapMarkerCardWidget> {
  late MapMarkerCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapMarkerCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            width: 320.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 1.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 0),
                    fadeOutDuration: Duration(milliseconds: 0),
                    imageUrl: valueOrDefault<String>(
                      widget!.img_desc,
                      'https://dimg.dreamflow.cloud/v1/image/modern%20architecture%20mountain%20top%20observatory%20sunset',
                    ),
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget!.title,
                                      'Vantage Peak Observatory',
                                    ),
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.cabin(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.35,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      size: 14.0,
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget!.rating,
                                        '4.9',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.cabin(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.2,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                              ],
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget!.distance,
                                '0.8 miles away',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.cabin(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                    lineHeight: 1.2,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget!.category,
                                    'Nature',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        font: GoogleFonts.cabin(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                        lineHeight: 1.2,
                                      ),
                                ),
                                wrapWithModel(
                                  model: _model.buttonModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonWidget(
                                    content: 'Details',
                                    icon_present: false,
                                    icon_end_present: false,
                                    on_tap: 'navigate:LocationDetails',
                                    variant: 'ghost',
                                    size: 'small',
                                    full_width: false,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
