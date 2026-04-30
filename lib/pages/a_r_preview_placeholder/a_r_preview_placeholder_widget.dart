import '/components/ar_overlay_button/ar_overlay_button_widget.dart';
import '/components/button/button_widget.dart';
import '/components/poi_marker/poi_marker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'a_r_preview_placeholder_model.dart';
export 'a_r_preview_placeholder_model.dart';

class ARPreviewPlaceholderWidget extends StatefulWidget {
  const ARPreviewPlaceholderWidget({super.key});

  static String routeName = 'ARPreviewPlaceholder';
  static String routePath = '/aRPreviewPlaceholder';

  @override
  State<ARPreviewPlaceholderWidget> createState() =>
      _ARPreviewPlaceholderWidgetState();
}

class _ARPreviewPlaceholderWidgetState
    extends State<ARPreviewPlaceholderWidget> {
  late ARPreviewPlaceholderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ARPreviewPlaceholderModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            CachedNetworkImage(
              fadeInDuration: Duration(milliseconds: 0),
              fadeOutDuration: Duration(milliseconds: 0),
              imageUrl:
                  'https://dimg.dreamflow.cloud/v1/image/POV%20looking%20through%20a%20smartphone%20camera%20at%20a%20majestic%20mountain%20range%20with%20a%20hiking%20trail%20in%20the%20foreground%2C%20natural%20lighting',
              fit: BoxFit.cover,
              alignment: Alignment(0.0, 0.0),
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                child: Lottie.network(
                  'https://dimg.dreamflow.cloud/v1/lottie/subtle+pulses+of+topographic+contour+lines+and+scanning+grid',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.4, -0.1),
              child: wrapWithModel(
                model: _model.poiMarkerModel1,
                updateCallback: () => safeSetState(() {}),
                child: PoiMarkerWidget(
                  align_x: '-0.4',
                  align_y: -0.1,
                  distance: '1.2 km',
                  img_desc:
                      'https://dimg.dreamflow.cloud/v1/image/mountain%20peak',
                  title: 'Eagle Peak',
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.5, 0.2),
              child: wrapWithModel(
                model: _model.poiMarkerModel2,
                updateCallback: () => safeSetState(() {}),
                child: PoiMarkerWidget(
                  align_x: '0.5',
                  align_y: 0.2,
                  distance: '450 m',
                  img_desc:
                      'https://dimg.dreamflow.cloud/v1/image/forest%20spring',
                  title: 'Hidden Spring',
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x88000000), Colors.transparent],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Container(
                    child: Container(
                      height: 68.0,
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 9999.0,
                            buttonSize: 40.0,
                            fillColor: Color(0x44000000),
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).onPrimary,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(9999.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 4.0,
                                sigmaY: 4.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xCC228B22),
                                  borderRadius: BorderRadius.circular(9999.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 8.0, 24.0, 8.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.sensors_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onPrimary,
                                          size: 16.0,
                                        ),
                                        Text(
                                          'AR Active',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font: GoogleFonts.cabin(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                                lineHeight: 1.3,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
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
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                height: 280.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xAA000000), Colors.transparent],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, 1.0),
                    end: AlignmentDirectional(0, -1.0),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Container(
                      height: 232.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.arOverlayButtonModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ArOverlayButtonWidget(
                                  icon: Icon(
                                    Icons.layers_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).onPrimary,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9999.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).onPrimary,
                                    width: 4.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .onPrimary,
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.arOverlayButtonModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ArOverlayButtonWidget(
                                  icon: Icon(
                                    Icons.my_location_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).onPrimary,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 32.0)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFDFBF7),
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x33D2B48C),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.help,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 28.0,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Vantage Point Alpha',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.cabin(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.35,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.terrain_rounded,
                                                color: Color(0xFF228B22),
                                                size: 14.0,
                                              ),
                                              Text(
                                                'Elevation: 1,420m • 44.3° N',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
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
                                        variant: 'outline',
                                        size: 'small',
                                        full_width: false,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.network(
                      'https://dimg.dreamflow.cloud/v1/lottie/circular+sonar+pulse+scanning+animation',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                      animate: true,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 4.0,
                          sigmaY: 4.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x66000000),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Container(
                              child: Text(
                                'Aligning with horizon...',
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
                                          .onPrimary,
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
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
