import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'poi_marker_model.dart';
export 'poi_marker_model.dart';

class PoiMarkerWidget extends StatefulWidget {
  const PoiMarkerWidget({
    super.key,
    String? align_x,
    double? align_y,
    String? distance,
    String? img_desc,
    String? title,
  })  : this.align_x = align_x ?? '-0.4',
        this.align_y = align_y ?? -0.1,
        this.distance = distance ?? '1.2 km',
        this.img_desc =
            img_desc ?? 'https://dimg.dreamflow.cloud/v1/image/mountain%20peak',
        this.title = title ?? 'Eagle Peak';

  final String align_x;
  final double align_y;
  final String distance;
  final String img_desc;
  final String title;

  @override
  State<PoiMarkerWidget> createState() => _PoiMarkerWidgetState();
}

class _PoiMarkerWidgetState extends State<PoiMarkerWidget> {
  late PoiMarkerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoiMarkerModel());
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
        Container(),
        Container(
          width: 0.0,
          height: 0.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 12.0,
                  sigmaY: 12.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).onPrimary80,
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 0),
                                fadeOutDuration: Duration(milliseconds: 0),
                                imageUrl: valueOrDefault<String>(
                                  widget!.img_desc,
                                  'https://dimg.dreamflow.cloud/v1/image/mountain%20peak',
                                ),
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget!.title,
                                  'Eagle Peak',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.cabin(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget!.distance,
                                  '1.2 km',
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
                                          .secondary,
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
                            ],
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 2.0,
              height: 12.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).onPrimary80,
                shape: BoxShape.rectangle,
              ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ],
    );
  }
}
