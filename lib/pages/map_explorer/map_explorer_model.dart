import '/components/category_pill/category_pill_widget.dart';
import '/components/map_marker_card/map_marker_card_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'map_explorer_widget.dart' show MapExplorerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapExplorerModel extends FlutterFlowModel<MapExplorerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel1;
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel2;
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel3;
  // Model for CategoryPill.
  late CategoryPillModel categoryPillModel4;
  // Model for MapMarkerCard.
  late MapMarkerCardModel mapMarkerCardModel1;
  // Model for MapMarkerCard.
  late MapMarkerCardModel mapMarkerCardModel2;
  // Model for MapMarkerCard.
  late MapMarkerCardModel mapMarkerCardModel3;

  @override
  void initState(BuildContext context) {
    categoryPillModel1 = createModel(context, () => CategoryPillModel());
    categoryPillModel2 = createModel(context, () => CategoryPillModel());
    categoryPillModel3 = createModel(context, () => CategoryPillModel());
    categoryPillModel4 = createModel(context, () => CategoryPillModel());
    mapMarkerCardModel1 = createModel(context, () => MapMarkerCardModel());
    mapMarkerCardModel2 = createModel(context, () => MapMarkerCardModel());
    mapMarkerCardModel3 = createModel(context, () => MapMarkerCardModel());
  }

  @override
  void dispose() {
    categoryPillModel1.dispose();
    categoryPillModel2.dispose();
    categoryPillModel3.dispose();
    categoryPillModel4.dispose();
    mapMarkerCardModel1.dispose();
    mapMarkerCardModel2.dispose();
    mapMarkerCardModel3.dispose();
  }
}
