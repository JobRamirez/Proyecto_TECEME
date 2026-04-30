import '/components/ar_overlay_button/ar_overlay_button_widget.dart';
import '/components/button/button_widget.dart';
import '/components/poi_marker/poi_marker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_r_preview_placeholder_widget.dart' show ARPreviewPlaceholderWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class ARPreviewPlaceholderModel
    extends FlutterFlowModel<ARPreviewPlaceholderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PoiMarker.
  late PoiMarkerModel poiMarkerModel1;
  // Model for PoiMarker.
  late PoiMarkerModel poiMarkerModel2;
  // Model for ArOverlayButton.
  late ArOverlayButtonModel arOverlayButtonModel1;
  // Model for ArOverlayButton.
  late ArOverlayButtonModel arOverlayButtonModel2;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    poiMarkerModel1 = createModel(context, () => PoiMarkerModel());
    poiMarkerModel2 = createModel(context, () => PoiMarkerModel());
    arOverlayButtonModel1 = createModel(context, () => ArOverlayButtonModel());
    arOverlayButtonModel2 = createModel(context, () => ArOverlayButtonModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    poiMarkerModel1.dispose();
    poiMarkerModel2.dispose();
    arOverlayButtonModel1.dispose();
    arOverlayButtonModel2.dispose();
    buttonModel.dispose();
  }
}
