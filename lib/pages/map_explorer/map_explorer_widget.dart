import '/components/category_pill/category_pill_widget.dart';
import '/components/map_marker_card/map_marker_card_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'map_explorer_model.dart';
export 'map_explorer_model.dart';

class MapExplorerWidget extends StatefulWidget {
  const MapExplorerWidget({super.key});

  static String routeName = 'MapExplorer';
  static String routePath = '/mapExplorer';

  @override
  State<MapExplorerWidget> createState() => _MapExplorerWidgetState();
}

class _MapExplorerWidgetState extends State<MapExplorerWidget> {
  late MapExplorerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapExplorerModel());
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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            Container(
              child: FlutterFlowGoogleMap(
                controller: _model.mapGoogleMapsController,
                onCameraIdle: (latLng) => _model.mapGoogleMapsCenter = latLng,
                initialLocation: _model.mapGoogleMapsCenter ??=
                    LatLng(45.4215, -75.6972),
                markerColor: GoogleMarkerColor.violet,
                mapType: MapType.normal,
                style: GoogleMapStyle.standard,
                initialZoom: 14.0,
                allowInteraction: true,
                allowZoom: true,
                showZoomControls: false,
                showLocation: false,
                showCompass: false,
                showMapToolbar: false,
                showTraffic: false,
                centerMapOnMarkerTap: true,
                mapTakesGesturePreference: false,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                height: 200.0,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 60.0, 24.0, 0.0),
                  child: Container(
                    child: Container(
                      height: 140.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 8.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.menu_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Search landmarks, trails...',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onSurface,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.tune_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.categoryPillModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryPillWidget(
                                    icon: Icon(
                                      Icons.terrain_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimary,
                                      size: 18.0,
                                    ),
                                    label: 'Nature',
                                    selected: true,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.categoryPillModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryPillWidget(
                                    icon: Icon(
                                      Icons.museum_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                    label: 'Historic',
                                    selected: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.categoryPillModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryPillWidget(
                                    icon: Icon(
                                      Icons.restaurant_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                    label: 'Dining',
                                    selected: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.categoryPillModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryPillWidget(
                                    icon: Icon(
                                      Icons.camera_alt_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                    label: 'Views',
                                    selected: false,
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.3),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 16.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.my_location_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 16.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.view_in_ar_rounded,
                            color: FlutterFlowTheme.of(context).onPrimary,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                height: 220.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 40.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(9999.0),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.mapMarkerCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: MapMarkerCardWidget(
                                      category: 'Nature',
                                      distance: '0.8 miles away',
                                      img_desc:
                                          'https://dimg.dreamflow.cloud/v1/image/modern%20architecture%20mountain%20top%20observatory%20sunset',
                                      rating: '4.9',
                                      title: 'Vantage Peak Observatory',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.mapMarkerCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: MapMarkerCardWidget(
                                      category: 'Hiking',
                                      distance: '1.2 miles away',
                                      img_desc:
                                          'https://dimg.dreamflow.cloud/v1/image/dense%20forest%20trail%20with%20sunlight%20rays',
                                      rating: '4.7',
                                      title: 'Ancient Pines Trail',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.mapMarkerCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: MapMarkerCardWidget(
                                      category: 'Nature',
                                      distance: '2.5 miles away',
                                      img_desc:
                                          'https://dimg.dreamflow.cloud/v1/image/powerful%20waterfall%20with%20mist%20and%20rocks',
                                      rating: '4.8',
                                      title: 'Riverstone Falls',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).success10,
                      borderRadius: BorderRadius.circular(9999.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).success30,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 6.0,
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).success,
                                borderRadius: BorderRadius.circular(9999.0),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Text(
                              'GPS Active',
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
                                    color:
                                        FlutterFlowTheme.of(context).onSurface,
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
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
