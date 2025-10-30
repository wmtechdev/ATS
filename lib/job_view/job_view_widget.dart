import '/flutter_saad/flutter_saad_icon_button.dart';
import '/flutter_saad/flutter_saad_theme.dart';
import '/flutter_saad/flutter_saad_util.dart';
import '/flutter_saad/flutter_saad_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'job_view_model.dart';
export 'job_view_model.dart';

/// in the web view create complete professional and proper job details page.
class JobViewWidget extends StatefulWidget {
  const JobViewWidget({super.key});

  static String routeName = 'JobView';
  static String routePath = '/jobView';

  @override
  State<JobViewWidget> createState() => _JobViewWidgetState();
}

class _JobViewWidgetState extends State<JobViewWidget> {
  late JobViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobViewModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 315.85,
                  decoration: BoxDecoration(
                    color: FlutterSaadTheme.of(context).primary,
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
                              FlutterSaadIconButton(
                                borderRadius: 22.0,
                                buttonSize: 44.0,
                                fillColor: Color(0x4DFFFFFF),
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: FlutterSaadTheme.of(
                                    context,
                                  ).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              FlutterSaadIconButton(
                                borderRadius: 22.0,
                                buttonSize: 44.0,
                                fillColor: Color(0x4DFFFFFF),
                                icon: Icon(
                                  Icons.bookmark_border_rounded,
                                  color: FlutterSaadTheme.of(
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
                              Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterSaadTheme.of(context).info,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      'https://images.unsplash.com/photo-1735596717044-94c05d6c49dc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjE3NDA2MzB8&ixlib=rb-4.1.0&q=80&w=1080',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: FlutterSaadTheme.of(context).info,
                                    width: 3.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  16.0,
                                  0.0,
                                  0.0,
                                ),
                                child: Text(
                                  'Senior Doctor',
                                  style: FlutterSaadTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).headlineLarge.fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).info,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterSaadTheme.of(
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
                                  style: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).titleMedium.fontStyle,
                                        ),
                                        color: Color(0xCCFFFFFF),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterSaadTheme.of(
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
                                          style: FlutterSaadTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleSmall.fontStyle,
                                                ),
                                                color: FlutterSaadTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleSmall.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                          style: FlutterSaadTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleSmall.fontStyle,
                                                ),
                                                color: FlutterSaadTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleSmall.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterSaadTheme.of(context).primaryBackground,
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
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$120,000 - \$150,000',
                                    style: FlutterSaadTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.notoSans(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FlutterSaadTheme.of(
                                              context,
                                            ).headlineSmall.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).headlineSmall.fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Annual salary',
                                    style: FlutterSaadTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.notoSans(
                                            fontWeight: FlutterSaadTheme.of(
                                              context,
                                            ).titleSmall.fontWeight,
                                            fontStyle: FlutterSaadTheme.of(
                                              context,
                                            ).titleSmall.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterSaadTheme.of(
                                            context,
                                          ).titleSmall.fontWeight,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).titleSmall.fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Posted 2 days ago',
                                    style: FlutterSaadTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.notoSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterSaadTheme.of(
                                              context,
                                            ).titleMedium.fontStyle,
                                          ),
                                          color: FlutterSaadTheme.of(
                                            context,
                                          ).primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).titleMedium.fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Expires in 28 days',
                                    style: FlutterSaadTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterSaadTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).bodyMedium.fontStyle,
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
                                      style: FlutterSaadTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterSaadTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(
                                              context,
                                            ).success,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterSaadTheme.of(
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
                                      style: FlutterSaadTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterSaadTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(
                                              context,
                                            ).primary,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterSaadTheme.of(
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
                                      style: FlutterSaadTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterSaadTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            color: Color(0xFFFF6F00),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterSaadTheme.of(
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
                            color: FlutterSaadTheme.of(context).alternate,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Job Description',
                                style: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterSaadTheme.of(
                                          context,
                                        ).headlineSmall.fontWeight,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterSaadTheme.of(
                                        context,
                                      ).headlineSmall.fontWeight,
                                      fontStyle: FlutterSaadTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                              ),
                              Text(
                                'We are seeking a highly skilled Senior Docotr to join our dynamic development team. You will be responsible for designing, developing, and maintaining scalable web applications using modern technologies. This role offers the opportunity to work on cutting-edge projects and mentor junior developers.',
                                style: FlutterSaadTheme.of(context).titleMedium
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterSaadTheme.of(
                                          context,
                                        ).titleMedium.fontWeight,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).titleMedium.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterSaadTheme.of(
                                        context,
                                      ).titleMedium.fontWeight,
                                      fontStyle: FlutterSaadTheme.of(
                                        context,
                                      ).titleMedium.fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                              Text(
                                'Key Responsibilities:',
                                style: FlutterSaadTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterSaadTheme.of(
                                          context,
                                        ).titleLarge.fontWeight,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterSaadTheme.of(
                                        context,
                                      ).titleLarge.fontWeight,
                                      fontStyle: FlutterSaadTheme.of(
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
                                            color: FlutterSaadTheme.of(
                                              context,
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Design and develop high-quality software solutions',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                            color: FlutterSaadTheme.of(
                                              context,
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Collaborate with cross-functional teams to define requirements',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                            color: FlutterSaadTheme.of(
                                              context,
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Mentor junior developers and conduct code reviews',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                            color: FlutterSaadTheme.of(
                                              context,
                                            ).primaryText,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Optimize application performance and scalability',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                            color: FlutterSaadTheme.of(context).alternate,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Requirements',
                                style: FlutterSaadTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterSaadTheme.of(
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
                                          color: FlutterSaadTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '5+ years of experience in software development',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                          color: FlutterSaadTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Proficiency in React, Node.js, and TypeScript',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                          color: FlutterSaadTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Experience with cloud platforms (AWS, Azure, GCP)',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                          color: FlutterSaadTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Strong understanding of database design and optimization',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                          color: FlutterSaadTheme.of(
                                            context,
                                          ).success,
                                          size: 16.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Bachelor\'s degree in Computer Science or related field',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                            color: FlutterSaadTheme.of(context).alternate,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Benefits & Perks',
                                style: FlutterSaadTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterSaadTheme.of(
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
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Health Insurance',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '401(k) Matching',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Unlimited PTO',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Remote Work',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Learning Budget',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        size: 20.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Gym Membership',
                                          style: FlutterSaadTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleMedium.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleMedium.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
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
                            color: FlutterSaadTheme.of(context).alternate,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Hospital',
                                style: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterSaadTheme.of(
                                          context,
                                        ).headlineSmall.fontWeight,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).headlineSmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterSaadTheme.of(
                                        context,
                                      ).headlineSmall.fontWeight,
                                      fontStyle: FlutterSaadTheme.of(
                                        context,
                                      ).headlineSmall.fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 60.0,
                                    height: 60.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1671584643576-4da86355902b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjE3NDA2MzB8&ixlib=rb-4.1.0&q=80&w=1080',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PIMS Islamabad',
                                          style: FlutterSaadTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleLarge.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).titleLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).titleLarge.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
                                                  context,
                                                ).titleLarge.fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Technology • 500-1000 employees',
                                          style: FlutterSaadTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).bodyLarge.fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                        context,
                                                      ).bodyLarge.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterSaadTheme.of(
                                                  context,
                                                ).bodyLarge.fontWeight,
                                                fontStyle: FlutterSaadTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                        ),
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
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: FlutterSaadTheme.of(
                                                      context,
                                                    ).secondaryText,
                                                    size: 16.0,
                                                  ),
                                                  Text(
                                                    '4.8',
                                                    style:
                                                        FlutterSaadTheme.of(
                                                          context,
                                                        ).bodySmall.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterSaadTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterSaadTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              FlutterSaadTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterSaadTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterSaadTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                    color: FlutterSaadTheme.of(
                                                      context,
                                                    ).secondaryText,
                                                    size: 16.0,
                                                  ),
                                                  Text(
                                                    'San Francisco, CA',
                                                    style:
                                                        FlutterSaadTheme.of(
                                                          context,
                                                        ).bodySmall.override(
                                                          font: GoogleFonts.openSans(
                                                            fontWeight:
                                                                FlutterSaadTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterSaadTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              FlutterSaadTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterSaadTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterSaadTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Text(
                                'TechCorp Solutions is a leading technology company specializing in innovative software solutions for enterprise clients. We pride ourselves on fostering a collaborative environment where creativity and technical excellence thrive.',
                                style: FlutterSaadTheme.of(context).bodyMedium
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterSaadTheme.of(
                                          context,
                                        ).bodyMedium.fontWeight,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).bodyMedium.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterSaadTheme.of(
                                        context,
                                      ).bodyMedium.fontWeight,
                                      fontStyle: FlutterSaadTheme.of(
                                        context,
                                      ).bodyMedium.fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Container(
                            width: double.infinity,
                            height: 42.71,
                            decoration: BoxDecoration(
                              color: FlutterSaadTheme.of(
                                context,
                              ).primaryBackground,
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterSaadTheme.of(context).primaryBackground,
                      border: Border.all(
                        color: FlutterSaadTheme.of(context).alternate,
                        width: 1.0,
                      ),
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
                                  iconColor: FlutterSaadTheme.of(
                                    context,
                                  ).primary,
                                  color: FlutterSaadTheme.of(
                                    context,
                                  ).primaryBackground,
                                  textStyle: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FlutterSaadTheme.of(
                                            context,
                                          ).titleMedium.fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(
                                          context,
                                        ).primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).titleMedium.fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterSaadTheme.of(context).primary,
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
                                iconColor: FlutterSaadTheme.of(context).info,
                                color: FlutterSaadTheme.of(context).primary,
                                textStyle: FlutterSaadTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterSaadTheme.of(
                                          context,
                                        ).titleMedium.fontStyle,
                                      ),
                                      color: FlutterSaadTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterSaadTheme.of(
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
