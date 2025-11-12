import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_lib/flutter_lib_data_table.dart';
import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'job_view_model.dart';
export 'job_view_model.dart';

/// in the web view create complete professional and proper job details page.
class JobViewWidget extends StatefulWidget {
  const JobViewWidget({super.key, required this.jobRef});

  /// Refrence of job Coming from Jobs Table
  final DocumentReference? jobRef;

  static String routeName = 'JobView';
  static String routePath = '/jobView';

  @override
  State<JobViewWidget> createState() => _JobViewWidgetState();
}

class _JobViewWidgetState extends State<JobViewWidget>
    with TickerProviderStateMixin {
  late JobViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobViewModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

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

    return StreamBuilder<JobRecord>(
      stream: JobRecord.getDocument(widget!.jobRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterLibTheme.of(context).primaryBackground,
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

        final jobViewJobRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterLibTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        color: FlutterLibTheme.of(context).primary,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: AlignmentDirectional(0.0, -0.08),
                          image: Image.network(
                            'https://images.unsplash.com/photo-1683205556671-339f1192a1be?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjE3NDA2MzB8&ixlib=rb-4.1.0&q=80&w=1080',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.transparent, Color(0x80000000)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(1.0, 0.0),
                            end: AlignmentDirectional(-1.0, 0),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0,
                                  24.0,
                                  24.0,
                                  0.0,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlutterLibIconButton(
                                      borderRadius: 22.0,
                                      buttonSize: 44.0,
                                      fillColor: Color(0x4DFFFFFF),
                                      icon: Icon(
                                        Icons.arrow_back_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                    ),
                                    FlutterLibIconButton(
                                      borderRadius: 22.0,
                                      buttonSize: 44.0,
                                      fillColor: Color(0x4DFFFFFF),
                                      icon: Icon(
                                        Icons.edit_note_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primaryText,
                                        size: 28.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          EditJobWidget.routeName,
                                          queryParameters: {
                                            'docRef': serializeParam(
                                              widget!.jobRef,
                                              ParamType.DocumentReference,
                                            ),
                                            'docObj': serializeParam(
                                              jobViewJobRecord,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'docObj': jobViewJobRecord,
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.7),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.14,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          jobViewJobRecord.title,
                                          'N/A',
                                        ),
                                        style: FlutterLibTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineLarge.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).info,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineLarge.fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          4.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Text(
                                          valueOrDefault<String>(
                                            jobViewJobRecord.specialization,
                                            'N/A',
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleMedium.fontStyle,
                                                ),
                                                color: Color(0xCCFFFFFF),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  8.0,
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on_rounded,
                                                      color: Color(0xCCFFFFFF),
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        jobViewJobRecord
                                                            .address,
                                                        'N/A',
                                                      ),
                                                      style: FlutterLibTheme.of(context).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
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
                                                        color: FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                        letterSpacing: 0.0,
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
                                                    ),
                                                  ].divide(SizedBox(width: 4.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.schedule_rounded,
                                                      color: Color(0xCCFFFFFF),
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      jobViewJobRecord
                                                          .employmentType,
                                                      style: FlutterLibTheme.of(context).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
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
                                                        color: FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                        letterSpacing: 0.0,
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
                                                    ),
                                                  ].divide(SizedBox(width: 4.0)),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              jobViewJobRecord.agentName,
                                              'Agent',
                                            ),
                                            style: FlutterLibTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.notoSans(
                                                    fontWeight:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .headlineSmall
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
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).headlineSmall.fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.761,
                      decoration: BoxDecoration(
                        color: FlutterLibTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0.0, 0),
                            child: TabBar(
                              labelColor: FlutterLibTheme.of(
                                context,
                              ).primaryText,
                              unselectedLabelColor: FlutterLibTheme.of(
                                context,
                              ).secondaryText,
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
                              indicatorColor: FlutterLibTheme.of(
                                context,
                              ).primary,
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
                                      child: Icon(
                                        Icons.business_center_outlined,
                                      ),
                                    ),
                                    Tab(text: 'Job Description'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0,
                                        0.0,
                                        6.0,
                                        0.0,
                                      ),
                                      child: Icon(Icons.file_present),
                                    ),
                                    Tab(text: 'Documents Required'),
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
                                      child: Icon(Icons.people_alt_outlined),
                                    ),
                                    Tab(text: 'Candidates'),
                                  ],
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}, () async {}, () async {}][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: SingleChildScrollView(
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
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    jobViewJobRecord
                                                        .salaryRange,
                                                    'Not Specified',
                                                  ),
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).headlineSmall.override(
                                                        font: GoogleFonts.notoSans(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  'Annual salary',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
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
                                                        letterSpacing: 0.0,
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
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    12.0,
                                                    6.0,
                                                    12.0,
                                                    6.0,
                                                  ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0x1A4CAF50),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        20.0,
                                                      ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      jobViewJobRecord
                                                          .locationType,
                                                      'N/A',
                                                    ),
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodySmall.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).success,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    12.0,
                                                    6.0,
                                                    12.0,
                                                    6.0,
                                                  ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0x1A2196F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        20.0,
                                                      ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      'Exp  ${jobViewJobRecord.experienceYears.toString()}  years',
                                                      '0',
                                                    ),
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodySmall.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primary,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    12.0,
                                                    6.0,
                                                    12.0,
                                                    6.0,
                                                  ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0x1AFF9800),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        20.0,
                                                      ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      jobViewJobRecord
                                                          .specialization,
                                                      'N/A',
                                                    ),
                                                    style:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodySmall.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFFFF6F00,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterLibTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 12.0)),
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
                                              'Job Description',
                                              style: FlutterLibTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .headlineSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .headlineSmall
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                jobViewJobRecord.jobDescription,
                                                'N/A',
                                              ),
                                              style: FlutterLibTheme.of(context)
                                                  .titleMedium
                                                  .override(
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
                                                        ).titleMedium.fontStyle,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
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
                                              'Requirements',
                                              style: FlutterLibTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).titleLarge.fontStyle,
                                                  ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  jobViewJobRecord
                                                      .qualifications,
                                                  'N/A',
                                                ),
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
                                                      lineHeight: 1.5,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
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
                                              'Benefits & Perks',
                                              style: FlutterLibTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).titleLarge.fontStyle,
                                                  ),
                                            ),
                                            GridView(
                                              padding: EdgeInsets.zero,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 12.0,
                                                    mainAxisSpacing: 12.0,
                                                    childAspectRatio: 12.0,
                                                  ),
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                if (jobViewJobRecord
                                                    .healthInsurance)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .health_and_safety_rounded,
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primary,
                                                        size: 20.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'Health Insurance',
                                                          style: FlutterLibTheme.of(context).titleMedium.override(
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
                                                    ].divide(SizedBox(width: 6.0)),
                                                  ),
                                                if (jobViewJobRecord
                                                    .retirementPlan)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.savings_rounded,
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primary,
                                                        size: 20.0,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '401(k) Matching',
                                                          style: FlutterLibTheme.of(context).titleMedium.override(
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
                                                    ].divide(SizedBox(width: 8.0)),
                                                  ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.notes,
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).primary,
                                                      size: 20.0,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          jobViewJobRecord
                                                              .otherBenefits,
                                                          'N/A',
                                                        ),
                                                        style: FlutterLibTheme.of(context).titleMedium.override(
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
                                                  ].divide(SizedBox(width: 8.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).alternate,
                                        ),
                                      ].divide(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height:
                                                MediaQuery.sizeOf(
                                                  context,
                                                ).height *
                                                0.58,
                                            decoration: BoxDecoration(),
                                            child: Builder(
                                              builder: (context) {
                                                final jobDocuments =
                                                    jobViewJobRecord.documents
                                                        .toList();

                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(jobDocuments.length, (
                                                      jobDocumentsIndex,
                                                    ) {
                                                      final jobDocumentsItem =
                                                          jobDocuments[jobDocumentsIndex];
                                                      return Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                              context,
                                                            ).width *
                                                            0.55,
                                                        height: 80.0,
                                                        decoration: BoxDecoration(
                                                          color: valueOrDefault<Color>(
                                                            (int index) {
                                                                  return (index + 1) %
                                                                              2 ==
                                                                          0
                                                                      ? true
                                                                      : false;
                                                                }(
                                                                  jobDocumentsIndex,
                                                                )
                                                                ? FlutterLibTheme.of(
                                                                    context,
                                                                  ).secondaryBackground
                                                                : FlutterLibTheme.of(
                                                                    context,
                                                                  ).primaryBackground,
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                12.0,
                                                                0.0,
                                                                12.0,
                                                                0.0,
                                                              ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                    ),
                                                                child: Text(
                                                                  (jobDocumentsIndex +
                                                                          1)
                                                                      .toString(),
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.all(
                                                                      12.0,
                                                                    ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children:
                                                                      [
                                                                        Text(
                                                                          valueOrDefault<
                                                                            String
                                                                          >(
                                                                            jobDocumentsItem.title,
                                                                            'Title N/A',
                                                                          ),
                                                                          style:
                                                                              FlutterLibTheme.of(
                                                                                context,
                                                                              ).titleSmall.override(
                                                                                font: GoogleFonts.notoSans(
                                                                                  fontWeight: FlutterLibTheme.of(
                                                                                    context,
                                                                                  ).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterLibTheme.of(
                                                                                    context,
                                                                                  ).titleSmall.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).titleSmall.fontWeight,
                                                                                fontStyle: FlutterLibTheme.of(
                                                                                  context,
                                                                                ).titleSmall.fontStyle,
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                            String
                                                                          >(
                                                                            jobDocumentsItem.description,
                                                                            'Description N/A',
                                                                          ),
                                                                          style:
                                                                              FlutterLibTheme.of(
                                                                                context,
                                                                              ).labelMedium.override(
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
                                                                        ),
                                                                      ].divide(
                                                                        SizedBox(
                                                                          height:
                                                                              6.0,
                                                                        ),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }).divide(SizedBox(height: 2.0)),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 12.0)),
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
                                  child: Container(
                                    width: 921.4,
                                    height: 370.2,
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).secondaryBackground,
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        final dummyjobs = FFAppState()
                                            .CandidatesDummy
                                            .toList();

                                        return FlutterLibDataTable<
                                          CandidatesDummyStruct
                                        >(
                                          controller: _model
                                              .paginatedDataTableController,
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
                                                  'Name',
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
                                                  'Email',
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
                                                  'Agent',
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
                                                  'Created',
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
                                                  SelectionArea(
                                                    child: Text(
                                                      dummyjobsIndex.toString(),
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                  InkWell(
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
                                                        CandidateProfileWidget
                                                            .routeName,
                                                      );
                                                    },
                                                    child: Text(
                                                      dummyjobsItem.name,
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                      dummyjobsItem.title,
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                      dummyjobsItem.email,
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                      dummyjobsItem.agent,
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                                  FontWeight
                                                                      .w500,
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
