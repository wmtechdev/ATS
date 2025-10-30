import '/backend/schema/structs/index.dart';
import '/flutter_saad/flutter_saad_data_table.dart';
import '/flutter_saad/flutter_saad_drop_down.dart';
import '/flutter_saad/flutter_saad_theme.dart';
import '/flutter_saad/flutter_saad_util.dart';
import '/flutter_saad/flutter_saad_widgets.dart';
import '/flutter_saad/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candidates_model.dart';
export 'candidates_model.dart';

class CandidatesWidget extends StatefulWidget {
  const CandidatesWidget({super.key});

  static String routeName = 'Candidates';
  static String routePath = '/candidates';

  @override
  State<CandidatesWidget> createState() => _CandidatesWidgetState();
}

class _CandidatesWidgetState extends State<CandidatesWidget> {
  late CandidatesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandidatesModel());

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
    context.watch<FFAppState>();

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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 250.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterSaadTheme.of(context).primary,
                  border: Border.all(
                    color: FlutterSaadTheme.of(context).primary,
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
                        Container(
                          width: 240.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: FlutterSaadTheme.of(context).primary,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'ATS Hospital',
                                style: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterSaadTheme.of(context).tertiary,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(HomePageWidget.routeName);
                              },
                              text: 'Home',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 100.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterSaadTheme.of(context).primary,
                                textStyle: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterSaadTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor:
                                    FlutterSaadTheme.of(context).alternate,
                                hoverElevation: 0.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Candidates',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 48.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterSaadTheme.of(context).alternate,
                                textStyle: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterSaadTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
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
                                0.0, 12.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(JobsWidget.routeName);
                              },
                              text: 'Jobs',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 118.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                color: FlutterSaadTheme.of(context).primary,
                                textStyle: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterSaadTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor:
                                    FlutterSaadTheme.of(context).alternate,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Forms',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 100.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterSaadTheme.of(context).primary,
                                textStyle: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterSaadTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor:
                                    FlutterSaadTheme.of(context).alternate,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Analytics',
                              options: FFButtonOptions(
                                width: 250.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 70.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterSaadTheme.of(context).primary,
                                textStyle: FlutterSaadTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterSaadTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterSaadTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                                hoverColor:
                                    FlutterSaadTheme.of(context).alternate,
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
                            0.0, 12.0, 0.0, 12.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(ProfilePageWidget.routeName);
                          },
                          text: 'Hamza',
                          icon: Icon(
                            Icons.person,
                            size: 28.0,
                          ),
                          options: FFButtonOptions(
                            width: 250.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 48.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterSaadTheme.of(context).primary,
                            textStyle: FlutterSaadTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterSaadTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterSaadTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterSaadTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(0.0),
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Row(
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
                                  labelText: 'Name',
                                  labelStyle: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
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
                                  hintStyle: FlutterSaadTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterSaadTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterSaadTheme.of(context).primary,
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
                                      color: FlutterSaadTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterSaadTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterSaadTheme.of(context)
                                      .secondaryBackground,
                                  prefixIcon: Icon(
                                    Icons.person_search,
                                    color: FlutterSaadTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ),
                                style: FlutterSaadTheme.of(context)
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
                                cursorColor:
                                    FlutterSaadTheme.of(context).primaryText,
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
                                  22.0, 0.0, 0.0, 0.0),
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
                                    labelStyle: FlutterSaadTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.notoSans(
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                    hintStyle: FlutterSaadTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterSaadTheme.of(context)
                                            .primary,
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
                                        color:
                                            FlutterSaadTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterSaadTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterSaadTheme.of(context)
                                        .secondaryBackground,
                                    prefixIcon: Icon(
                                      FontAwesomeIcons.stethoscope,
                                      color:
                                          FlutterSaadTheme.of(context).primary,
                                    ),
                                  ),
                                  style: FlutterSaadTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
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
                                  cursorColor:
                                      FlutterSaadTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                22.0, 0.0, 0.0, 0.0),
                            child: FlutterSaadDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= 'Received',
                              ),
                              options: [
                                'Received',
                                'Pending',
                                'Approved',
                                'Denied'
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue = val),
                              width: 200.0,
                              height: 48.0,
                              textStyle: FlutterSaadTheme.of(context)
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
                              hintText: 'Received',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterSaadTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterSaadTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterSaadTheme.of(context).primary,
                              borderWidth: 1.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 800.0,
                      child: Divider(
                        thickness: 1.0,
                        color: Color(0x7557636C),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Candidates',
                          style: FlutterSaadTheme.of(context)
                              .headlineLarge
                              .override(
                                font: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterSaadTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterSaadTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: 921.4,
                        height: 370.2,
                        decoration: BoxDecoration(
                          color:
                              FlutterSaadTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final dummyjobs =
                                FFAppState().CandidatesDummy.toList();

                            return FlutterSaadDataTable<CandidatesDummyStruct>(
                              controller: _model.paginatedDataTableController,
                              data: dummyjobs,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      '#',
                                      style: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
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
                                      style: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
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
                                      style: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
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
                                      style: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
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
                                      style: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
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
                                      style: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (dummyjobsItem, dummyjobsIndex,
                                      selected, onSelectChanged) =>
                                  DataRow(
                                color: MaterialStateProperty.all(
                                  dummyjobsIndex % 2 == 0
                                      ? FlutterSaadTheme.of(context)
                                          .secondaryBackground
                                      : FlutterSaadTheme.of(context)
                                          .primaryBackground,
                                ),
                                cells: [
                                  Text(
                                    dummyjobsIndex.toString(),
                                    style: FlutterSaadTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          CandidateProfileWidget.routeName);
                                    },
                                    child: Text(
                                      dummyjobsItem.name,
                                      style: FlutterSaadTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    dummyjobsItem.specialization,
                                    style: FlutterSaadTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    dummyjobsItem.email,
                                    style: FlutterSaadTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    dummyjobsItem.status,
                                    style: FlutterSaadTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    dateTimeFormat(
                                        "yMMMd", dummyjobsItem.created!),
                                    style: FlutterSaadTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
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
                              headingRowColor:
                                  FlutterSaadTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(8.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: true,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterSaadTheme.of(context)
                                      .secondaryBackground,
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
  }
}
