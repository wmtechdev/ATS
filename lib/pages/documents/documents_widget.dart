import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
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
import 'documents_model.dart';
export 'documents_model.dart';

class DocumentsWidget extends StatefulWidget {
  const DocumentsWidget({super.key});

  static String routeName = 'Documents';
  static String routePath = '/documents';

  @override
  State<DocumentsWidget> createState() => _DocumentsWidgetState();
}

class _DocumentsWidgetState extends State<DocumentsWidget> {
  late DocumentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.accessLevel, 0) > 2) {
        context.pushNamed(AuthAdminWidget.routeName);
      }
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tfNewDocTitleTextController ??= TextEditingController();
    _model.tfNewDocTitleFocusNode ??= FocusNode();

    _model.tfNewDocDscTextController ??= TextEditingController();
    _model.tfNewDocDscFocusNode ??= FocusNode();

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
                              onPressed: () {
                                print('Button pressed ...');
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
                              onPressed: () {
                                print('Button pressed ...');
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.65,
                        height: MediaQuery.sizeOf(context).height * 0.92,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0x40355674),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      26.0,
                                      4.0,
                                      26.0,
                                      4.0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Document Type',
                                          style: FlutterLibTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).labelMedium.fontStyle,
                                              ),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            14.0,
                                          ),
                                          child: Container(
                                            width: 387.6,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            child: Container(
                                              width: 250.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController1,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Title',
                                                  labelStyle:
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
                                                        lineHeight: 1.0,
                                                      ),
                                                  hintStyle:
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
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                      InputBorder.none,
                                                  filled: true,
                                                  fillColor: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryBackground,
                                                  prefixIcon: Icon(
                                                    FontAwesomeIcons
                                                        .stethoscope,
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                  ),
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
                                                      lineHeight: 1.0,
                                                    ),
                                                cursorColor: FlutterLibTheme.of(
                                                  context,
                                                ).primaryText,
                                                enableInteractiveSelection:
                                                    true,
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Required',
                                          style: FlutterLibTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).labelMedium.fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.65,
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        0.66,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Builder(
                                      builder: (context) {
                                        final docs = FFAppState().NewJobDocs
                                            .toList();

                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: List.generate(docs.length, (
                                              docsIndex,
                                            ) {
                                              final docsItem = docs[docsIndex];
                                              return Container(
                                                width:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).width *
                                                    0.649,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: valueOrDefault<Color>(
                                                    (int index) {
                                                          return (index + 1) %
                                                                      2 ==
                                                                  0
                                                              ? true
                                                              : false;
                                                        }(docsIndex)
                                                        ? FlutterLibTheme.of(
                                                            context,
                                                          ).primaryBackground
                                                        : FlutterLibTheme.of(
                                                            context,
                                                          ).secondaryBackground,
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).primaryBackground,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            12.0,
                                                            0.0,
                                                            12.0,
                                                            0.0,
                                                          ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  18.0,
                                                                  0.0,
                                                                ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onLongPress: () async {
                                                                FFAppState()
                                                                    .removeFromNewJobDocs(
                                                                      docsItem,
                                                                    );
                                                                safeSetState(
                                                                  () {},
                                                                );
                                                              },
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .trashAlt,
                                                                color: Color(
                                                                  0xFF89939A,
                                                                ),
                                                                size: 18.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  22.0,
                                                                  0.0,
                                                                  32.0,
                                                                  0.0,
                                                                ),
                                                            child: Text(
                                                              valueOrDefault<
                                                                String
                                                              >(
                                                                (docsIndex + 1)
                                                                    .toString(),
                                                                '0',
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                  10.0,
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
                                                                      docsItem
                                                                          .title,
                                                                      style: FlutterLibTheme.of(context).titleSmall.override(
                                                                        font: GoogleFonts.notoSans(
                                                                          fontWeight: FlutterLibTheme.of(
                                                                            context,
                                                                          ).titleSmall.fontWeight,
                                                                          fontStyle: FlutterLibTheme.of(
                                                                            context,
                                                                          ).titleSmall.fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterLibTheme.of(
                                                                          context,
                                                                        ).titleSmall.fontWeight,
                                                                        fontStyle: FlutterLibTheme.of(
                                                                          context,
                                                                        ).titleSmall.fontStyle,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      docsItem
                                                                          .description,
                                                                      style: FlutterLibTheme.of(context).labelMedium.override(
                                                                        font: GoogleFonts.openSans(
                                                                          fontWeight: FlutterLibTheme.of(
                                                                            context,
                                                                          ).labelMedium.fontWeight,
                                                                          fontStyle: FlutterLibTheme.of(
                                                                            context,
                                                                          ).labelMedium.fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0.0,
                                                            0.0,
                                                            14.0,
                                                            0.0,
                                                          ),
                                                      child: Theme(
                                                        data: ThemeData(
                                                          checkboxTheme: CheckboxThemeData(
                                                            visualDensity:
                                                                VisualDensity
                                                                    .compact,
                                                            materialTapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    4.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).alternate,
                                                        ),
                                                        child: Checkbox(
                                                          value:
                                                              _model.checkboxValueMap[docsItem] ??=
                                                                  docsItem
                                                                      .required,
                                                          onChanged: (newValue) async {
                                                            safeSetState(
                                                              () =>
                                                                  _model.checkboxValueMap[docsItem] =
                                                                      newValue!,
                                                            );
                                                            if (newValue!) {
                                                              FFAppState().updateNewJobDocsAtIndex(
                                                                docsIndex,
                                                                (e) => e
                                                                  ..required =
                                                                      !docsItem
                                                                          .required,
                                                              );
                                                              safeSetState(
                                                                () {},
                                                              );
                                                            } else {
                                                              FFAppState().updateNewJobDocsAtIndex(
                                                                docsIndex,
                                                                (e) => e
                                                                  ..required =
                                                                      !docsItem
                                                                          .required,
                                                              );
                                                              safeSetState(
                                                                () {},
                                                              );
                                                            }
                                                          },
                                                          side:
                                                              (FlutterLibTheme.of(
                                                                    context,
                                                                  ).alternate !=
                                                                  null)
                                                              ? BorderSide(
                                                                  width: 2,
                                                                  color: FlutterLibTheme.of(
                                                                    context,
                                                                  ).alternate!,
                                                                )
                                                              : null,
                                                          activeColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primary,
                                                          checkColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).info,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }).divide(SizedBox(height: 2.0)),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(DocumentPageWidget.routeName);
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(context).accent2,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0,
                                    22.0,
                                    12.0,
                                    12.0,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primaryText,
                                              size: 33.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      12.0,
                                                      0.0,
                                                      0.0,
                                                      0.0,
                                                    ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.sizeOf(
                                                            context,
                                                          ).width *
                                                          0.4,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                              context,
                                                            ).width *
                                                            0.5,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .tfNewDocTitleTextController,
                                                          focusNode: _model
                                                              .tfNewDocTitleFocusNode,
                                                          autofocus: false,
                                                          obscureText: false,
                                                          decoration: InputDecoration(
                                                            isDense: true,
                                                            labelText: 'Title',
                                                            labelStyle: FlutterLibTheme.of(context).labelMedium.override(
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
                                                              letterSpacing:
                                                                  0.0,
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
                                                            hintText:
                                                                'New Document Title',
                                                            hintStyle: FlutterLibTheme.of(context).labelMedium.override(
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
                                                              letterSpacing:
                                                                  0.0,
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
                                                            enabledBorder: OutlineInputBorder(
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
                                                            focusedBorder: OutlineInputBorder(
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
                                                            errorBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
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
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).error,
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
                                                                ).secondaryBackground,
                                                          ),
                                                          style: FlutterLibTheme.of(context).bodyLarge.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodyLarge
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          cursorColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryText,
                                                          enableInteractiveSelection:
                                                              true,
                                                          validator: _model
                                                              .tfNewDocTitleTextControllerValidator
                                                              .asValidator(
                                                                context,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.sizeOf(
                                                            context,
                                                          ).width *
                                                          0.46,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                              context,
                                                            ).width *
                                                            0.5,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .tfNewDocDscTextController,
                                                          focusNode: _model
                                                              .tfNewDocDscFocusNode,
                                                          autofocus: false,
                                                          obscureText: false,
                                                          decoration: InputDecoration(
                                                            isDense: true,
                                                            labelText:
                                                                'Description',
                                                            labelStyle: FlutterLibTheme.of(context).labelMedium.override(
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
                                                              letterSpacing:
                                                                  0.0,
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
                                                            hintText:
                                                                'New Document Description',
                                                            hintStyle: FlutterLibTheme.of(context).labelMedium.override(
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
                                                              letterSpacing:
                                                                  0.0,
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
                                                            enabledBorder: OutlineInputBorder(
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
                                                            focusedBorder: OutlineInputBorder(
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
                                                            errorBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
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
                                                                        color: FlutterLibTheme.of(
                                                                          context,
                                                                        ).error,
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
                                                                ).secondaryBackground,
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
                                                          minLines: 1,
                                                          cursorColor:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).primaryText,
                                                          enableInteractiveSelection:
                                                              true,
                                                          validator: _model
                                                              .tfNewDocDscTextControllerValidator
                                                              .asValidator(
                                                                context,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          0.0,
                                          12.0,
                                          0.0,
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().addToNewJobDocs(
                                              DocumentsStruct(
                                                title: _model
                                                    .tfNewDocTitleTextController
                                                    .text,
                                                description: _model
                                                    .tfNewDocDscTextController
                                                    .text,
                                                required: true,
                                              ),
                                            );
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            height: 32.0,
                                            decoration: BoxDecoration(
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            alignment: AlignmentDirectional(
                                              0.0,
                                              0.0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    16.0,
                                                    8.0,
                                                    16.0,
                                                    8.0,
                                                  ),
                                              child: Text(
                                                'Add Document',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).labelSmall.override(
                                                      font: GoogleFonts.openSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).info,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
