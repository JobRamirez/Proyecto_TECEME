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
import 'location_details_widget.dart' show LocationDetailsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationDetailsModel extends FlutterFlowModel<LocationDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FeatureChip.
  late FeatureChipModel featureChipModel1;
  // Model for FeatureChip.
  late FeatureChipModel featureChipModel2;
  // Model for FeatureChip.
  late FeatureChipModel featureChipModel3;
  // Model for FeatureChip.
  late FeatureChipModel featureChipModel4;
  // Model for ActionButton.
  late ActionButtonModel actionButtonModel1;
  // Model for ActionButton.
  late ActionButtonModel actionButtonModel2;
  // Model for ActionButton.
  late ActionButtonModel actionButtonModel3;
  // Model for ActionButton.
  late ActionButtonModel actionButtonModel4;
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    featureChipModel1 = createModel(context, () => FeatureChipModel());
    featureChipModel2 = createModel(context, () => FeatureChipModel());
    featureChipModel3 = createModel(context, () => FeatureChipModel());
    featureChipModel4 = createModel(context, () => FeatureChipModel());
    actionButtonModel1 = createModel(context, () => ActionButtonModel());
    actionButtonModel2 = createModel(context, () => ActionButtonModel());
    actionButtonModel3 = createModel(context, () => ActionButtonModel());
    actionButtonModel4 = createModel(context, () => ActionButtonModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    featureChipModel1.dispose();
    featureChipModel2.dispose();
    featureChipModel3.dispose();
    featureChipModel4.dispose();
    actionButtonModel1.dispose();
    actionButtonModel2.dispose();
    actionButtonModel3.dispose();
    actionButtonModel4.dispose();
    buttonModel.dispose();
  }
}
