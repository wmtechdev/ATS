import '/flutter_saad/flutter_saad_icon_button.dart';
import '/flutter_saad/flutter_saad_theme.dart';
import '/flutter_saad/flutter_saad_util.dart';
import '/flutter_saad/flutter_saad_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candidate_profile2_model.dart';
export 'candidate_profile2_model.dart';

class CandidateProfile2Widget extends StatefulWidget {
  const CandidateProfile2Widget({super.key});

  static String routeName = 'CandidateProfile2';
  static String routePath = '/candidateProfile2';

  @override
  State<CandidateProfile2Widget> createState() =>
      _CandidateProfile2WidgetState();
}

class _CandidateProfile2WidgetState extends State<CandidateProfile2Widget>
    with TickerProviderStateMixin {
  late CandidateProfile2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandidateProfile2Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterSaadTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterSaadTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterSaadIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 46.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterSaadTheme.of(context).primaryText,
              size: 25.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Candidate Profile',
            style: FlutterSaadTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.notoSans(
                    fontWeight:
                        FlutterSaadTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterSaadTheme.of(context).headlineMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterSaadTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterSaadTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: FlutterSaadIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 46.0,
                icon: Icon(
                  Icons.more_vert,
                  color: FlutterSaadTheme.of(context).primaryText,
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.9,
                    decoration: BoxDecoration(
                      color: FlutterSaadTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor:
                                FlutterSaadTheme.of(context).primaryText,
                            unselectedLabelColor:
                                FlutterSaadTheme.of(context).secondaryText,
                            labelStyle: FlutterSaadTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterSaadTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterSaadTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                            unselectedLabelStyle: FlutterSaadTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterSaadTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterSaadTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                            indicatorColor:
                                FlutterSaadTheme.of(context).primary,
                            tabs: [
                              Tab(
                                text: 'Tab 1',
                              ),
                              Tab(
                                text: 'Tab 2',
                              ),
                              Tab(
                                text: 'Tab 3',
                              ),
                              Tab(
                                text: 'Tab 4',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [
                                () async {},
                                () async {},
                                () async {},
                                () async {}
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
                                builder: (context) => Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
