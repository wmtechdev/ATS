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
import 'trash_model.dart';
export 'trash_model.dart';

class TrashWidget extends StatefulWidget {
  const TrashWidget({super.key});

  static String routeName = 'Trash';
  static String routePath = '/trash';

  @override
  State<TrashWidget> createState() => _TrashWidgetState();
}

class _TrashWidgetState extends State<TrashWidget> {
  late TrashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrashModel());

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
        backgroundColor: FlutterLibTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterLibTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterLibTheme.of(context).headlineMedium.override(
              font: GoogleFonts.notoSans(
                fontWeight: FlutterLibTheme.of(
                  context,
                ).headlineMedium.fontWeight,
                fontStyle: FlutterLibTheme.of(context).headlineMedium.fontStyle,
              ),
              color: Colors.white,
              fontSize: 22.0,
              letterSpacing: 0.0,
              fontWeight: FlutterLibTheme.of(context).headlineMedium.fontWeight,
              fontStyle: FlutterLibTheme.of(context).headlineMedium.fontStyle,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 211.5,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Title',
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
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 225.4,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Speciality',
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
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 159.23,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Status',
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
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 159.2,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Created',
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
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 888.0,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 211.5,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'MBBS Gynocologist',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 225.4,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Gynocologist',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 159.33,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0,
                                      0.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: Icon(
                                      Icons.check_circle_outlined,
                                      color: Color(0xFF2AA868),
                                      size: 24.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        'Closed',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 159.3,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        '20 Oct 2025',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 211.5,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'MBBS',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 225.4,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Child Specialist',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 159.33,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0,
                                      0.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.ban,
                                      color: FlutterLibTheme.of(context).error,
                                      size: 20.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        'Expired',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 159.3,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        '18 Oct 2025',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 211.5,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Office Boy',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 225.4,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Hard Working',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 159.33,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0,
                                      0.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.hourglassHalf,
                                      color: Color(0xFFA25F41),
                                      size: 20.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        'Available',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 159.3,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        '10 Oct 2025',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 211.5,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Nurse',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 225.4,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Nursing Course',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 159.33,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0,
                                      0.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.ban,
                                      color: FlutterLibTheme.of(context).error,
                                      size: 20.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        'Expired',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 159.3,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        '05 Oct 2025',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 211.5,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Receptionist',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 225.4,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    9.0,
                                    6.0,
                                    9.0,
                                    6.0,
                                  ),
                                  child: Text(
                                    'Good English',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 159.33,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0,
                                      0.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: Icon(
                                      Icons.check_circle_outlined,
                                      color: Color(0xFF2AA868),
                                      size: 24.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        'Closed',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 159.3,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0,
                                        6.0,
                                        9.0,
                                        6.0,
                                      ),
                                      child: Text(
                                        '28 Sep 2025',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterLibTheme.of(context).secondaryBackground,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterLibTheme.of(context).accent1,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'https://images.unsplash.com/photo-1641994246193-844161d8d855?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjE1NjM2MDR8&ixlib=rb-4.1.0&q=80&w=1080',
                                      ).image,
                                    ),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jamal Johnson',
                                        style: FlutterLibTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineMedium.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'Senior Doctor',
                                        style: FlutterLibTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).secondaryText,
                                            size: 16.0,
                                          ),
                                          Text(
                                            'San Francisco, CA',
                                            style: FlutterLibTheme.of(context)
                                                .bodyMedium
                                                .override(
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
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterLibTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Contact Information',
                                      style: FlutterLibTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleMedium.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).titleMedium.fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
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
                                            style: FlutterLibTheme.of(context)
                                                .bodyMedium
                                                .override(
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
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
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
                                            style: FlutterLibTheme.of(context)
                                                .bodyMedium
                                                .override(
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
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.language,
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          size: 20.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'linkedin.com/info/Jamaljohnson',
                                            style: FlutterLibTheme.of(context)
                                                .bodyMedium
                                                .override(
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
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterLibTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Professional Summary',
                                  style: FlutterLibTheme.of(context).titleMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleMedium.fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleMedium.fontStyle,
                                      ),
                                ),
                                Text(
                                  'Experienced MBBS Doctor with 8+ years in Bio Chemistory. Specialized heart specialist, and FPPS and other studies.',
                                  style: FlutterLibTheme.of(context).bodyMedium
                                      .override(
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
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterLibTheme.of(context).alternate,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Experience',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        '8+ Years',
                                        style: FlutterLibTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Education',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'MBBS',
                                        style: FlutterLibTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Specialization',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'Cardiologist',
                                        style: FlutterLibTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Status',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).success,
                                          borderRadius: BorderRadius.circular(
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
                                            style: FlutterLibTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).labelSmall.fontStyle,
                                                  ),
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).info,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelSmall.fontStyle,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 56.0,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '#',
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
                          ),
                        ),
                      ),
                      Container(
                        width: 211.5,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Name',
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
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 289.4,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Email',
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
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 225.4,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Speciality',
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
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 159.23,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: FlutterLibTheme.of(
                            context,
                          ).secondaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: FlutterLibTheme.of(context).primaryText,
                            width: 1.4,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              9.0,
                              6.0,
                              9.0,
                              6.0,
                            ),
                            child: Text(
                              'Status',
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
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 950.0,
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(CandidateProfileWidget.routeName);
                      },
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 56.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '1',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 211.5,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'SaadUllah Khan',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 289.37,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'thesaadullahKhan@gmail.com',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 225.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Gynocologist',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 159.33,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0,
                                        0.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: Icon(
                                        Icons.check_circle_outlined,
                                        color: Color(0xFF2AA868),
                                        size: 24.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(
                                        -1.0,
                                        0.0,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          9.0,
                                          6.0,
                                          9.0,
                                          6.0,
                                        ),
                                        child: Text(
                                          'Approved',
                                          style: FlutterLibTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyLarge.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 56.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '2',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 211.5,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Komail Raza',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 289.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'komailraa@gmail.com',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 225.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Child Specialist',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 159.3,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0,
                                        0.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: FaIcon(
                                        FontAwesomeIcons.ban,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).error,
                                        size: 20.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(
                                        -1.0,
                                        0.0,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          9.0,
                                          6.0,
                                          9.0,
                                          6.0,
                                        ),
                                        child: Text(
                                          'Denied',
                                          style: FlutterLibTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyLarge.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 56.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '3',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 211.5,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Charlie Chaplin',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 289.37,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'charlielegal88@gmail.com',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 225.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Gynocologist',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 159.33,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0,
                                        0.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: FaIcon(
                                        FontAwesomeIcons.hourglassHalf,
                                        color: Color(0xFFA25F41),
                                        size: 20.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(
                                        -1.0,
                                        0.0,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          9.0,
                                          6.0,
                                          9.0,
                                          6.0,
                                        ),
                                        child: Text(
                                          'Pending',
                                          style: FlutterLibTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyLarge.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 56.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '4',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 211.5,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Dani Barbar',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 289.37,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'dani0222@gmail.com',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 225.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Gynocologist',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 159.3,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0,
                                        0.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: FaIcon(
                                        FontAwesomeIcons.ban,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).error,
                                        size: 20.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(
                                        -1.0,
                                        0.0,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          9.0,
                                          6.0,
                                          9.0,
                                          6.0,
                                        ),
                                        child: Text(
                                          'Denied',
                                          style: FlutterLibTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyLarge.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 56.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '5',
                                    style: FlutterLibTheme.of(context).bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontWeight,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).bodyLarge.fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 211.5,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Max Oman',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 289.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'maxoman32@gmail.com',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 225.4,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      9.0,
                                      6.0,
                                      9.0,
                                      6.0,
                                    ),
                                    child: Text(
                                      'Gynocologist',
                                      style: FlutterLibTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodyLarge.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 159.33,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).secondaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).secondaryText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0,
                                        0.0,
                                        0.0,
                                        0.0,
                                      ),
                                      child: Icon(
                                        Icons.check_circle_outlined,
                                        color: Color(0xFF2AA868),
                                        size: 24.0,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(
                                        -1.0,
                                        0.0,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          9.0,
                                          6.0,
                                          9.0,
                                          6.0,
                                        ),
                                        child: Text(
                                          'Approved',
                                          style: FlutterLibTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyLarge.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).bodyLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterLibTheme.of(context).secondaryBackground,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                22.0,
                                0.0,
                                0.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterLibTheme.of(
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
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            width: 3.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Jamal Johnson',
                                              style: FlutterLibTheme.of(context)
                                                  .headlineMedium
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
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
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).secondaryText,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'San Francisco, CA',
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
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).secondaryText,
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
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      100.0,
                                      0.0,
                                    ),
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
                                              'Contact Information',
                                              style: FlutterLibTheme.of(context)
                                                  .titleMedium
                                                  .override(
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
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).titleMedium.fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
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
                                              ].divide(SizedBox(width: 12.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
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
                                              ].divide(SizedBox(width: 12.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.language,
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).primary,
                                                  size: 20.0,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'linkedin.com/info/Jamaljohnson',
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
                                              ].divide(SizedBox(width: 12.0)),
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
                              color: FlutterLibTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Professional Summary',
                                  style: FlutterLibTheme.of(context).titleMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleMedium.fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleMedium.fontStyle,
                                      ),
                                ),
                                Text(
                                  'Experienced MBBS Doctor with 8+ years in Bio Chemistory. Specialized heart specialist, and FPPS and other studies.',
                                  style: FlutterLibTheme.of(context).bodyMedium
                                      .override(
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
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterLibTheme.of(context).alternate,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Experience',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        '8+ Years',
                                        style: FlutterLibTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Education',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'MBBS',
                                        style: FlutterLibTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Specialization',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'Cardiologist',
                                        style: FlutterLibTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Status',
                                        style: FlutterLibTheme.of(context)
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
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
                                            ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).success,
                                          borderRadius: BorderRadius.circular(
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
                                            style: FlutterLibTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).labelSmall.fontStyle,
                                                  ),
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).info,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelSmall.fontStyle,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
