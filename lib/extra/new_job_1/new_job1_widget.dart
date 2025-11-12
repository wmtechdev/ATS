import '/flutter_lib/flutter_lib_drop_down.dart';
import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import '/flutter_lib/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_job1_model.dart';
export 'new_job1_model.dart';

/// Create a web page:
/// to create a new job posting
class NewJob1Widget extends StatefulWidget {
  const NewJob1Widget({super.key});

  static String routeName = 'NewJob_1';
  static String routePath = '/newJob1';

  @override
  State<NewJob1Widget> createState() => _NewJob1WidgetState();
}

class _NewJob1WidgetState extends State<NewJob1Widget> {
  late NewJob1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewJob1Model());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode9 ??= FocusNode();

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
          backgroundColor: FlutterLibTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterLibIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
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
            'New Job Posting',
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
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.help_outline,
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
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Create Job Posting',
                    style: FlutterLibTheme.of(context).displaySmall.override(
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
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Title',
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
                            TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'e.g. Senior Software Engineer',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Company',
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
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Company name',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
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
                            TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'City, State or Remote',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Job Type',
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
                                  FlutterLibDropDown<String>(
                                    controller:
                                        _model.dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      'Full-time',
                                      'Part-time',
                                      'Contract',
                                      'Internship',
                                    ],
                                    onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue1 = val,
                                    ),
                                    height: 50.0,
                                    textStyle: FlutterLibTheme.of(context)
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
                                    hintText: 'Select type',
                                    fillColor: FlutterLibTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    elevation: 0.0,
                                    borderColor: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
                                    borderWidth: 1.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
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
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Experience Level',
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
                                  FlutterLibDropDown<String>(
                                    controller:
                                        _model.dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      'Entry Level',
                                      'Mid Level',
                                      'Senior Level',
                                      'Executive',
                                    ],
                                    onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue2 = val,
                                    ),
                                    height: 50.0,
                                    textStyle: FlutterLibTheme.of(context)
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
                                    hintText: 'Select level',
                                    fillColor: FlutterLibTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    elevation: 0.0,
                                    borderColor: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
                                    borderWidth: 1.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salary Range',
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textController4,
                                    focusNode: _model.textFieldFocusNode4,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Min salary',
                                      hintStyle: FlutterLibTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).alternate,
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
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
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
                                    ),
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
                                    keyboardType: TextInputType.number,
                                    validator: _model.textController4Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'to',
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
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.textController5,
                                    focusNode: _model.textFieldFocusNode5,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Max salary',
                                      hintStyle: FlutterLibTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontWeight,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).bodySmall.fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).bodySmall.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).alternate,
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
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
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
                                    ),
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
                                    keyboardType: TextInputType.number,
                                    validator: _model.textController5Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Description',
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
                            TextFormField(
                              controller: _model.textController6,
                              focusNode: _model.textFieldFocusNode6,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText:
                                    'Describe the role, responsibilities, and what you\'re looking for in a candidate...',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              maxLines: 8,
                              minLines: 4,
                              keyboardType: TextInputType.multiline,
                              validator: _model.textController6Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Required Skills',
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
                            TextFormField(
                              controller: _model.textController7,
                              focusNode: _model.textFieldFocusNode7,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText:
                                    'List required skills, technologies, or qualifications',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              maxLines: 4,
                              minLines: 2,
                              keyboardType: TextInputType.multiline,
                              validator: _model.textController7Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Benefits',
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
                            TextFormField(
                              controller: _model.textController8,
                              focusNode: _model.textFieldFocusNode8,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText:
                                    'Health insurance, 401k, flexible hours, remote work, etc.',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              maxLines: 4,
                              minLines: 2,
                              keyboardType: TextInputType.multiline,
                              validator: _model.textController8Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Application Deadline',
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
                            TextFormField(
                              controller: _model.textController9,
                              focusNode: _model.textFieldFocusNode9,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'MM/DD/YYYY',
                                hintStyle: FlutterLibTheme.of(context).bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontWeight,
                                        fontStyle: FlutterLibTheme.of(
                                          context,
                                        ).bodySmall.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontWeight,
                                      fontStyle: FlutterLibTheme.of(
                                        context,
                                      ).bodySmall.fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterLibTheme.of(
                                      context,
                                    ).alternate,
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
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterLibTheme.of(
                                  context,
                                ).secondaryBackground,
                              ),
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
                                  ),
                              keyboardType: TextInputType.datetime,
                              validator: _model.textController9Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterLibTheme.of(context).alternate,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Save as Draft',
                          options: FFButtonOptions(
                            height: 50.0,
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
                            color: FlutterLibTheme.of(
                              context,
                            ).secondaryBackground,
                            textStyle: FlutterLibTheme.of(context).titleSmall
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontStyle,
                                  ),
                                  color: FlutterLibTheme.of(
                                    context,
                                  ).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterLibTheme.of(
                                    context,
                                  ).titleSmall.fontWeight,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleSmall.fontStyle,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterLibTheme.of(context).alternate,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Publish Job',
                          options: FFButtonOptions(
                            height: 50.0,
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
                            color: FlutterLibTheme.of(context).primary,
                            textStyle: FlutterLibTheme.of(context).titleSmall
                                .override(
                                  font: GoogleFonts.notoSans(
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleSmall.fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterLibTheme.of(
                                    context,
                                  ).titleSmall.fontWeight,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).titleSmall.fontStyle,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
