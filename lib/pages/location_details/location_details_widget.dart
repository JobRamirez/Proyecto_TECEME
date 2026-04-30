import '/components/action_button/action_button_widget.dart';
import '/components/button/button_widget.dart';
import '/components/feature_chip/feature_chip_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'location_details_model.dart';
export 'location_details_model.dart';

class LocationDetailsWidget extends StatefulWidget {
  final String title;
  final double lat;
  final double lng;
  final String image;

  const LocationDetailsWidget(
      {super.key,
      required this.title,
      required this.lat,
      required this.lng,
      required this.image});

  static String routeName = 'LocationDetails';
  static String routePath = '/locationDetails';

  @override
  State<LocationDetailsWidget> createState() => _LocationDetailsWidgetState();
}

class _LocationDetailsWidgetState extends State<LocationDetailsWidget> {
  Future<Position> _getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('GPS desactivado');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Permisos denegados');
    }

    return await Geolocator.getCurrentPosition();
  }

  late LocationDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationDetailsModel());
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
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            child: Container(
                              height: 340.0,
                              child: Stack(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                children: [
                                  Image.asset(
                                    widget.image,
                                    height: 340.0,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    height: 340.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xAA000000),
                                          Colors.transparent
                                        ],
                                        stops: [0.0, 0.4],
                                        begin: AlignmentDirectional(0.0, 1.0),
                                        end: AlignmentDirectional(0, -1.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 48.0, 20.0, 0.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderRadius: 9999.0,
                                                buttonSize: 40.0,
                                                fillColor: Color(0x44000000),
                                                icon: Icon(
                                                  Icons.arrow_back_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderRadius: 9999.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        Color(0x44000000),
                                                    icon: Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .onPrimary,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderRadius: 9999.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        Color(0x44000000),
                                                    icon: Icon(
                                                      Icons.share_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .onPrimary,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0),
                                ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  widget.title,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        font: GoogleFonts.cabin(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontStyle,
                                                        lineHeight: 1.25,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success10,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9999.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  child: Container(
                                                    child: Text(
                                                      'Open Now',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .cabin(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .onSurface,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                            lineHeight: 1.2,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.location_on_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 16.0,
                                              ),
                                              Text(
                                                'Cascade Range, WA • 4.8 miles away',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                      lineHeight: 1.5,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model: _model.featureChipModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureChipWidget(
                                                icon: Icon(
                                                  Icons.terrain_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                label: 'High Elevation',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.featureChipModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureChipWidget(
                                                icon: Icon(
                                                  Icons.hiking_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                label: 'Moderate Trail',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.featureChipModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureChipWidget(
                                                icon: Icon(
                                                  Icons.water_drop_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                label: 'Lake View',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.featureChipModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FeatureChipWidget(
                                                icon: Icon(
                                                  Icons.wb_sunny_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                label: 'Best at Noon',
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model: _model.actionButtonModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  try {
                                                    Position position =
                                                        await _getUserLocation();

                                                    final url = Uri.parse(
                                                        "https://www.google.com/maps/dir/?api=1"
                                                        "&origin=${position.latitude},${position.longitude}"
                                                        "&destination=${widget.lat},${widget.lng}"
                                                        "&travelmode=driving");

                                                    if (await canLaunchUrl(
                                                        url)) {
                                                      await launchUrl(url);
                                                    }
                                                  } catch (e) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                          content: Text(
                                                              'No se pudo obtener la ubicación')),
                                                    );
                                                  }
                                                },
                                                child: ActionButtonWidget(
                                                  bg: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  icon: Icon(
                                                    Icons.directions_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .onPrimary,
                                                    size: 24.0,
                                                  ),
                                                  icon_color:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .onPrimary,
                                                  label: 'Direcciones',
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.actionButtonModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  final url = Uri.parse(
                                                      "https://www.google.com/maps/search/?api=1&query=25.6866,-100.3161");
                                                  if (await canLaunchUrl(url)) {
                                                    await launchUrl(url);
                                                  }
                                                },
                                                child: ActionButtonWidget(
                                                  bg: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  icon: Icon(
                                                    Icons.map_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  icon_color:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  label: 'Ver Mapa',
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.actionButtonModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                        content: Text(
                                                            'Modo AR próximamente')),
                                                  );
                                                },
                                                child: ActionButtonWidget(
                                                  bg: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  icon: Icon(
                                                    Icons.view_in_ar_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  icon_color:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  label: 'Preview del modo AR',
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.actionButtonModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                        content: Text(
                                                            'Descarga offline en desarrollo')),
                                                  );
                                                },
                                                child: ActionButtonWidget(
                                                  bg: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  icon: Icon(
                                                    Icons.download_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  icon_color:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  label: 'Offline',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sobre esta ubicacion',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.cabin(
                                                    fontWeight: FontWeight.w600,
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
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.35,
                                                ),
                                          ),
                                          Text(
                                            'La estatua del oso contruida para ser la mascota de la facultad',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Ubicacion',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      font: GoogleFonts.cabin(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                      lineHeight: 1.35,
                                                    ),
                                              ),
                                              Text(
                                                'Ver en Maps',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.cabin(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                      lineHeight: 1.3,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: Container(
                                              height: 180.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Container(
                                                height: 180.0,
                                                child: FlutterFlowGoogleMap(
                                                  controller: _model
                                                      .mapGoogleMapsController,
                                                  onCameraIdle: (latLng) =>
                                                      _model.mapGoogleMapsCenter =
                                                          latLng,
                                                  initialLocation: _model
                                                          .mapGoogleMapsCenter ??=
                                                      LatLng(widget.lat,
                                                          widget.lng),
                                                  markerColor:
                                                      GoogleMarkerColor.violet,
                                                  mapType: MapType.normal,
                                                  style:
                                                      GoogleMapStyle.standard,
                                                  initialZoom: 12.0,
                                                  allowInteraction: true,
                                                  allowZoom: true,
                                                  showZoomControls: false,
                                                  showLocation: false,
                                                  showCompass: false,
                                                  showMapToolbar: false,
                                                  showTraffic: false,
                                                  centerMapOnMarkerTap: true,
                                                  mapTakesGesturePreference:
                                                      false,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(24.0),
                                          child: Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Visibility Forecast',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Icon(
                                                      Icons.info_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .onSurface,
                                                      size: 18.0,
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  height: 80.0,
                                                  child: Container(
                                                    height: 80.0,
                                                    child: FlutterFlowBarChart(
                                                      barData: [
                                                        FFBarChartData(
                                                          yData: ([
                                                            80.0,
                                                            95.0,
                                                            70.0,
                                                            40.0,
                                                            60.0
                                                          ])!,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        )
                                                      ],
                                                      xLabels: ([
                                                        '8am',
                                                        '10am',
                                                        '12pm',
                                                        '2pm',
                                                        '4pm'
                                                      ])!,
                                                      barWidth: 24.0,
                                                      barBorderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                      groupSpace: 12.0,
                                                      alignment:
                                                          BarChartAlignment
                                                              .spaceEvenly,
                                                      chartStylingInfo:
                                                          ChartStylingInfo(
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        showBorder: false,
                                                      ),
                                                      axisBounds: AxisBounds(
                                                        minY: 0.0,
                                                        maxX: 4.0,
                                                        maxY: 114.0,
                                                      ),
                                                      xAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        showLabels: true,
                                                        labelTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.0,
                                                                ),
                                                        reservedSize: 20.0,
                                                      ),
                                                      yAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        reservedSize: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 16.0),
                      child: Container(
                        child: Container(
                          height: 67.0,
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Current Elevation',
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
                                              .secondaryText,
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
                                  Text(
                                    '5,420 ft',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.cabin(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                ],
                              ),
                              Expanded(
                                flex: 1,
                                child: wrapWithModel(
                                  model: _model.buttonModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonWidget(
                                    content: 'Launch AR Guide',
                                    icon: Icon(
                                      Icons.view_in_ar_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimary,
                                      size: 16.0,
                                    ),
                                    icon_present: true,
                                    icon_end_present: false,
                                    on_tap: 'navigate:ARPreviewPlaceholder',
                                    variant: 'primary',
                                    size: 'large',
                                    full_width: true,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 24.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
