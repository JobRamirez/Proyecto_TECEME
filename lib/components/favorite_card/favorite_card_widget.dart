import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favorite_card_model.dart';
export 'favorite_card_model.dart';

class FavoriteCardWidget extends StatefulWidget {
  const FavoriteCardWidget({
    super.key,
    String? img_desc,
    String? location,
    String? name,
  })  : this.img_desc = img_desc ??
            'https://dimg.dreamflow.cloud/v1/image/snowy%20mountain%20peak%20sunset',
        this.location = location ?? 'North Cascades, WA',
        this.name = name ?? 'Glacier Peak Lookout';

  final String img_desc;
  final String location;
  final String name;

  @override
  State<FavoriteCardWidget> createState() => _FavoriteCardWidgetState();
}

class _FavoriteCardWidgetState extends State<FavoriteCardWidget> {
  late FavoriteCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
              shape: BoxShape.rectangle,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 0),
                      fadeOutDuration: Duration(milliseconds: 0),
                      imageUrl: valueOrDefault<String>(
                        widget!.img_desc,
                        'https://dimg.dreamflow.cloud/v1/image/snowy%20mountain%20peak%20sunset',
                      ),
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                      alignment: Alignment(0.0, 0.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget!.name,
                            'Glacier Peak Lookout',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 14.0,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.location,
                                  'North Cascades, WA',
                                ),
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                        wrapWithModel(
                          model: _model.buttonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: ButtonWidget(
                            content: 'View Details',
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
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: FlutterFlowTheme.of(context).error,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
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
