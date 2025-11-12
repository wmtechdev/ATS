import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_lib/flutter_lib_data_table.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'jobs_model.dart';
export 'jobs_model.dart';

class JobsWidget extends StatefulWidget {
  const JobsWidget({super.key});

  static String routeName = 'Jobs';
  static String routePath = '/jobs';

  @override
  State<JobsWidget> createState() => _JobsWidgetState();
}

class _JobsWidgetState extends State<JobsWidget> {
  late JobsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentUserReference == null) {
        context.pushNamed(AuthAdminWidget.routeName);
      }
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<JobRecord>>(
      stream: queryJobRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterLibTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitRotatingPlain(
                  color: FlutterLibTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<JobRecord> jobsJobRecordList = snapshot.data!;

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
                                  onPressed: () async {
                                    context.pushNamed(HomePageWidget.routeName);
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
                                    hoverElevation: 0.0,
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
                                    context.pushNamed(
                                      CandidatesWidget.routeName,
                                    );
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
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    context.pushNamed(
                                      DocumentsWidget.routeName,
                                    );
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
                                  context.pushNamed(
                                    ProfilePageWidget.routeName,
                                  );
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 250.0,
                              decoration: BoxDecoration(),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Title',
                                    labelStyle: FlutterLibTheme.of(context)
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
                                    hintStyle: FlutterLibTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).labelMedium.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterLibTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    prefixIcon: Icon(
                                      Icons.person_search,
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).primary,
                                      size: 24.0,
                                    ),
                                  ),
                                  style: FlutterLibTheme.of(context).titleMedium
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
                                  cursorColor: FlutterLibTheme.of(
                                    context,
                                  ).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Container(
                              width: 250.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  22.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                child: Container(
                                  width: 250.0,
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'speciality',
                                      labelStyle: FlutterLibTheme.of(context)
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
                                      hintStyle: FlutterLibTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      prefixIcon: Icon(
                                        FontAwesomeIcons.stethoscope,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                      ),
                                    ),
                                    style: FlutterLibTheme.of(context)
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
                                    cursorColor: FlutterLibTheme.of(
                                      context,
                                    ).primaryText,
                                    enableInteractiveSelection: true,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                22.0,
                                0.0,
                                0.0,
                                0.0,
                              ),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(NewJobWidget.routeName);
                                },
                                text: 'New Job',
                                icon: Icon(Icons.add, size: 28.0),
                                options: FFButtonOptions(
                                  height: 47.0,
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
                                  textStyle: FlutterLibTheme.of(context)
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
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).titleMedium.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleMedium.fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            12.0,
                            0.0,
                            0.0,
                          ),
                          child: Container(
                            width: 1050.5,
                            height: MediaQuery.sizeOf(context).height * 0.74,
                            decoration: BoxDecoration(
                              color: FlutterLibTheme.of(
                                context,
                              ).secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final jobs = jobsJobRecordList.toList();

                                return FlutterLibDataTable<JobRecord>(
                                  controller:
                                      _model.paginatedDataTableController,
                                  data: jobs,
                                  columnsBuilder: (onSortChanged) => [
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          '#',
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
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
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                      fixedWidth: 200.0,
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Specialization',
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Created',
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Applicants',
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Agent',
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  dataRowBuilder:
                                      (
                                        jobsItem,
                                        jobsIndex,
                                        selected,
                                        onSelectChanged,
                                      ) => DataRow(
                                        color: MaterialStateProperty.all(
                                          jobsIndex % 2 == 0
                                              ? FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground
                                              : FlutterLibTheme.of(
                                                  context,
                                                ).primaryBackground,
                                        ),
                                        cells: [
                                          SelectionArea(
                                            child: Text(
                                              (jobsIndex + 1).toString(),
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                JobViewWidget.routeName,
                                                queryParameters: {
                                                  'jobRef': serializeParam(
                                                    jobsItem.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Text(
                                              jobsItem.title,
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                          ),
                                          SelectionArea(
                                            child: Text(
                                              jobsItem.specialization,
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                          ),
                                          SelectionArea(
                                            child: Text(
                                              dateTimeFormat(
                                                "yMMMd",
                                                jobsItem.dtime!,
                                              ),
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                          ),
                                          SelectionArea(
                                            child: Text(
                                              jobsItem.candidates.length
                                                  .toString(),
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              jobsItem.agentName,
                                              'Agent',
                                            ),
                                            style: FlutterLibTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyLarge.fontStyle,
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
                                  headingRowColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  borderRadius: BorderRadius.circular(8.0),
                                  addHorizontalDivider: true,
                                  addTopAndBottomDivider: true,
                                  hideDefaultHorizontalDivider: true,
                                  horizontalDividerColor: FlutterLibTheme.of(
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
        );
      },
    );
  }
}
