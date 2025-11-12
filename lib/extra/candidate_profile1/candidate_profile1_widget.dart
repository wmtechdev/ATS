import '/flutter_lib/flutter_lib_drop_down.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import '/flutter_lib/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candidate_profile1_model.dart';
export 'candidate_profile1_model.dart';

/// in desktop view
/// create canidate applying for job form:
/// which has all fields.
///
/// in categories.
/// like complete personal information section,
/// complete address section
/// complete education section.
/// etc
/// etc.
class CandidateProfile1Widget extends StatefulWidget {
  const CandidateProfile1Widget({super.key});

  static String routeName = 'CandidateProfile1';
  static String routePath = '/candidateProfile1';

  @override
  State<CandidateProfile1Widget> createState() =>
      _CandidateProfile1WidgetState();
}

class _CandidateProfile1WidgetState extends State<CandidateProfile1Widget> {
  late CandidateProfile1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandidateProfile1Model());

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

    _model.textController10 ??= TextEditingController();
    _model.textFieldFocusNode10 ??= FocusNode();

    _model.textController11 ??= TextEditingController();
    _model.textFieldFocusNode11 ??= FocusNode();

    _model.textController12 ??= TextEditingController();
    _model.textFieldFocusNode12 ??= FocusNode();

    _model.textController13 ??= TextEditingController();
    _model.textFieldFocusNode13 ??= FocusNode();

    _model.textController14 ??= TextEditingController();
    _model.textFieldFocusNode14 ??= FocusNode();

    _model.textController15 ??= TextEditingController();
    _model.textFieldFocusNode15 ??= FocusNode();

    _model.textController16 ??= TextEditingController();
    _model.textFieldFocusNode16 ??= FocusNode();

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
        backgroundColor: FlutterLibTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Job Application Form',
                  textAlign: TextAlign.center,
                  style: FlutterLibTheme.of(context).displayMedium.override(
                    font: GoogleFonts.notoSans(
                      fontWeight: FontWeight.bold,
                      fontStyle: FlutterLibTheme.of(
                        context,
                      ).displayMedium.fontStyle,
                    ),
                    color: FlutterLibTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FlutterLibTheme.of(
                      context,
                    ).displayMedium.fontStyle,
                  ),
                ),
                Text(
                  'Please fill out all sections completely to submit your application',
                  textAlign: TextAlign.center,
                  style: FlutterLibTheme.of(context).bodyLarge.override(
                    font: GoogleFonts.openSans(
                      fontWeight: FlutterLibTheme.of(
                        context,
                      ).bodyLarge.fontWeight,
                      fontStyle: FlutterLibTheme.of(
                        context,
                      ).bodyLarge.fontStyle,
                    ),
                    color: FlutterLibTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FlutterLibTheme.of(
                      context,
                    ).bodyLarge.fontWeight,
                    fontStyle: FlutterLibTheme.of(context).bodyLarge.fontStyle,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterLibTheme.of(
                                context,
                              ).primaryBackground,
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
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.person_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Personal Information',
                                        style: FlutterLibTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode1,
                                          autofocus: false,
                                          autofillHints: [
                                            AutofillHints.givenName,
                                          ],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'First Name *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          keyboardType: TextInputType.name,
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: false,
                                          autofillHints: [
                                            AutofillHints.familyName,
                                          ],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Last Name *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          keyboardType: TextInputType.name,
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController3,
                                          focusNode: _model.textFieldFocusNode3,
                                          autofocus: false,
                                          autofillHints: [AutofillHints.email],
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email Address *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController4,
                                          focusNode: _model.textFieldFocusNode4,
                                          autofocus: false,
                                          autofillHints: [
                                            AutofillHints.telephoneNumber,
                                          ],
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Phone Number *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          keyboardType: TextInputType.phone,
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController4Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController5,
                                          focusNode: _model.textFieldFocusNode5,
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Date of Birth',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController5Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Expanded(
                                        child: FlutterLibDropDown<String>(
                                          controller:
                                              _model.dropDownValueController1 ??=
                                                  FormFieldController<String>(
                                                    null,
                                                  ),
                                          options: [
                                            'Male',
                                            'Female',
                                            'Other',
                                            'Prefer not to say',
                                          ],
                                          onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue1 = val,
                                          ),
                                          textStyle: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          hintText: 'Gender',
                                          fillColor: FlutterLibTheme.of(
                                            context,
                                          ).primaryBackground,
                                          elevation: 0.0,
                                          borderColor: FlutterLibTheme.of(
                                            context,
                                          ).alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                0.0,
                                                0.0,
                                                0.0,
                                              ),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
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
                              ).primaryBackground,
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
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.home_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Address Information',
                                        style: FlutterLibTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  TextFormField(
                                    controller: _model.textController6,
                                    focusNode: _model.textFieldFocusNode6,
                                    autofocus: false,
                                    autofillHints: [
                                      AutofillHints.streetAddressLine1,
                                    ],
                                    textCapitalization:
                                        TextCapitalization.words,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Street Address *',
                                      labelStyle: FlutterLibTheme.of(context)
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
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
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
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
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
                                    keyboardType: TextInputType.streetAddress,
                                    cursorColor: FlutterLibTheme.of(
                                      context,
                                    ).primary,
                                    validator: _model.textController6Validator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction((
                                          oldValue,
                                          newValue,
                                        ) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                  TextCapitalization.words,
                                                ),
                                          );
                                        }),
                                    ],
                                  ),
                                  TextFormField(
                                    controller: _model.textController7,
                                    focusNode: _model.textFieldFocusNode7,
                                    autofocus: false,
                                    autofillHints: [
                                      AutofillHints.streetAddressLine2,
                                    ],
                                    textCapitalization:
                                        TextCapitalization.words,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Apartment/Unit (Optional)',
                                      labelStyle: FlutterLibTheme.of(context)
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
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
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
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
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
                                    keyboardType: TextInputType.streetAddress,
                                    cursorColor: FlutterLibTheme.of(
                                      context,
                                    ).primary,
                                    validator: _model.textController7Validator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction((
                                          oldValue,
                                          newValue,
                                        ) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                  TextCapitalization.words,
                                                ),
                                          );
                                        }),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController8,
                                          focusNode: _model.textFieldFocusNode8,
                                          autofocus: false,
                                          autofillHints: [
                                            AutofillHints.addressCity,
                                          ],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'City *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController8Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController9,
                                          focusNode: _model.textFieldFocusNode9,
                                          autofocus: false,
                                          autofillHints: [
                                            AutofillHints.addressState,
                                          ],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'State/Province *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController9Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController10,
                                          focusNode:
                                              _model.textFieldFocusNode10,
                                          autofocus: false,
                                          autofillHints: [
                                            AutofillHints.postalCode,
                                          ],
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'ZIP/Postal Code *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController10Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  FlutterLibDropDown<String>(
                                    controller:
                                        _model.dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      'United States',
                                      'Canada',
                                      'United Kingdom',
                                      'Australia',
                                      'Other',
                                    ],
                                    onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue2 = val,
                                    ),
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
                                    hintText: 'Country *',
                                    fillColor: FlutterLibTheme.of(
                                      context,
                                    ).primaryBackground,
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
                                ].divide(SizedBox(height: 16.0)),
                              ),
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
                              ).primaryBackground,
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
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.school_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Education Background',
                                        style: FlutterLibTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FlutterLibDropDown<String>(
                                          controller:
                                              _model.dropDownValueController3 ??=
                                                  FormFieldController<String>(
                                                    null,
                                                  ),
                                          options: [
                                            'High School',
                                            'Associate Degree',
                                            'Bachelor\'s Degree',
                                            'Master\'s Degree',
                                            'Doctorate',
                                            'Other',
                                          ],
                                          onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue3 = val,
                                          ),
                                          textStyle: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          hintText: 'Highest Education Level *',
                                          fillColor: FlutterLibTheme.of(
                                            context,
                                          ).primaryBackground,
                                          elevation: 0.0,
                                          borderColor: FlutterLibTheme.of(
                                            context,
                                          ).alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0.0,
                                                0.0,
                                                0.0,
                                                0.0,
                                              ),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController11,
                                          focusNode:
                                              _model.textFieldFocusNode11,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Field of Study',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController11Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController12,
                                          focusNode:
                                              _model.textFieldFocusNode12,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Institution Name *',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController12Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController13,
                                          focusNode:
                                              _model.textFieldFocusNode13,
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Graduation Year',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController13Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  TextFormField(
                                    controller: _model.textController14,
                                    focusNode: _model.textFieldFocusNode14,
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'GPA (Optional)',
                                      labelStyle: FlutterLibTheme.of(context)
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
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterLibTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
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
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterLibTheme.of(
                                            context,
                                          ).error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
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
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                          decimal: true,
                                        ),
                                    cursorColor: FlutterLibTheme.of(
                                      context,
                                    ).primary,
                                    validator: _model.textController14Validator
                                        .asValidator(context),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
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
                              ).primaryBackground,
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
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.work_rounded,
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Work Experience',
                                        style: FlutterLibTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.notoSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterLibTheme.of(
                                                  context,
                                                ).headlineSmall.fontStyle,
                                              ),
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterLibTheme.of(
                                                context,
                                              ).headlineSmall.fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController15,
                                          focusNode:
                                              _model.textFieldFocusNode15,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Current/Most Recent Job Title',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          cursorColor: FlutterLibTheme.of(
                                            context,
                                          ).primary,
                                          validator: _model
                                              .textController15Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction((
                                                oldValue,
                                                newValue,
                                              ) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                        TextCapitalization
                                                            .words,
                                                      ),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController16,
                                          focusNode:
                                              _model.textFieldFocusNode16,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Company Name',
                                            labelStyle:
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
                                                        ).labelMedium.fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).labelMedium.fontWeight,
                                                  fontStyle: FlutterLibTheme.of(
                                                    context,
                                                  ).labelMedium.fontStyle,
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
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterLibTheme.of(
                                                  context,
                                                ).error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        8.0,
                                                      ),
                                                ),
                                          ),
                                          style: FlutterLibTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterLibTheme.of(
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
                                          maxLines: null,
                                          validator: _model
                                              .textController16Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 32.0)),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)).addToStart(SizedBox(height: 24.0)).addToEnd(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
