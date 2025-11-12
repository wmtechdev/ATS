import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_lib/flutter_lib_data_table.dart';
import '/flutter_lib/flutter_lib_drop_down.dart';
import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import '/flutter_lib/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candidate_profile_model.dart';
export 'candidate_profile_model.dart';

/// Candidate Profile Page with all his info and table with list of uploaded
/// and missing documents
class CandidateProfileWidget extends StatefulWidget {
  const CandidateProfileWidget({super.key});

  static String routeName = 'CandidateProfile';
  static String routePath = '/candidateProfile';

  @override
  State<CandidateProfileWidget> createState() => _CandidateProfileWidgetState();
}

class _CandidateProfileWidgetState extends State<CandidateProfileWidget>
    with TickerProviderStateMixin {
  late CandidateProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandidateProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.accessLevel, 0) > 2) {
        context.pushNamed(AuthAdminWidget.routeName);
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode9 ??= FocusNode();

    _model.textController10 ??= TextEditingController();
    _model.textFieldFocusNode10 ??= FocusNode();

    _model.textController11 ??= TextEditingController();
    _model.textFieldFocusNode11 ??= FocusNode();

    _model.textController12 ??= TextEditingController();
    _model.textFieldFocusNode12 ??= FocusNode();

    _model.textController13 ??= TextEditingController();
    _model.textFieldFocusNode13 ??= FocusNode();

    _model.textController14 ??= TextEditingController();
    _model.textFieldFocusNode14 ??= FocusNode();

    _model.textController15 ??= TextEditingController();
    _model.textFieldFocusNode15 ??= FocusNode();

    _model.textController16 ??= TextEditingController();
    _model.textFieldFocusNode16 ??= FocusNode();

    _model.textController17 ??= TextEditingController();
    _model.textFieldFocusNode17 ??= FocusNode();

    _model.textController18 ??= TextEditingController();
    _model.textFieldFocusNode18 ??= FocusNode();

    _model.textController19 ??= TextEditingController();
    _model.textFieldFocusNode19 ??= FocusNode();

    _model.textController20 ??= TextEditingController();
    _model.textFieldFocusNode20 ??= FocusNode();

    _model.textController21 ??= TextEditingController();
    _model.textFieldFocusNode21 ??= FocusNode();

    _model.textController22 ??= TextEditingController();
    _model.textFieldFocusNode22 ??= FocusNode();

    _model.textController23 ??= TextEditingController();
    _model.textFieldFocusNode23 ??= FocusNode();

    _model.textController24 ??= TextEditingController();
    _model.textFieldFocusNode24 ??= FocusNode();

    _model.textController25 ??= TextEditingController();
    _model.textFieldFocusNode25 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterLibTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterLibTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterLibIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 46.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterLibTheme.of(context).primaryText,
              size: 25.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Candidate Profile',
            style: FlutterLibTheme.of(context).headlineMedium.override(
              font: GoogleFonts.notoSans(
                fontWeight: FlutterLibTheme.of(
                  context,
                ).headlineMedium.fontWeight,
                fontStyle: FlutterLibTheme.of(context).headlineMedium.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterLibTheme.of(context).headlineMedium.fontWeight,
              fontStyle: FlutterLibTheme.of(context).headlineMedium.fontStyle,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: FlutterLibIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 46.0,
                icon: Icon(
                  Icons.more_vert,
                  color: FlutterLibTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(122.0, 0.0, 122.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterLibTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: FlutterLibTheme.of(context).primaryText,
                            unselectedLabelColor: FlutterLibTheme.of(
                              context,
                            ).secondaryText,
                            labelStyle: FlutterLibTheme.of(context).titleMedium
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontWeight,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontStyle,
                                ),
                            unselectedLabelStyle: FlutterLibTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontWeight,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontStyle,
                                ),
                            indicatorColor: FlutterLibTheme.of(context).primary,
                            tabs: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      12.0,
                                      0.0,
                                    ),
                                    child: Icon(Icons.person),
                                  ),
                                  Tab(text: 'Profile'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      12.0,
                                      0.0,
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.idCard,
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryText,
                                    ),
                                  ),
                                  Tab(text: 'Complete Info'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      12.0,
                                      0.0,
                                    ),
                                    child: Icon(Icons.file_present),
                                  ),
                                  Tab(text: 'Documents'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      12.0,
                                      0.0,
                                    ),
                                    child: Icon(Icons.work, size: 24.0),
                                  ),
                                  Tab(text: 'Applied Jobs'),
                                ],
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [
                                () async {},
                                () async {},
                                () async {},
                                () async {},
                              ][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              KeepAliveWidgetWrapper(
                                builder: (context) => Container(
                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                  decoration: BoxDecoration(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      33.0,
                                      22.0,
                                      33.0,
                                      0.0,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  22.0,
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).accent1,
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.network(
                                                            'https://images.unsplash.com/photo-1641994246193-844161d8d855?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjE1NjM2MDR8&ixlib=rb-4.1.0&q=80&w=1080',
                                                          ).image,
                                                        ),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primary,
                                                          width: 3.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Jamal Johnson',
                                                            style: FlutterLibTheme.of(context).headlineMedium.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Senior Doctor',
                                                            style: FlutterLibTheme.of(context).bodyLarge.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyLarge
                                                                        .fontStyle,
                                                              ),
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).primary,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                [
                                                                  Icon(
                                                                    Icons
                                                                        .location_on,
                                                                    color: FlutterLibTheme.of(
                                                                      context,
                                                                    ).secondaryText,
                                                                    size: 16.0,
                                                                  ),
                                                                  Text(
                                                                    'San Francisco, CA',
                                                                    style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                      font: GoogleFonts.openSans(
                                                                        fontWeight: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                        fontStyle: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                      ),
                                                                      color: FlutterLibTheme.of(
                                                                        context,
                                                                      ).secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                    ),
                                                                  ),
                                                                ].divide(
                                                                  SizedBox(
                                                                    width: 8.0,
                                                                  ),
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(height: 8.0)),
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(width: 16.0)),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        0.0,
                                                        0.0,
                                                        100.0,
                                                        0.0,
                                                      ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Contact Information',
                                                            style: FlutterLibTheme.of(context).titleMedium.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleMedium
                                                                        .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                [
                                                                  Icon(
                                                                    Icons.email,
                                                                    color: FlutterLibTheme.of(
                                                                      context,
                                                                    ).primary,
                                                                    size: 20.0,
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      'Jamal.johnson@email.com',
                                                                      style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                        font: GoogleFonts.openSans(
                                                                          fontWeight: FlutterLibTheme.of(
                                                                            context,
                                                                          ).bodyMedium.fontWeight,
                                                                          fontStyle: FlutterLibTheme.of(
                                                                            context,
                                                                          ).bodyMedium.fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                        fontStyle: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(
                                                                  SizedBox(
                                                                    width: 12.0,
                                                                  ),
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                [
                                                                  Icon(
                                                                    Icons.phone,
                                                                    color: FlutterLibTheme.of(
                                                                      context,
                                                                    ).primary,
                                                                    size: 20.0,
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      '+1 (555) 123-4567',
                                                                      style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                        font: GoogleFonts.openSans(
                                                                          fontWeight: FlutterLibTheme.of(
                                                                            context,
                                                                          ).bodyMedium.fontWeight,
                                                                          fontStyle: FlutterLibTheme.of(
                                                                            context,
                                                                          ).bodyMedium.fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                        fontStyle: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(
                                                                  SizedBox(
                                                                    width: 12.0,
                                                                  ),
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children:
                                                                [
                                                                  Icon(
                                                                    Icons
                                                                        .language,
                                                                    color: FlutterLibTheme.of(
                                                                      context,
                                                                    ).primary,
                                                                    size: 20.0,
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      'linkedin.com/info/Jamaljohnson',
                                                                      style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                        font: GoogleFonts.openSans(
                                                                          fontWeight: FlutterLibTheme.of(
                                                                            context,
                                                                          ).bodyMedium.fontWeight,
                                                                          fontStyle: FlutterLibTheme.of(
                                                                            context,
                                                                          ).bodyMedium.fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                        fontStyle: FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(
                                                                  SizedBox(
                                                                    width: 12.0,
                                                                  ),
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(height: 8.0)),
                                                      ),
                                                    ].divide(SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).alternate,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Professional Summary',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Text(
                                                'Experienced MBBS Doctor with 8+ years in Bio Chemistory. Specialized heart specialist, and FPPS and other studies.',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).bodyMedium.override(
                                                      font: GoogleFonts.openSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).alternate,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Experience',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).labelMedium.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      '8+ Years',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).titleSmall.override(
                                                            font: GoogleFonts.notoSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(SizedBox(height: 4.0)),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Specialization',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).labelMedium.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Cardiologist',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).titleSmall.override(
                                                            font: GoogleFonts.notoSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(SizedBox(height: 4.0)),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Status',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).labelMedium.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).success,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              12.0,
                                                            ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              8.0,
                                                              4.0,
                                                              8.0,
                                                              4.0,
                                                            ),
                                                        child: Text(
                                                          'Active',
                                                          style: FlutterLibTheme.of(context).labelSmall.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelSmall
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).info,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(height: 4.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        12.0,
                                                      ),
                                                  border: Border.all(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .person_outlined,
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Personal Information',
                                                            style: FlutterLibTheme.of(context).titleLarge.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleLarge
                                                                        .fontStyle,
                                                              ),
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).primary,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleLarge
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 8.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController1,
                                                              focusNode: _model
                                                                  .textFieldFocusNode1,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'First Name*',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController1Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController2,
                                                              focusNode: _model
                                                                  .textFieldFocusNode2,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Last Name *',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController2Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController3,
                                                              focusNode: _model
                                                                  .textFieldFocusNode3,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Email Address*',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController3Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController4,
                                                              focusNode: _model
                                                                  .textFieldFocusNode4,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Phone # *',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController4Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController5,
                                                              focusNode: _model
                                                                  .textFieldFocusNode5,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Date of Birth (MM/DD/YYYY)',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController5Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController6,
                                                              focusNode: _model
                                                                  .textFieldFocusNode6,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'National ID / Social Security Number',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController6Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                    ].divide(SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        12.0,
                                                      ),
                                                  border: Border.all(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).tertiary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .location_on_outlined,
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).tertiary,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Address Information',
                                                            style: FlutterLibTheme.of(context).titleLarge.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleLarge
                                                                        .fontStyle,
                                                              ),
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).tertiary,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleLarge
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 8.0)),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController7,
                                                        focusNode: _model
                                                            .textFieldFocusNode7,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Street Address *',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .streetAddress,
                                                        validator: _model
                                                            .textController7Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController8,
                                                        focusNode: _model
                                                            .textFieldFocusNode8,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Apartment, Suite, Unit (Optional)',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController8Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController9,
                                                              focusNode: _model
                                                                  .textFieldFocusNode9,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'City *',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController9Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController10,
                                                              focusNode: _model
                                                                  .textFieldFocusNode10,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .words,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'State/Province *',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController10Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                              inputFormatters: [
                                                                if (!isAndroid &&
                                                                    !isiOS)
                                                                  TextInputFormatter.withFunction((
                                                                    oldValue,
                                                                    newValue,
                                                                  ) {
                                                                    return TextEditingValue(
                                                                      selection:
                                                                          newValue
                                                                              .selection,
                                                                      text: newValue
                                                                          .text
                                                                          .toCapitalization(
                                                                            TextCapitalization.words,
                                                                          ),
                                                                    );
                                                                  }),
                                                              ],
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController11,
                                                              focusNode: _model
                                                                  .textFieldFocusNode11,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'ZIP/Postal Code *',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              validator: _model
                                                                  .textController11Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                    ].divide(SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        12.0,
                                                      ),
                                                  border: Border.all(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).secondary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons.work_outlined,
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondary,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Work Experience',
                                                            style: FlutterLibTheme.of(context).titleLarge.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleLarge
                                                                        .fontStyle,
                                                              ),
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).secondary,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleLarge
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 8.0)),
                                                      ),
                                                      Text(
                                                        'Current/Most Recent Position',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).titleMedium.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleMedium
                                                                        .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController12,
                                                        focusNode: _model
                                                            .textFieldFocusNode12,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText: 'Job Title',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController12Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController13,
                                                        focusNode: _model
                                                            .textFieldFocusNode13,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Company Name',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController13Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController14,
                                                              focusNode: _model
                                                                  .textFieldFocusNode14,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Start Date (MM/YYYY)',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .datetime,
                                                              validator: _model
                                                                  .textController14Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController15,
                                                              focusNode: _model
                                                                  .textFieldFocusNode15,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'End Date (MM/YYYY)',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .datetime,
                                                              validator: _model
                                                                  .textController15Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController16,
                                                        focusNode: _model
                                                            .textFieldFocusNode16,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .sentences,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Job Responsibilities and Achievements',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        maxLines: 4,
                                                        keyboardType:
                                                            TextInputType
                                                                .multiline,
                                                        validator: _model
                                                            .textController16Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .sentences,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController17,
                                                        focusNode: _model
                                                            .textFieldFocusNode17,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Supervisor Name and Contact',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController17Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Previous Position (if applicable)',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).titleMedium.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleMedium
                                                                        .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController18,
                                                        focusNode: _model
                                                            .textFieldFocusNode18,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Previous Job Title',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController18Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController19,
                                                        focusNode: _model
                                                            .textFieldFocusNode19,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Previous Company Name',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController19Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController20,
                                                              focusNode: _model
                                                                  .textFieldFocusNode20,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Start Date (MM/YYYY)',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .datetime,
                                                              validator: _model
                                                                  .textController20Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController21,
                                                              focusNode: _model
                                                                  .textFieldFocusNode21,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'End Date (MM/YYYY)',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .datetime,
                                                              validator: _model
                                                                  .textController21Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController22,
                                                        focusNode: _model
                                                            .textFieldFocusNode22,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Years of Total Experience',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator: _model
                                                            .textController22Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                      ),
                                                    ].divide(SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        12.0,
                                                      ),
                                                  border: Border.all(
                                                    color: Color(0xC74B39EF),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .school_outlined,
                                                            color: Color(
                                                              0xC74B39EF,
                                                            ),
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Education',
                                                            style: FlutterLibTheme.of(context).titleLarge.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleLarge
                                                                        .fontStyle,
                                                              ),
                                                              color: Color(
                                                                0xC74B39EF,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleLarge
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 8.0)),
                                                      ),
                                                      Text(
                                                        'Highest Level of Education',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).titleMedium.override(
                                                              font: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleMedium
                                                                        .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      FlutterLibDropDown<
                                                        String
                                                      >(
                                                        controller:
                                                            _model.dropDownValueController ??=
                                                                FormFieldController<
                                                                  String
                                                                >(null),
                                                        options: [
                                                          'High School Diploma',
                                                          'Associate Degree',
                                                          'Bachelor\'s Degree',
                                                          'Master\'s Degree',
                                                          'Doctorate/PhD',
                                                          'Professional Certification',
                                                        ],
                                                        onChanged: (val) =>
                                                            safeSetState(
                                                              () =>
                                                                  _model.dropDownValue =
                                                                      val,
                                                            ),
                                                        width: double.infinity,
                                                        height: 56.0,
                                                        textStyle: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        hintText:
                                                            'Education Level *',
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        elevation: 0.0,
                                                        borderColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).alternate,
                                                        borderWidth: 1.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              12.0,
                                                              0.0,
                                                              0.0,
                                                              0.0,
                                                            ),
                                                        hidesUnderline: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController23,
                                                        focusNode: _model
                                                            .textFieldFocusNode23,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Institution Name *',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController23Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .textController24,
                                                        focusNode: _model
                                                            .textFieldFocusNode24,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'Field of Study/Major',
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          errorBorder: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0x00000000,
                                                                  ),
                                                                  width: 1.0,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8.0,
                                                                ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0x00000000,
                                                                      ),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.0,
                                                                    ),
                                                              ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryBackground,
                                                        ),
                                                        style: FlutterLibTheme.of(context).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        validator: _model
                                                            .textController24Validator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter.withFunction((
                                                              oldValue,
                                                              newValue,
                                                            ) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                      TextCapitalization
                                                                          .words,
                                                                    ),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: TextFormField(
                                                              controller: _model
                                                                  .textController25,
                                                              focusNode: _model
                                                                  .textFieldFocusNode25,
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Graduation Year',
                                                                enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                errorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                focusedErrorBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(
                                                                      0x00000000,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        8.0,
                                                                      ),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).primaryBackground,
                                                              ),
                                                              style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                font: GoogleFonts.openSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              maxLines: null,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: _model
                                                                  .textController25Validator
                                                                  .asValidator(
                                                                    context,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 12.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                'Button pressed ...',
                                                              );
                                                            },
                                                            text: 'Education',
                                                            icon: Icon(
                                                              Icons.add,
                                                              size: 28.0,
                                                            ),
                                                            options: FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                  ),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                  ),
                                                              color: Color(
                                                                0x844B39EF,
                                                              ),
                                                              textStyle: FlutterLibTheme.of(context).titleSmall.override(
                                                                font: GoogleFonts.notoSans(
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).titleSmall.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).titleSmall.fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .titleSmall
                                                                        .fontStyle,
                                                              ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    8.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 32.0)),
                                    ),
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: Color(0x1A000000),
                                          offset: Offset(0.0, 2.0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Document Status',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleLarge.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).accent1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        12.0,
                                                        6.0,
                                                        12.0,
                                                        6.0,
                                                      ),
                                                  child: Text(
                                                    '7 of 10 Complete',
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).labelSmall.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  16.0,
                                                  0.0,
                                                  16.0,
                                                  0.0,
                                                ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).accent1,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Document Type',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).labelMedium.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .labelMedium
                                                                        .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Status',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).labelMedium.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '1',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Resume/CV',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    22.0,
                                                                    0.0,
                                                                  ),
                                                              child: Text(
                                                                '13-Oct-2025',
                                                                style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).success,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Accepted',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '2',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Cover Letter',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    22.0,
                                                                    0.0,
                                                                  ),
                                                              child: Text(
                                                                '09-Oct-2025',
                                                                style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).success,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Accepted',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '3',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Educational Certificates',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    22.0,
                                                                    0.0,
                                                                  ),
                                                              child: Text(
                                                                '09-Oct-2025',
                                                                style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).tertiary,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Pending',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '4',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Professional References',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    22.0,
                                                                    0.0,
                                                                  ),
                                                              child: Text(
                                                                '09-Oct-2025',
                                                                style: FlutterLibTheme.of(context).bodyMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).tertiary,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Pending',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '5',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Portfolio/Work Samples',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).success,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Accepted',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '6',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Identity Verification',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).success,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Accepted',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '7',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .check_circle,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Background Check',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).success,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Accepted',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '8',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .cancel,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).error,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Salary Expectations',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                    color: Color(
                                                                      0xFFA9A9A9,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          12.0,
                                                                        ),
                                                                  ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Missing',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children:
                                                                    [
                                                                      Text(
                                                                        '9',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .schedule,
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).tertiary,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Availability Schedule',
                                                                        style:
                                                                            FlutterLibTheme.of(
                                                                              context,
                                                                            ).bodyMedium.override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0,
                                                                    ),
                                                                child: Text(
                                                                  'Rejected',
                                                                  style: FlutterLibTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          16.0,
                                                          0.0,
                                                          16.0,
                                                          0.0,
                                                        ),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          DocumentPageWidget
                                                              .routeName,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: FlutterLibTheme.of(
                                                            context,
                                                          ).secondaryBackground,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                12.0,
                                                              ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children:
                                                                      [
                                                                        Text(
                                                                          '10',
                                                                          style:
                                                                              FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.override(
                                                                                font: GoogleFonts.openSans(
                                                                                  fontWeight: FlutterLibTheme.of(
                                                                                    context,
                                                                                  ).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterLibTheme.of(
                                                                                    context,
                                                                                  ).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .schedule,
                                                                          color: FlutterLibTheme.of(
                                                                            context,
                                                                          ).tertiary,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        Text(
                                                                          'Driving License',
                                                                          style:
                                                                              FlutterLibTheme.of(
                                                                                context,
                                                                              ).bodyMedium.override(
                                                                                font: GoogleFonts.openSans(
                                                                                  fontWeight: FlutterLibTheme.of(
                                                                                    context,
                                                                                  ).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterLibTheme.of(
                                                                                    context,
                                                                                  ).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(
                                                                        SizedBox(
                                                                          width:
                                                                              8.0,
                                                                        ),
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                  color:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).error,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        12.0,
                                                                      ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        4.0,
                                                                      ),
                                                                  child: Text(
                                                                    'Rejected',
                                                                    style: FlutterLibTheme.of(context).labelSmall.override(
                                                                      font: GoogleFonts.openSans(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
                                                                      ),
                                                                      color: FlutterLibTheme.of(
                                                                        context,
                                                                      ).info,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 2.0)),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0,
                                    0.0,
                                    12.0,
                                    0.0,
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final dummyjobs = FFAppState().jobsDummy
                                          .toList();

                                      return FlutterLibDataTable<
                                        JobsDummyStruct
                                      >(
                                        controller:
                                            _model.paginatedDataTableController,
                                        data: dummyjobs,
                                        columnsBuilder: (onSortChanged) => [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                '#',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            fixedWidth: 50.0,
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Title',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Specialization',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Hospial',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Status',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Date',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Info',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).titleMedium.override(
                                                      font: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        dataRowBuilder:
                                            (
                                              dummyjobsItem,
                                              dummyjobsIndex,
                                              selected,
                                              onSelectChanged,
                                            ) => DataRow(
                                              color: MaterialStateProperty.all(
                                                dummyjobsIndex % 2 == 0
                                                    ? FlutterLibTheme.of(
                                                        context,
                                                      ).secondaryBackground
                                                    : FlutterLibTheme.of(
                                                        context,
                                                      ).primaryBackground,
                                              ),
                                              cells: [
                                                Text(
                                                  dummyjobsIndex.toString(),
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyLarge.override(
                                                        font: GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                                SelectionArea(
                                                  child: Text(
                                                    dummyjobsItem.title,
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                SelectionArea(
                                                  child: Text(
                                                    dummyjobsItem.speciality,
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                SelectionArea(
                                                  child: Text(
                                                    dummyjobsItem.hospital,
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                SelectionArea(
                                                  child: Text(
                                                    dummyjobsItem.status,
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                SelectionArea(
                                                  child: Text(
                                                    dateTimeFormat(
                                                      "yMMMd",
                                                      dummyjobsItem.created!,
                                                    ),
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                SelectionArea(
                                                  child: Text(
                                                    'Complete',
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ].map((c) => DataCell(c)).toList(),
                                            ),
                                        paginated: true,
                                        selectable: false,
                                        hidePaginator: false,
                                        showFirstLastButtons: true,
                                        headingRowHeight: 56.0,
                                        dataRowHeight: 48.0,
                                        columnSpacing: 20.0,
                                        headingRowColor: Color(0xFF668194),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                        addHorizontalDivider: true,
                                        addTopAndBottomDivider: true,
                                        hideDefaultHorizontalDivider: true,
                                        horizontalDividerColor:
                                            FlutterLibTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        horizontalDividerThickness: 1.0,
                                        addVerticalDivider: false,
                                      );
                                    },
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
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Request Documents',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.33,
                            height: 48.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              0.0,
                              16.0,
                              0.0,
                            ),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              0.0,
                              0.0,
                              0.0,
                            ),
                            color: FlutterLibTheme.of(context).accent1,
                            textStyle: FlutterLibTheme.of(context).titleSmall
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontStyle,
                                  ),
                                  color: FlutterLibTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterLibTheme.of(
                                    context,
                                  ).titleSmall.fontWeight,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleSmall.fontStyle,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterLibTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Schedule Interview',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 0.33,
                              height: 48.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                16.0,
                                0.0,
                                16.0,
                                0.0,
                              ),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                0.0,
                                0.0,
                                0.0,
                              ),
                              color: FlutterLibTheme.of(context).primary,
                              textStyle: FlutterLibTheme.of(context).titleSmall
                                  .override(
                                    font: GoogleFonts.notoSans(
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).titleSmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).titleSmall.fontStyle,
                                    ),
                                    color: FlutterLibTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
