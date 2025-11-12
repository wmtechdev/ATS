import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'job_view_copy_model.dart';
export 'job_view_copy_model.dart';

/// in the web view create complete professional and proper job details page.
class JobViewCopyWidget extends StatefulWidget {
  const JobViewCopyWidget({super.key});

  static String routeName = 'JobViewCopy';
  static String routePath = '/jobViewCopy';

  @override
  State<JobViewCopyWidget> createState() => _JobViewCopyWidgetState();
}

class _JobViewCopyWidgetState extends State<JobViewCopyWidget> {
  late JobViewCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobViewCopyModel());

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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 315.85,
                  decoration: BoxDecoration(
                    color: FlutterLibTheme.of(context).primary,
                    image: DecorationImage(
                      fit: BoxFit.cover,
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
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Icons.edit_square,
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  16.0,
                                  0.0,
                                  0.0,
                                ),
                                child: Text(
                                  'Senior Doctor',
                                  style: FlutterLibTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).headlineLarge.fontStyle,
                                        ),
                                        color: FlutterLibTheme.of(context).info,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineLarge.fontStyle,
                                      ),
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
                                  'PIMS Islamabad',
                                  style: FlutterLibTheme.of(context).titleMedium
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  8.0,
                                  0.0,
                                  0.0,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.location_on_rounded,
                                          color: Color(0xCCFFFFFF),
                                          size: 16.0,
                                        ),
                                        Text(
                                          'San Francisco, CA',
                                          style: FlutterLibTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleSmall.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.schedule_rounded,
                                          color: Color(0xCCFFFFFF),
                                          size: 16.0,
                                        ),
                                        Text(
                                          'Full-time',
                                          style: FlutterLibTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleSmall.fontStyle,
                                                ),
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    222.0,
                    24.0,
                    222.0,
                    0.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterLibTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$120,000 - \$150,000',
                                    style: FlutterLibTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.notoSans(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).headlineSmall.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterLibTheme.of(
                                            context,
                                          ).headlineSmall.fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Annual salary',
                                    style: FlutterLibTheme.of(context)
                                        .titleSmall
                                        .override(
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
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  6.0,
                                  12.0,
                                  6.0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0x1A4CAF50),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Remote',
                                      style: FlutterLibTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).success,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  6.0,
                                  12.0,
                                  6.0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0x1A2196F3),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Senior Level',
                                      style: FlutterLibTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            color: FlutterLibTheme.of(
                                              context,
                                            ).primary,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0,
                                  6.0,
                                  12.0,
                                  6.0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0x1AFF9800),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'MBBS',
                                      style: FlutterLibTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            color: Color(0xFFFF6F00),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
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
                                'Job Description',
                                style: FlutterLibTheme.of(context).headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                              ),
                              Text(
                                'We are seeking a highly skilled Senior Docotr to join our dynamic development team. You will be responsible for designing, developing, and maintaining scalable web applications using modern technologies. This role offers the opportunity to work on cutting-edge projects and mentor junior developers.',
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
                                      lineHeight: 1.5,
                                    ),
                              ),
                              Text(
                                'Key Responsibilities:',
                                style: FlutterLibTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).titleLarge.fontWeight,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Design and develop high-quality software solutions',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Collaborate with cross-functional teams to define requirements',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Mentor junior developers and conduct code reviews',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Optimize application performance and scalability',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
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
                                'Requirements',
                                style: FlutterLibTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          2.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Icon(
                                          Icons.check_circle_rounded,
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          2.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Icon(
                                          Icons.check_circle_rounded,
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Proficiency in React, Node.js, and TypeScript',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          2.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Icon(
                                          Icons.check_circle_rounded,
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Experience with cloud platforms (AWS, Azure, GCP)',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          2.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Icon(
                                          Icons.check_circle_rounded,
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Strong understanding of database design and optimization',
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          2.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Icon(
                                          Icons.check_circle_rounded,
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleMedium.fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
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
                                'Benefits & Perks',
                                style: FlutterLibTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
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
                                      crossAxisSpacing: 12.0,
                                      mainAxisSpacing: 12.0,
                                      childAspectRatio: 12.0,
                                    ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.health_and_safety_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Health Insurance',
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
                                    ].divide(SizedBox(width: 6.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.savings_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '401(k) Matching',
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.beach_access_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Unlimited PTO',
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.home_work_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Remote Work',
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.school_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Learning Budget',
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.fitness_center_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Gym Membership',
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
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterLibTheme.of(context).alternate,
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    222.0,
                    22.0,
                    222.0,
                    33.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterLibTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
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
                                text: 'Save Job',
                                icon: Icon(
                                  Icons.bookmark_border_rounded,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  height: 56.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0,
                                    0.0,
                                    24.0,
                                    0.0,
                                  ),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    0.0,
                                    0.0,
                                    0.0,
                                  ),
                                  iconColor: FlutterLibTheme.of(
                                    context,
                                  ).primary,
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).primaryBackground,
                                  textStyle: FlutterLibTheme.of(context)
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
                              text: 'Applications',
                              icon: Icon(Icons.send_rounded, size: 20.0),
                              options: FFButtonOptions(
                                height: 56.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0,
                                  0.0,
                                  24.0,
                                  0.0,
                                ),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                ),
                                iconColor: FlutterLibTheme.of(context).info,
                                color: FlutterLibTheme.of(context).primary,
                                textStyle: FlutterLibTheme.of(context)
                                    .titleMedium
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
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
