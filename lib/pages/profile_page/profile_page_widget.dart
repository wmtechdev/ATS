import '/flutter_saad/flutter_saad_theme.dart';
import '/flutter_saad/flutter_saad_util.dart';
import '/flutter_saad/flutter_saad_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_page_model.dart';
export 'profile_page_model.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({super.key});

  static String routeName = 'ProfilePage';
  static String routePath = '/profilePage';

  @override
  State<ProfilePageWidget> createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  late ProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: FlutterSaadTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 250.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterSaadTheme.of(context).primary,
                    border: Border.all(
                      color: FlutterSaadTheme.of(context).primary,
                      width: 0.0,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 240.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterSaadTheme.of(context).primary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'ATS Hospital',
                                  style: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(HomePageWidget.routeName);
                                },
                                text: 'Home',
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 100.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterSaadTheme.of(context).primary,
                                  textStyle: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                  hoverColor:
                                      FlutterSaadTheme.of(context).alternate,
                                  hoverElevation: 0.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(CandidatesWidget.routeName);
                                },
                                text: 'Candidates',
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 48.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterSaadTheme.of(context).primary,
                                  textStyle: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                  hoverColor:
                                      FlutterSaadTheme.of(context).alternate,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(JobsWidget.routeName);
                                },
                                text: 'Jobs',
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 118.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 2.0, 0.0),
                                  color: FlutterSaadTheme.of(context).primary,
                                  textStyle: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                  hoverColor:
                                      FlutterSaadTheme.of(context).alternate,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Forms',
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 100.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterSaadTheme.of(context).primary,
                                  textStyle: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                  hoverColor:
                                      FlutterSaadTheme.of(context).alternate,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Analytics',
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 70.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterSaadTheme.of(context).primary,
                                  textStyle: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                  hoverColor:
                                      FlutterSaadTheme.of(context).alternate,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Hamza',
                            icon: Icon(
                              Icons.person,
                              size: 28.0,
                            ),
                            options: FFButtonOptions(
                              width: 250.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 48.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterSaadTheme.of(context).alternate,
                              textStyle: FlutterSaadTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.notoSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterSaadTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterSaadTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      height: MediaQuery.sizeOf(context).height * 0.28,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxsYW5kc2NhcGV8ZW58MHx8fHwxNzYxNTYxOTA1fDA&ixlib=rb-4.1.0&q=80&w=1080',
                            width: MediaQuery.sizeOf(context).width * 0.85,
                            height: 246.6,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.9, 1.3),
                            child: ClipOval(
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color: FlutterSaadTheme.of(context).secondary,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxQZXJzb258ZW58MHx8fHwxNzYxNjYyODE3fDA&ixlib=rb-4.1.0&q=80&w=400',
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.232,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              34.0, 0.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 18.0, 0.0, 12.0),
                                    child: Text(
                                      'Admin Hamza',
                                      style: FlutterSaadTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 0.0, 12.0),
                                  child: Text(
                                    'As an Admin Iove to hire Folks.',
                                    style: FlutterSaadTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: 500.0,
                                  child: Divider(
                                    thickness: 1.0,
                                    color: Color(0x7557636C),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 12.0, 0.0, 12.0),
                                    child: Text(
                                      'App Settings',
                                      style: FlutterSaadTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Notification Settings',
                                    icon: Icon(
                                      Icons.edit_notifications,
                                      size: 28.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 46.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterSaadTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterSaadTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Support Center',
                                    icon: Icon(
                                      Icons.contact_support_outlined,
                                      size: 28.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 46.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 56.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterSaadTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterSaadTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 42.0, 0.0, 12.0),
                                    child: Text(
                                      'Profile Settings',
                                      style: FlutterSaadTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Edit Profile',
                                    icon: Icon(
                                      Icons.edit_note,
                                      size: 28.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 46.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 76.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterSaadTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterSaadTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Change Password',
                                    icon: Icon(
                                      Icons.lock_open,
                                      size: 28.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 46.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterSaadTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterSaadTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Logout',
                                    icon: FaIcon(
                                      FontAwesomeIcons.signOutAlt,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 46.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 96.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterSaadTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterSaadTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(22.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.gitAlt,
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'v1.1',
                                            style: FlutterSaadTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight:
                                                        FlutterSaadTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterSaadTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
