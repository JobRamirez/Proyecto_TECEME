import '/components/attraction_card/attraction_card_widget.dart';
import '/components/category_chip/category_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel1;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel2;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel3;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel4;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel5;
  // Model for AttractionCard.
  late AttractionCardModel attractionCardModel1;
  // Model for AttractionCard.
  late AttractionCardModel attractionCardModel2;
  // Model for AttractionCard.
  late AttractionCardModel attractionCardModel3;
  // Model for AttractionCard.
  late AttractionCardModel attractionCardModel4;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    categoryChipModel1 = createModel(context, () => CategoryChipModel());
    categoryChipModel2 = createModel(context, () => CategoryChipModel());
    categoryChipModel3 = createModel(context, () => CategoryChipModel());
    categoryChipModel4 = createModel(context, () => CategoryChipModel());
    categoryChipModel5 = createModel(context, () => CategoryChipModel());
    attractionCardModel1 = createModel(context, () => AttractionCardModel());
    attractionCardModel2 = createModel(context, () => AttractionCardModel());
    attractionCardModel3 = createModel(context, () => AttractionCardModel());
    attractionCardModel4 = createModel(context, () => AttractionCardModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    categoryChipModel5.dispose();
    attractionCardModel1.dispose();
    attractionCardModel2.dispose();
    attractionCardModel3.dispose();
    attractionCardModel4.dispose();
  }
}
