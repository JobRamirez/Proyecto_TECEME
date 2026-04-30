import '/components/button/button_widget.dart';
import '/components/favorite_card/favorite_card_widget.dart';
import '/components/settings_row/settings_row_widget.dart';
import '/components/stat_item/stat_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatItem.
  late StatItemModel statItemModel1;
  // Model for StatItem.
  late StatItemModel statItemModel2;
  // Model for StatItem.
  late StatItemModel statItemModel3;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for FavoriteCard.
  late FavoriteCardModel favoriteCardModel1;
  // Model for FavoriteCard.
  late FavoriteCardModel favoriteCardModel2;
  // Model for FavoriteCard.
  late FavoriteCardModel favoriteCardModel3;
  // Model for SettingsRow.
  late SettingsRowModel settingsRowModel1;
  // Model for SettingsRow.
  late SettingsRowModel settingsRowModel2;
  // Model for SettingsRow.
  late SettingsRowModel settingsRowModel3;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    statItemModel1 = createModel(context, () => StatItemModel());
    statItemModel2 = createModel(context, () => StatItemModel());
    statItemModel3 = createModel(context, () => StatItemModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    favoriteCardModel1 = createModel(context, () => FavoriteCardModel());
    favoriteCardModel2 = createModel(context, () => FavoriteCardModel());
    favoriteCardModel3 = createModel(context, () => FavoriteCardModel());
    settingsRowModel1 = createModel(context, () => SettingsRowModel());
    settingsRowModel2 = createModel(context, () => SettingsRowModel());
    settingsRowModel3 = createModel(context, () => SettingsRowModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    statItemModel1.dispose();
    statItemModel2.dispose();
    statItemModel3.dispose();
    buttonModel1.dispose();
    favoriteCardModel1.dispose();
    favoriteCardModel2.dispose();
    favoriteCardModel3.dispose();
    settingsRowModel1.dispose();
    settingsRowModel2.dispose();
    settingsRowModel3.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
