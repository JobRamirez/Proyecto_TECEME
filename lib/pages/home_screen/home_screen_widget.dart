import '/components/attraction_card/attraction_card_widget.dart';
import '/components/category_chip/category_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import '../location_details/location_details_widget.dart';
import 'package:provider/provider.dart';
import '../a_r_preview_placeholder/a_r_preview_placeholder_widget.dart';
import '../camera_screen/camera_screen.dart';
import 'home_screen_model.dart';
export 'home_screen_model.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  static String routeName = 'HomeScreen';
  static String routePath = '/homeScreen';

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  late HomeScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  Position? userPosition;

  TextEditingController searchController = TextEditingController();

  String searchText = '';

  double calcularDistancia(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    return Geolocator.distanceBetween(lat1, lon1, lat2, lon2) / 1000;
  }

  Future<void> _obtenerUbicacion() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) return;

    final position = await Geolocator.getCurrentPosition();

    safeSetState(() {
      userPosition = position;
    });
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeScreenModel());
    _obtenerUbicacion();
    searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final search = searchController.text.toLowerCase();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CameraScreen(
                        modoLibre: true,
                      )),
            );
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          icon: Icon(
            Icons.view_in_ar_rounded,
            color: FlutterFlowTheme.of(context).onPrimary,
            size: 24.0,
          ),
          elevation: 0.0,
          label: Text(
            'Vista RA',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.cabin(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).onPrimary,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.3,
                ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
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
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Explora',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                              Text(
                                'Ciudad Universitaria',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.cabin(
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                      lineHeight: 1.25,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.textFieldModel,
                              updateCallback: () => safeSetState(() {}),
                              child: TextField(
                                controller: searchController,
                                onChanged: (value) {
                                  setState(() {});
                                },
                                decoration: InputDecoration(
                                  hintText: 'Buscar estatuas...',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Facultades cercanas',
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
                                    ),
                                  ],
                                ),
                              ),
                              if ('Estatua de Oso de FIME'
                                  .toLowerCase()
                                  .contains(search))
                                wrapWithModel(
                                  model: _model.attractionCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              LocationDetailsWidget(
                                            title: 'Estatua Oso FIME',
                                            lat: 25.7245,
                                            lng: -100.3130,
                                            image: 'assets/images/fime.jpg',
                                          ),
                                        ),
                                      );
                                    },
                                    child: AttractionCardWidget(
                                      desc:
                                          'La estatua de la poderosisima Facultad de Ingenieria Mecanica y Electrica',
                                      distance: userPosition != null
                                          ? calcularDistancia(
                                              userPosition!.latitude,
                                              userPosition!.longitude,
                                              25.7230,
                                              -100.3080,
                                            ).toStringAsFixed(1)
                                          : '...',
                                      img_desc: 'assets/images/fime.jpg',
                                      title: 'Estatua de Oso de FIME',
                                    ),
                                  ),
                                ),
                              if ('Estatua Pegaso FARQ'
                                  .toLowerCase()
                                  .contains(search))
                                wrapWithModel(
                                  model: _model.attractionCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              LocationDetailsWidget(
                                            title: 'Estatua Pegaso FARQ',
                                            lat: 25.7264,
                                            lng: -100.3122,
                                            image: 'assets/images/farq.jpg',
                                          ),
                                        ),
                                      );
                                    },
                                    child: AttractionCardWidget(
                                      desc:
                                          'Estatua de la Facultad de Aequitectura',
                                      distance: userPosition != null
                                          ? calcularDistancia(
                                              userPosition!.latitude,
                                              userPosition!.longitude,
                                              25.7264,
                                              -100.3122,
                                            ).toStringAsFixed(1)
                                          : '...',
                                      img_desc: 'assets/images/farq.jpg',
                                      title: 'Estatua Pegaso FARQ',
                                    ),
                                  ),
                                ),
                              if ('Estatua Cocomixtle FCB'
                                  .toLowerCase()
                                  .contains(search))
                                wrapWithModel(
                                  model: _model.attractionCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              LocationDetailsWidget(
                                            title: 'Estatua Cocomixtle FCB',
                                            lat: 25.7315,
                                            lng: -100.3045,
                                            image: 'assets/images/fcb.jpg',
                                          ),
                                        ),
                                      );
                                    },
                                    child: AttractionCardWidget(
                                      desc:
                                          'Estatua de la Facultad de Ciencias Biologicas',
                                      distance: userPosition != null
                                          ? calcularDistancia(
                                              userPosition!.latitude,
                                              userPosition!.longitude,
                                              25.7315,
                                              -100.3045,
                                            ).toStringAsFixed(1)
                                          : '...',
                                      img_desc: 'assets/images/fcb.jpg',
                                      title: 'Estatua Cocomixtle FCB',
                                    ),
                                  ),
                                ),
                              if ('Estatua de Serpiente de FAMED'
                                  .toLowerCase()
                                  .contains(search))
                                wrapWithModel(
                                  model: _model.attractionCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              LocationDetailsWidget(
                                            title: 'Estatua Serpiente FAMED',
                                            lat: 25.7232,
                                            lng: -100.3088,
                                            image: 'assets/images/famed.jpg',
                                          ),
                                        ),
                                      );
                                    },
                                    child: AttractionCardWidget(
                                      desc:
                                          'Estatua de la Facultad de Medicina',
                                      distance: userPosition != null
                                          ? calcularDistancia(
                                              userPosition!.latitude,
                                              userPosition!.longitude,
                                              25.7232,
                                              -100.3088,
                                            ).toStringAsFixed(1)
                                          : '...',
                                      img_desc: 'assets/images/famed.jpg',
                                      title: 'Estatua Serpiente FAMED',
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(height: 0.0)),
                          ),
                        ),
                      ),
                    ],
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
