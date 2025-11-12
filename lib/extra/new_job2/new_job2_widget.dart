import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_job2_model.dart';
export 'new_job2_model.dart';

/// create a proper professional web page forcreating a new job position,
/// it should be much detailed job posting page.
///
/// and also have check list for required documents at the end
class NewJob2Widget extends StatefulWidget {
  const NewJob2Widget({super.key});

  static String routeName = 'newJob2';
  static String routePath = '/newJob2';

  @override
  State<NewJob2Widget> createState() => _NewJob2WidgetState();
}

class _NewJob2WidgetState extends State<NewJob2Widget> {
  late NewJob2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewJob2Model());

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
          backgroundColor: FlutterLibTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterLibIconButton(
            borderColor: Colors.transparent,
            borderRadius: 24.0,
            borderWidth: 1.0,
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterLibTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Job Posting',
            style: FlutterLibTheme.of(context).titleLarge.override(
              font: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600,
                fontStyle: FlutterLibTheme.of(context).titleLarge.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              fontStyle: FlutterLibTheme.of(context).titleLarge.fontStyle,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FlutterLibIconButton(
                borderColor: Colors.transparent,
                borderRadius: 24.0,
                borderWidth: 1.0,
                buttonSize: 48.0,
                icon: Icon(
                  Icons.share,
                  color: FlutterLibTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterLibTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterLibTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Senior Software Engineer',
                                        style: FlutterLibTheme.of(context)
                                            .displaySmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).displaySmall.fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).displaySmall.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'TechCorp Solutions',
                                        style: FlutterLibTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).titleMedium.fontStyle,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
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
                                                      color: FlutterLibTheme.of(
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
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.work,
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryText,
                                                size: 16.0,
                                              ),
                                              Text(
                                                'Full-time',
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
                                                      color: FlutterLibTheme.of(
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
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.schedule,
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryText,
                                                size: 16.0,
                                              ),
                                              Text(
                                                'Remote/Hybrid',
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
                                                      color: FlutterLibTheme.of(
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
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterLibTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1641945511908-4a2ef922b2a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjIzMzQ0Mzh8&ixlib=rb-4.1.0&q=80&w=1080',
                                        width: 80.0,
                                        height: 60.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(context).alternate,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Job Overview',
                                  style: FlutterLibTheme.of(context).titleLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleLarge.fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                ),
                                Text(
                                  'We are seeking a highly skilled Senior Software Engineer to join our dynamic development team. You will be responsible for designing, developing, and maintaining scalable web applications while mentoring junior developers and contributing to architectural decisions.',
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
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Key Responsibilities',
                                  style: FlutterLibTheme.of(context).titleLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleLarge.fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                8.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Container(
                                            width: 6.0,
                                            height: 6.0,
                                            decoration: BoxDecoration(
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Design and develop high-quality, scalable software solutions',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                8.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Container(
                                            width: 6.0,
                                            height: 6.0,
                                            decoration: BoxDecoration(
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Collaborate with cross-functional teams to define and implement new features',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                8.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Container(
                                            width: 6.0,
                                            height: 6.0,
                                            decoration: BoxDecoration(
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Mentor junior developers and conduct code reviews',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                8.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Container(
                                            width: 6.0,
                                            height: 6.0,
                                            decoration: BoxDecoration(
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Participate in architectural decisions and technical planning',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                8.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Container(
                                            width: 6.0,
                                            height: 6.0,
                                            decoration: BoxDecoration(
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primary,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Optimize application performance and ensure code quality',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Required Qualifications',
                                  style: FlutterLibTheme.of(context).titleLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleLarge.fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.check_circle,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).success,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Bachelor\'s degree in Computer Science or related field',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.check_circle,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).success,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '5+ years of experience in software development',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.check_circle,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).success,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Proficiency in JavaScript, Python, or Java',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.check_circle,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).success,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Experience with React, Node.js, and cloud platforms (AWS/Azure)',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.check_circle,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).success,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Strong understanding of database design and SQL',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Preferred Qualifications',
                                  style: FlutterLibTheme.of(context).titleLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleLarge.fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.star,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Master\'s degree in Computer Science or related field',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.star,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Experience with microservices architecture',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.star,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Knowledge of DevOps practices and CI/CD pipelines',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                2.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Icon(
                                            Icons.star,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Previous leadership or mentoring experience',
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
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterLibTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterLibTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Compensation & Benefits',
                              style: FlutterLibTheme.of(context).titleLarge
                                  .override(
                                    font: GoogleFonts.notoSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).titleLarge.fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleLarge.fontStyle,
                                  ),
                            ),
                            GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 16.0,
                                    mainAxisSpacing: 16.0,
                                    childAspectRatio: 0.7,
                                  ),
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 24.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Salary Range',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                Text(
                                                  '\$120,000 - \$160,000',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            ).primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.health_and_safety,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 24.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Health Insurance',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                Text(
                                                  'Full Coverage',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            ).primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.beach_access,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 24.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Paid Time Off',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                Text(
                                                  '25 Days/Year',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            ).primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterLibTheme.of(
                                        context,
                                      ).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.savings,
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            size: 24.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '401(k) Match',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        font: GoogleFonts.notoSans(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                Text(
                                                  'Up to 6%',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            ).primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterLibTheme.of(context).accent2,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterLibTheme.of(context).primary,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.assignment,
                                  color: FlutterLibTheme.of(context).primary,
                                  size: 32.0,
                                ),
                                Text(
                                  'Required Documents Checklist',
                                  style: FlutterLibTheme.of(context).titleLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).titleLarge.fontStyle,
                                        ),
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Text(
                              'Please ensure you have the following documents ready before submitting your application:',
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
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).primaryText,
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CheckboxListTile(
                                  value: _model.checkboxListTileValue1 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.checkboxListTileValue1 =
                                          newValue!,
                                    );
                                  },
                                  title: Text(
                                    'Updated Resume/CV (PDF format preferred)',
                                    style: FlutterLibTheme.of(context)
                                        .bodyMedium
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
                                        ),
                                  ),
                                  activeColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  checkColor: FlutterLibTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                CheckboxListTile(
                                  value: _model.checkboxListTileValue2 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.checkboxListTileValue2 =
                                          newValue!,
                                    );
                                  },
                                  title: Text(
                                    'Cover Letter addressing your relevant experience',
                                    style: FlutterLibTheme.of(context)
                                        .bodyMedium
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
                                        ),
                                  ),
                                  activeColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  checkColor: FlutterLibTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                CheckboxListTile(
                                  value: _model.checkboxListTileValue3 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.checkboxListTileValue3 =
                                          newValue!,
                                    );
                                  },
                                  title: Text(
                                    'Portfolio or GitHub profile showcasing your work',
                                    style: FlutterLibTheme.of(context)
                                        .bodyMedium
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
                                        ),
                                  ),
                                  activeColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  checkColor: FlutterLibTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                CheckboxListTile(
                                  value: _model.checkboxListTileValue4 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.checkboxListTileValue4 =
                                          newValue!,
                                    );
                                  },
                                  title: Text(
                                    'Professional References (minimum 3)',
                                    style: FlutterLibTheme.of(context)
                                        .bodyMedium
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
                                        ),
                                  ),
                                  activeColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  checkColor: FlutterLibTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                CheckboxListTile(
                                  value: _model.checkboxListTileValue5 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.checkboxListTileValue5 =
                                          newValue!,
                                    );
                                  },
                                  title: Text(
                                    'Educational Transcripts or Certificates',
                                    style: FlutterLibTheme.of(context)
                                        .bodyMedium
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
                                        ),
                                  ),
                                  activeColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  checkColor: FlutterLibTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                CheckboxListTile(
                                  value: _model.checkboxListTileValue6 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.checkboxListTileValue6 =
                                          newValue!,
                                    );
                                  },
                                  title: Text(
                                    'Work Authorization Documentation',
                                    style: FlutterLibTheme.of(context)
                                        .bodyMedium
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
                                        ),
                                  ),
                                  activeColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  checkColor: FlutterLibTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterLibTheme.of(context).accent1,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.info,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Application Deadline',
                                              style: FlutterLibTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.notoSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterLibTheme.of(
                                                                context,
                                                              )
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).titleSmall.fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              'March 15, 2024 - Applications will be reviewed on a rolling basis',
                                              style: FlutterLibTheme.of(context)
                                                  .bodyMedium
                                                  .override(
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
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primaryText,
                                                    letterSpacing: 0.0,
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
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Save for Later',
                          options: FFButtonOptions(
                            height: 56.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              32.0,
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
                            color: FlutterLibTheme.of(
                              context,
                            ).primaryBackground,
                            textStyle: FlutterLibTheme.of(context).titleMedium
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontStyle,
                                  ),
                                  color: FlutterLibTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontWeight,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontStyle,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterLibTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Apply Now',
                          options: FFButtonOptions(
                            height: 56.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              32.0,
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
                            textStyle: FlutterLibTheme.of(context).titleMedium
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontStyle,
                                  ),
                                  color: FlutterLibTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleMedium.fontStyle,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ].divide(SizedBox(height: 24.0)).addToStart(SizedBox(height: 32.0)).addToEnd(SizedBox(height: 32.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
