import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_lib/flutter_lib_count_controller.dart';
import '/flutter_lib/flutter_lib_drop_down.dart';
import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import '/flutter_lib/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_job_model.dart';
export 'new_job_model.dart';

/// create a proper professional web page forcreating a new job position,
/// it should be much detailed and have check list for different categories of
/// requirements.
class NewJobWidget extends StatefulWidget {
  const NewJobWidget({super.key});

  static String routeName = 'NewJob';
  static String routePath = '/newJob';

  @override
  State<NewJobWidget> createState() => _NewJobWidgetState();
}

class _NewJobWidgetState extends State<NewJobWidget>
    with TickerProviderStateMixin {
  late NewJobModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewJobModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.tfTitleTextController ??= TextEditingController();
    _model.tfTitleFocusNode ??= FocusNode();

    _model.tfSpecializationTextController ??= TextEditingController();
    _model.tfSpecializationFocusNode ??= FocusNode();

    _model.tfAddressTextController ??= TextEditingController();
    _model.tfAddressFocusNode ??= FocusNode();

    _model.tfJobDescriptionTextController ??= TextEditingController();
    _model.tfJobDescriptionFocusNode ??= FocusNode();

    _model.tfQualificationTextController ??= TextEditingController();
    _model.tfQualificationFocusNode ??= FocusNode();

    _model.tfSkillsTextController ??= TextEditingController();
    _model.tfSkillsFocusNode ??= FocusNode();

    _model.tfSalaryRangeTextController ??= TextEditingController();
    _model.tfSalaryRangeFocusNode ??= FocusNode();

    _model.tfOtherBenifitsTextController ??= TextEditingController();
    _model.tfOtherBenifitsFocusNode ??= FocusNode();

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
        backgroundColor: FlutterLibTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterLibTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterLibIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.0,
                child: Text(
                  'Create New Job',
                  style: FlutterLibTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.notoSans(
                      fontWeight: FlutterLibTheme.of(
                        context,
                      ).headlineMedium.fontWeight,
                      fontStyle: FlutterLibTheme.of(
                        context,
                      ).headlineMedium.fontStyle,
                    ),
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FlutterLibTheme.of(
                      context,
                    ).headlineMedium.fontWeight,
                    fontStyle: FlutterLibTheme.of(
                      context,
                    ).headlineMedium.fontStyle,
                  ),
                ),
              ),
              Text(
                'Create New Job',
                style: FlutterLibTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.notoSans(
                    fontWeight: FlutterLibTheme.of(
                      context,
                    ).headlineMedium.fontWeight,
                    fontStyle: FlutterLibTheme.of(
                      context,
                    ).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FlutterLibTheme.of(
                    context,
                  ).headlineMedium.fontWeight,
                  fontStyle: FlutterLibTheme.of(
                    context,
                  ).headlineMedium.fontStyle,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await JobRecord.collection.doc().set({
                    ...createJobRecordData(
                      title: _model.tfTitleTextController.text,
                      specialization:
                          _model.tfSpecializationTextController.text,
                      employmentType: _model.ddEmpTypeValue,
                      experienceYears: _model.ccYearsExpValue,
                      locationType: _model.ddLocTypeValue,
                      jobDescription:
                          _model.tfJobDescriptionTextController.text,
                      qualifications: _model.tfQualificationTextController.text,
                      skills: _model.tfSkillsTextController.text,
                      salaryRange: _model.tfSalaryRangeTextController.text,
                      healthInsurance: _model.cbHealthInsuranceValue,
                      otherBenefits: _model.tfOtherBenifitsTextController.text,
                      agent: currentUserReference,
                      dtime: getCurrentTimestamp,
                      address: _model.tfAddressTextController.text,
                      retirementPlan: _model.cbRetirementPlanValue,
                      agentName: _model.ddAgentValue,
                    ),
                    ...mapToFirestore({
                      'documents': getDocumentsListFirestoreData(
                        FFAppState().NewJobDocs
                            .where((e) => e.required == true)
                            .toList(),
                      ),
                    }),
                  });
                  context.safePop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'New Job Published!',
                        style: TextStyle(
                          color: FlutterLibTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterLibTheme.of(context).secondary,
                    ),
                  );
                },
                text: 'Publish New Position',
                icon: Icon(Icons.north_east_sharp, size: 24.0),
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                  ),
                  color: FlutterLibTheme.of(context).secondaryBackground,
                  textStyle: FlutterLibTheme.of(context).titleSmall.override(
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
                    fontStyle: FlutterLibTheme.of(context).titleSmall.fontStyle,
                  ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              height: MediaQuery.sizeOf(context).height * 0.9,
              decoration: BoxDecoration(
                color: FlutterLibTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
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
                        Tab(text: 'Job Description'),
                        Tab(text: 'Required Documents'),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            24.0,
                            0.0,
                            24.0,
                            0.0,
                          ),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12.0,
                                                0.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Text(
                                            'Basic Information',
                                            style: FlutterLibTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.notoSans(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                              context,
                                                            )
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).headlineSmall.fontStyle,
                                                ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Job Title *',
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
                                                TextFormField(
                                                  controller: _model
                                                      .tfTitleTextController,
                                                  focusNode:
                                                      _model.tfTitleFocusNode,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'e.g. Senior Doctor',
                                                    hintStyle:
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
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).alternate,
                                                        width: 1.0,
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
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
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
                                                    filled: true,
                                                    fillColor:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).primaryBackground,
                                                  ),
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
                                                  validator: _model
                                                      .tfTitleTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Secialization*',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).bodyMedium.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
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
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .tfSpecializationTextController,
                                                        focusNode: _model
                                                            .tfSpecializationFocusNode,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText: 'e.g. MBBS',
                                                          hintStyle: FlutterLibTheme.of(context).titleSmall.override(
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
                                                          enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).alternate,
                                                              width: 1.0,
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
                                                          contentPadding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                12.0,
                                                                0.0,
                                                                0.0,
                                                                0.0,
                                                              ),
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
                                                        validator: _model
                                                            .tfSpecializationTextControllerValidator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                      ),
                                                    ].divide(SizedBox(height: 8.0)),
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
                                                        'Employment Type *',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).bodyMedium.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
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
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      FlutterLibDropDown<
                                                        String
                                                      >(
                                                        controller:
                                                            _model.ddEmpTypeValueController ??=
                                                                FormFieldController<
                                                                  String
                                                                >(null),
                                                        options: [
                                                          'Full-time',
                                                          'Part-time',
                                                          'Contract',
                                                          'Internship',
                                                        ],
                                                        onChanged: (val) =>
                                                            safeSetState(
                                                              () =>
                                                                  _model.ddEmpTypeValue =
                                                                      val,
                                                            ),
                                                        height: 48.0,
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
                                                        hintText: 'Select Type',
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
                                                    ].divide(SizedBox(height: 8.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Experience in Years *',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).bodyMedium.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
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
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                  6.0,
                                                                ),
                                                            child: Container(
                                                              width: 220.0,
                                                              height: 48.0,
                                                              decoration: BoxDecoration(
                                                                color: FlutterLibTheme.of(
                                                                  context,
                                                                ).primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12.0,
                                                                    ),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: FlutterLibCountController(
                                                                decrementIconBuilder: (enabled) => Icon(
                                                                  Icons
                                                                      .remove_rounded,
                                                                  color: enabled
                                                                      ? FlutterLibTheme.of(
                                                                          context,
                                                                        ).secondaryText
                                                                      : FlutterLibTheme.of(
                                                                          context,
                                                                        ).alternate,
                                                                  size: 28.0,
                                                                ),
                                                                incrementIconBuilder: (enabled) => Icon(
                                                                  Icons
                                                                      .add_rounded,
                                                                  color: enabled
                                                                      ? FlutterLibTheme.of(
                                                                          context,
                                                                        ).primary
                                                                      : FlutterLibTheme.of(
                                                                          context,
                                                                        ).alternate,
                                                                  size: 24.0,
                                                                ),
                                                                countBuilder: (count) => Text(
                                                                  count
                                                                      .toString(),
                                                                  style: FlutterLibTheme.of(context).titleLarge.override(
                                                                    font: GoogleFonts.notoSans(
                                                                      fontWeight: FlutterLibTheme.of(
                                                                        context,
                                                                      ).titleLarge.fontWeight,
                                                                      fontStyle: FlutterLibTheme.of(
                                                                        context,
                                                                      ).titleLarge.fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).titleLarge.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).titleLarge.fontStyle,
                                                                  ),
                                                                ),
                                                                count:
                                                                    _model.ccYearsExpValue ??=
                                                                        0,
                                                                updateCount:
                                                                    (
                                                                      count,
                                                                    ) => safeSetState(
                                                                      () => _model.ccYearsExpValue =
                                                                          count,
                                                                    ),
                                                                stepSize: 1,
                                                                minimum: 0,
                                                                maximum: 100,
                                                                contentPadding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(SizedBox(height: 8.0)),
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
                                                        'Location Type *',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).bodyMedium.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
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
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      FlutterLibDropDown<
                                                        String
                                                      >(
                                                        controller:
                                                            _model.ddLocTypeValueController ??=
                                                                FormFieldController<
                                                                  String
                                                                >(null),
                                                        options: [
                                                          'On-site',
                                                          'Remote',
                                                          'Hybrid',
                                                        ],
                                                        onChanged: (val) =>
                                                            safeSetState(
                                                              () =>
                                                                  _model.ddLocTypeValue =
                                                                      val,
                                                            ),
                                                        height: 48.0,
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
                                                            'Select Location',
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
                                                    ].divide(SizedBox(height: 8.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Address *',
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
                                                TextFormField(
                                                  controller: _model
                                                      .tfAddressTextController,
                                                  focusNode:
                                                      _model.tfAddressFocusNode,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'e.g.  Washington DC',
                                                    hintStyle:
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
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).alternate,
                                                        width: 1.0,
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
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
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
                                                    filled: true,
                                                    fillColor:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).primaryBackground,
                                                  ),
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
                                                  validator: _model
                                                      .tfAddressTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Job Description *',
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
                                                TextFormField(
                                                  controller: _model
                                                      .tfJobDescriptionTextController,
                                                  focusNode: _model
                                                      .tfJobDescriptionFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Provide a detailed description of the role, responsibilities, and expectations...',
                                                    hintStyle:
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
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).alternate,
                                                        width: 1.0,
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
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
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
                                                    filled: true,
                                                    fillColor:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).primaryBackground,
                                                  ),
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
                                                  maxLines: 300,
                                                  minLines: 4,
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  validator: _model
                                                      .tfJobDescriptionTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                                Container(
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Required Qualifications',
                                          style: FlutterLibTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).headlineSmall.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                        ),
                                        TextFormField(
                                          controller: _model
                                              .tfQualificationTextController,
                                          focusNode:
                                              _model.tfQualificationFocusNode,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                'List of  Required Secialization, or qualifications',
                                            hintStyle:
                                                FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.override(
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
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleSmall.fontStyle,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                            filled: true,
                                            fillColor: FlutterLibTheme.of(
                                              context,
                                            ).secondaryBackground,
                                          ),
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                          maxLines: 200,
                                          minLines: 4,
                                          keyboardType: TextInputType.multiline,
                                          validator: _model
                                              .tfQualificationTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                                Container(
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Soft Skills & Competencies',
                                          style: FlutterLibTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).headlineSmall.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.tfSkillsTextController,
                                          focusNode: _model.tfSkillsFocusNode,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'List of required skills',
                                            hintStyle:
                                                FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.override(
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
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).titleSmall.fontStyle,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                            filled: true,
                                            fillColor: FlutterLibTheme.of(
                                              context,
                                            ).secondaryBackground,
                                          ),
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
                                                letterSpacing: 0.0,
                                                fontWeight: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontWeight,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).titleSmall.fontStyle,
                                              ),
                                          maxLines: 100,
                                          minLines: 4,
                                          keyboardType: TextInputType.multiline,
                                          validator: _model
                                              .tfSkillsTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                                Container(
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Compensation & Benefits',
                                          style: FlutterLibTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).headlineSmall.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Salary Range',
                                                        style:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).bodyMedium.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
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
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .tfSalaryRangeTextController,
                                                        focusNode: _model
                                                            .tfSalaryRangeFocusNode,
                                                        obscureText: false,
                                                        decoration: InputDecoration(
                                                          hintText:
                                                              'e.g. \$80,000 - \$120,000',
                                                          hintStyle: FlutterLibTheme.of(context).titleSmall.override(
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
                                                          enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).alternate,
                                                              width: 1.0,
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
                                                          contentPadding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                12.0,
                                                                0.0,
                                                                0.0,
                                                                0.0,
                                                              ),
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
                                                        validator: _model
                                                            .tfSalaryRangeTextControllerValidator
                                                            .asValidator(
                                                              context,
                                                            ),
                                                      ),
                                                    ].divide(SizedBox(height: 8.0)),
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
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Currency',
                                                          style: FlutterLibTheme.of(context).bodyMedium.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
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
                                                        FlutterLibDropDown<
                                                          String
                                                        >(
                                                          controller:
                                                              _model.dropDownValueController ??=
                                                                  FormFieldController<
                                                                    String
                                                                  >(null),
                                                          options: [
                                                            'USD',
                                                            'EUR',
                                                            'GBP',
                                                            'CAD',
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(
                                                                () =>
                                                                    _model.dropDownValue =
                                                                        val,
                                                              ),
                                                          height: 48.0,
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
                                                              'Select Currency',
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
                                                      ].divide(SizedBox(height: 8.0)),
                                                    ),
                                                  ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                            Text(
                                              'Benefits Package',
                                              style: FlutterLibTheme.of(context)
                                                  .bodyLarge
                                                  .override(
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
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontWeight,
                                                    fontStyle:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).bodyLarge.fontStyle,
                                                  ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CheckboxListTile(
                                                  value:
                                                      _model.cbHealthInsuranceValue ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(
                                                      () =>
                                                          _model.cbHealthInsuranceValue =
                                                              newValue!,
                                                    );
                                                  },
                                                  title: Text(
                                                    'Health Insurance (Medical, Dental, Vision)',
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
                                                  activeColor:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).primary,
                                                  checkColor:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).primaryBackground,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                  contentPadding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        0.0,
                                                        8.0,
                                                        0.0,
                                                        8.0,
                                                      ),
                                                ),
                                                CheckboxListTile(
                                                  value:
                                                      _model.cbRetirementPlanValue ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    safeSetState(
                                                      () =>
                                                          _model.cbRetirementPlanValue =
                                                              newValue!,
                                                    );
                                                  },
                                                  title: Text(
                                                    '401(k) Retirement Plan with Company Match',
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
                                                  activeColor:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).primary,
                                                  checkColor:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).primaryBackground,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                  contentPadding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        0.0,
                                                        8.0,
                                                        0.0,
                                                        8.0,
                                                      ),
                                                ),
                                                TextFormField(
                                                  controller: _model
                                                      .tfOtherBenifitsTextController,
                                                  focusNode: _model
                                                      .tfOtherBenifitsFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Any other Benefits',
                                                    hintStyle:
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
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).alternate,
                                                        width: 1.0,
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
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
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
                                                    filled: true,
                                                    fillColor:
                                                        FlutterLibTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                  ),
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
                                                  maxLines: 4,
                                                  minLines: 2,
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  validator: _model
                                                      .tfOtherBenifitsTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ].divide(SizedBox(height: 12.0)),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                                Container(
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Agent',
                                          style: FlutterLibTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).headlineSmall.fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(
                                            0.0,
                                            0.0,
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              16.0,
                                            ),
                                            child: Container(
                                              width: 661.3,
                                              height: 60.61,
                                              decoration: BoxDecoration(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                border: Border.all(
                                                  color: FlutterLibTheme.of(
                                                    context,
                                                  ).primary,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) => StreamBuilder<List<UsersRecord>>(
                                                    stream: queryUsersRecord(
                                                      queryBuilder:
                                                          (
                                                            usersRecord,
                                                          ) => usersRecord.where(
                                                            'access_level',
                                                            isLessThanOrEqualTo:
                                                                2,
                                                          ),
                                                    ),
                                                    builder: (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child: SpinKitRotatingPlain(
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<UsersRecord>
                                                      ddAgentUsersRecordList =
                                                          snapshot.data!;

                                                      return FlutterLibDropDown<
                                                        String
                                                      >(
                                                        controller: _model.ddAgentValueController ??=
                                                            FormFieldController<
                                                              String
                                                            >(
                                                              _model.ddAgentValue ??=
                                                                  currentUserDisplayName,
                                                            ),
                                                        options:
                                                            ddAgentUsersRecordList
                                                                .map(
                                                                  (e) => e
                                                                      .displayName,
                                                                )
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(
                                                              () =>
                                                                  _model.ddAgentValue =
                                                                      val,
                                                            ),
                                                        width: 200.0,
                                                        height: 0.0,
                                                        textStyle: FlutterLibTheme.of(context).titleSmall.override(
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
                                                        hintText:
                                                            'Select Applications Handler',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).secondaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              12.0,
                                                              0.0,
                                                              12.0,
                                                              0.0,
                                                            ),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                ),
                              ].divide(SizedBox(height: 32.0)).addToStart(SizedBox(height: 32.0)).addToEnd(SizedBox(height: 32.0)),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 6.5,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                            0.66,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                48.0,
                                                12.0,
                                                48.0,
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
                                                child: Text(
                                                  'Document Type',
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.override(
                                                        font: GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                              ),
                                              Text(
                                                'Required',
                                                style:
                                                    FlutterLibTheme.of(
                                                      context,
                                                    ).labelMedium.override(
                                                      font: GoogleFonts.openSans(
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                            0.54,
                                        decoration: BoxDecoration(),
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
                                                  final docsItem =
                                                      docs[docsIndex];
                                                  return Container(
                                                    width:
                                                        MediaQuery.sizeOf(
                                                          context,
                                                        ).width *
                                                        0.66,
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
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                      ),
                                                                  child: InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
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
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      28.0,
                                                                      0.0,
                                                                    ),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                    String
                                                                  >(
                                                                    (docsIndex +
                                                                            1)
                                                                        .toString(),
                                                                    '0',
                                                                  ),
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
                                                                          docsItem
                                                                              .description,
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                18.0,
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
                                                              value: _model.checkboxValueMap[docsItem] ??=
                                                                  docsItem
                                                                      .required,
                                                              onChanged: (newValue) async {
                                                                safeSetState(
                                                                  () => _model.checkboxValueMap[docsItem] =
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    0.0,
                                    0.0,
                                    16.0,
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        DocumentPageWidget.routeName,
                                      );
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.66,
                                      height: 160.0,
                                      decoration: BoxDecoration(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).accent2,
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
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 500.0,
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
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                isDense: true,
                                                                labelText:
                                                                    'Title',
                                                                labelStyle: FlutterLibTheme.of(context).labelMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontStyle,
                                                                ),
                                                                hintText:
                                                                    'New Document Title',
                                                                hintStyle: FlutterLibTheme.of(context).labelMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontStyle,
                                                                ),
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
                                                                focusedErrorBorder: OutlineInputBorder(
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
                                                                      ).bodyLarge.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).bodyLarge.fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
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
                                                          width: 600.0,
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
                                                              obscureText:
                                                                  false,
                                                              decoration: InputDecoration(
                                                                isDense: true,
                                                                labelText:
                                                                    'Description',
                                                                labelStyle: FlutterLibTheme.of(context).labelMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontStyle,
                                                                ),
                                                                hintText:
                                                                    'New Document Description',
                                                                hintStyle: FlutterLibTheme.of(context).labelMedium.override(
                                                                  font: GoogleFonts.openSans(
                                                                    fontWeight:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontWeight,
                                                                    fontStyle:
                                                                        FlutterLibTheme.of(
                                                                          context,
                                                                        ).labelMedium.fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontWeight,
                                                                  fontStyle:
                                                                      FlutterLibTheme.of(
                                                                        context,
                                                                      ).labelMedium.fontStyle,
                                                                ),
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
                                                                focusedErrorBorder: OutlineInputBorder(
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
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    12.0,
                                                    0.0,
                                                  ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                        BorderRadius.circular(
                                                          12.0,
                                                        ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
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
                                                                  FontWeight
                                                                      .w500,
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
        ),
      ),
    );
  }
}
