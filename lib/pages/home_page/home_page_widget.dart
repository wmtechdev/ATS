import '/auth/firebase_auth/auth_util.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
        backgroundColor: FlutterLibTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 250.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterLibTheme.of(context).primary,
                  border: Border.all(
                    color: FlutterLibTheme.of(context).primary,
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ats-light_logo.png',
                            width: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              66.0,
                              0.0,
                              0.0,
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Home',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  0.0,
                                  100.0,
                                  0.0,
                                ),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                color: FlutterLibTheme.of(context).alternate,
                                textStyle: FlutterLibTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              12.0,
                              0.0,
                              0.0,
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(CandidatesWidget.routeName);
                              },
                              text: 'Candidates',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0,
                                  0.0,
                                  48.0,
                                  0.0,
                                ),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                color: FlutterLibTheme.of(context).primary,
                                textStyle: FlutterLibTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor: FlutterLibTheme.of(
                                  context,
                                ).alternate,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              12.0,
                              0.0,
                              0.0,
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(JobsWidget.routeName);
                              },
                              text: 'Jobs',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0,
                                  0.0,
                                  118.0,
                                  0.0,
                                ),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  2.0,
                                  0.0,
                                ),
                                color: FlutterLibTheme.of(context).primary,
                                textStyle: FlutterLibTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor: FlutterLibTheme.of(
                                  context,
                                ).alternate,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              12.0,
                              0.0,
                              0.0,
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(DocumentsWidget.routeName);
                              },
                              text: 'Documents',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  32.0,
                                  0.0,
                                ),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                color: FlutterLibTheme.of(context).primary,
                                textStyle: FlutterLibTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor: FlutterLibTheme.of(
                                  context,
                                ).alternate,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              12.0,
                              0.0,
                              0.0,
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Analytics',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0,
                                  0.0,
                                  70.0,
                                  0.0,
                                ),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                color: FlutterLibTheme.of(context).primary,
                                textStyle: FlutterLibTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor: FlutterLibTheme.of(
                                  context,
                                ).alternate,
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
                          0.0,
                          12.0,
                          0.0,
                          12.0,
                        ),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(ProfilePageWidget.routeName);
                            },
                            text: currentUserDisplayName,
                            icon: Icon(Icons.person, size: 28.0),
                            options: FFButtonOptions(
                              width: 250.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                16.0,
                                0.0,
                                48.0,
                                0.0,
                              ),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                0.0,
                                0.0,
                                0.0,
                              ),
                              color: FlutterLibTheme.of(context).primary,
                              textStyle: FlutterLibTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.notoSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).headlineSmall.fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(33.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          0.0,
                          0.0,
                          12.0,
                        ),
                        child: Text(
                          'Applications',
                          style: FlutterLibTheme.of(context).displaySmall
                              .override(
                                font: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).displaySmall.fontStyle,
                                ),
                                color: FlutterLibTheme.of(context).primary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterLibTheme.of(
                                  context,
                                ).displaySmall.fontStyle,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        12.0,
                        0.0,
                        0.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterLibTheme.of(
                                context,
                              ).secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryText,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                12.0,
                                22.0,
                                12.0,
                                22.0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Received',
                                    textAlign: TextAlign.center,
                                    style: FlutterLibTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.notoSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).headlineMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).headlineMedium.fontStyle,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      22.0,
                                      22.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.receipt_long,
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).secondaryText,
                                          size: 34.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12.0,
                                                0.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Text(
                                            '310',
                                            style: FlutterLibTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  font: GoogleFonts.notoSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .displaySmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).displaySmall.fontStyle,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              33.0,
                              0.0,
                              0.0,
                              0.0,
                            ),
                            child: Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  22.0,
                                  12.0,
                                  22.0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Pending..',
                                      textAlign: TextAlign.center,
                                      style: FlutterLibTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineMedium.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).headlineMedium.fontStyle,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        22.0,
                                        22.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.hourglassHalf,
                                            color: Color(0xE697593D),
                                            size: 28.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  12.0,
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Text(
                                              '200',
                                              style: FlutterLibTheme.of(context)
                                                  .displaySmall
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .displaySmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .displaySmall
                                                            .fontStyle,
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              33.0,
                              0.0,
                              0.0,
                              0.0,
                            ),
                            child: Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  22.0,
                                  12.0,
                                  22.0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Approved',
                                      textAlign: TextAlign.center,
                                      style: FlutterLibTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineMedium.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).headlineMedium.fontStyle,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        22.0,
                                        22.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle_outline,
                                            color: Color(0xFF2AA868),
                                            size: 34.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  12.0,
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Text(
                                              '5',
                                              style: FlutterLibTheme.of(context)
                                                  .displaySmall
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .displaySmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .displaySmall
                                                            .fontStyle,
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              33.0,
                              0.0,
                              0.0,
                              0.0,
                            ),
                            child: Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  22.0,
                                  12.0,
                                  22.0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Denied',
                                      textAlign: TextAlign.center,
                                      style: FlutterLibTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineMedium.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).headlineMedium.fontStyle,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        22.0,
                                        22.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.ban,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).error,
                                            size: 28.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  12.0,
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Text(
                                              '105',
                                              style: FlutterLibTheme.of(context)
                                                  .displaySmall
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .displaySmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .displaySmall
                                                            .fontStyle,
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
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        333.0,
                        222.0,
                        0.0,
                        0.0,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/ATS-Hospital-Logo.png',
                          width: 319.48,
                          height: 133.1,
                          fit: BoxFit.cover,
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
    );
  }
}
