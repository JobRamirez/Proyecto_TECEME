import '/components/button/button_widget.dart';
import '/components/favorite_card/favorite_card_widget.dart';
import '/components/settings_row/settings_row_widget.dart';
import '/components/stat_item/stat_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  static String routeName = 'UserProfile';
  static String routePath = '/userProfile';

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: AlignmentDirectional(-1.0, -1.0),
                children: [
                  ClipRRect(
                    child: Container(
                      height: 220.0,
                      child: Opacity(
                        opacity: 0.4,
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl:
                              'https://dimg.dreamflow.cloud/v1/image/topographic%20map%20pattern%20background%20earthy%20tones',
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).background0,
                          FlutterFlowTheme.of(context).background100
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(9999.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9999.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 0),
                                  fadeOutDuration: Duration(milliseconds: 0),
                                  imageUrl:
                                      'https://dimg.dreamflow.cloud/v1/image/rugged%20outdoor%20explorer%20portrait',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                  alignment: Alignment(0.0, 0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Alex Rivers',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.cabin(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                    lineHeight: 1.25,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.explore_rounded,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 16.0,
                                ),
                                Text(
                                  'Vantage Guide Level 5',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.cabin(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                        lineHeight: 1.3,
                                      ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          child: Container(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 24.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.statItemModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatItemWidget(
                                          label: 'Saved',
                                          value: '24',
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 24.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.statItemModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatItemWidget(
                                          label: 'Visited',
                                          value: '12',
                                        ),
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 24.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.statItemModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatItemWidget(
                                          label: 'Points',
                                          value: '158',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Saved Locations',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.cabin(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                    lineHeight: 1.3,
                                  ),
                            ),
                            wrapWithModel(
                              model: _model.buttonModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                content: 'See All',
                                icon_present: false,
                                icon_end_present: false,
                                on_tap: 'navigate:HomeScreen',
                                variant: 'ghost',
                                size: 'small',
                                full_width: false,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ],
                        ),
                        wrapWithModel(
                          model: _model.favoriteCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: FavoriteCardWidget(
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/snowy%20mountain%20peak%20sunset',
                            location: 'North Cascades, WA',
                            name: 'Glacier Peak Lookout',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.favoriteCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: FavoriteCardWidget(
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/lush%20green%20forest%20valley%20mist',
                            location: 'Olympic National Park',
                            name: 'Emerald Valley Trail',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.favoriteCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: FavoriteCardWidget(
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/red%20rock%20sandstone%20arch',
                            location: 'Moab, Utah',
                            name: 'Desert Mesa Arch',
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'App Settings',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                font: GoogleFonts.cabin(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                                lineHeight: 1.3,
                              ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.settingsRowModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingsRowWidget(
                                      active: true,
                                      icon: Icon(
                                        Icons.location_searching_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      subtitle: 'High accuracy mode',
                                      title: 'GPS Tracking',
                                    ),
                                  ),
                                  Divider(
                                    height: 16.0,
                                    thickness: 1.0,
                                    indent: 0.0,
                                    endIndent: 0.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  wrapWithModel(
                                    model: _model.settingsRowModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingsRowWidget(
                                      active: true,
                                      icon: Icon(
                                        Icons.view_in_ar_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      subtitle: 'Enable ARCore features',
                                      title: 'AR Preview',
                                    ),
                                  ),
                                  Divider(
                                    height: 16.0,
                                    thickness: 1.0,
                                    indent: 0.0,
                                    endIndent: 0.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  wrapWithModel(
                                    model: _model.settingsRowModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingsRowWidget(
                                      active: false,
                                      icon: Icon(
                                        Icons.notifications_active_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      subtitle: 'Notify when near saved spots',
                                      title: 'Nearby Alerts',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.buttonModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                content: 'Log Out',
                                icon: Icon(
                                  Icons.logout_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                icon_present: true,
                                icon_end_present: false,
                                on_tap: 'navigate:ARPreviewPlaceholder',
                                variant: 'outline',
                                size: 'medium',
                                full_width: true,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.buttonModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                content: 'Delete Account',
                                icon_present: false,
                                icon_end_present: false,
                                on_tap: 'navigate:ARPreviewPlaceholder',
                                variant: 'ghost',
                                size: 'medium',
                                full_width: true,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
              Container(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
