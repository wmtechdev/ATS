import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_admin_model.dart';
export 'auth_admin_model.dart';

/// Simple Professional Proper Login Page for admins
class AuthAdminWidget extends StatefulWidget {
  const AuthAdminWidget({super.key});

  static String routeName = 'AuthAdmin';
  static String routePath = '/authAdmin';

  @override
  State<AuthAdminWidget> createState() => _AuthAdminWidgetState();
}

class _AuthAdminWidgetState extends State<AuthAdminWidget> {
  late AuthAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthAdminModel());

    _model.tFEmailInTextController ??= TextEditingController();
    _model.tFEmailInFocusNode ??= FocusNode();

    _model.tFPassInTextController ??= TextEditingController();
    _model.tFPassInFocusNode ??= FocusNode();

    _model.tFEmailUpTextController ??= TextEditingController();
    _model.tFEmailUpFocusNode ??= FocusNode();

    _model.tFNameUpTextController ??= TextEditingController();
    _model.tFNameUpFocusNode ??= FocusNode();

    _model.tFPassUpTextController ??= TextEditingController();
    _model.tFPassUpFocusNode ??= FocusNode();

    _model.tFCpassUpTextController ??= TextEditingController();
    _model.tFCpassUpFocusNode ??= FocusNode();

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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ATS-Hospital-Logo.png',
                            width: 1193.3,
                            height: 665.57,
                            fit: BoxFit.contain,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (valueOrDefault<bool>(
                                _model.signin == true,
                                true,
                              ))
                                Padding(
                                  padding: EdgeInsets.all(40.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8.0,
                                            color: Color(0x1A000000),
                                            offset: Offset(0.0, 4.0),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(
                                          16.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0.0,
                                                          0.0,
                                                        ),
                                                    child: Icon(
                                                      Icons
                                                          .admin_panel_settings,
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).info,
                                                      size: 40.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Admin Portal',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).headlineMedium.override(
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  'Please sign in to access the administrative dashboard',
                                                  textAlign: TextAlign.center,
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
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                            Form(
                                              key: _model.formKey2,
                                              autovalidateMode:
                                                  AutovalidateMode.disabled,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tFEmailInTextController,
                                                      focusNode: _model
                                                          .tFEmailInFocusNode,
                                                      autofocus: false,
                                                      autofillHints: [
                                                        AutofillHints.email,
                                                      ],
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        labelText:
                                                            'Email Address',
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
                                                        hintText:
                                                            'Administrator Email',
                                                        hintStyle: FlutterLibTheme.of(context).bodyMedium.override(
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.0,
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12.0,
                                                                  ),
                                                            ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                            ),
                                                        prefixIcon: Icon(
                                                          Icons.email_outlined,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 20.0,
                                                        ),
                                                      ),
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
                                                                ).primaryText,
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
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                      cursorColor:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).primary,
                                                      validator: _model
                                                          .tFEmailInTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tFPassInTextController,
                                                      focusNode: _model
                                                          .tFPassInFocusNode,
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      obscureText: !_model
                                                          .tFPassInVisibility,
                                                      decoration: InputDecoration(
                                                        labelText: 'Password',
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
                                                        hintText:
                                                            'Enter your password',
                                                        hintStyle: FlutterLibTheme.of(context).bodyMedium.override(
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.0,
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12.0,
                                                                  ),
                                                            ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                            ),
                                                        prefixIcon: Icon(
                                                          Icons.lock_outlined,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 20.0,
                                                        ),
                                                        suffixIcon: InkWell(
                                                          onTap: () => safeSetState(
                                                            () => _model.tFPassInVisibility =
                                                                !_model
                                                                    .tFPassInVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                            skipTraversal: true,
                                                          ),
                                                          child: Icon(
                                                            _model.tFPassInVisibility
                                                                ? Icons
                                                                      .visibility_outlined
                                                                : Icons
                                                                      .visibility_off_outlined,
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
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
                                                                ).primaryText,
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
                                                      cursorColor:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).primary,
                                                      validator: _model
                                                          .tFPassInTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Theme(
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
                                                                  ).secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value:
                                                                  _model.checkboxValue1 ??=
                                                                      false,
                                                              onChanged:
                                                                  (
                                                                    newValue,
                                                                  ) async {
                                                                    safeSetState(
                                                                      () => _model.checkboxValue1 =
                                                                          newValue!,
                                                                    );
                                                                  },
                                                              side:
                                                                  (FlutterLibTheme.of(
                                                                        context,
                                                                      ).secondaryText !=
                                                                      null)
                                                                  ? BorderSide(
                                                                      width: 2,
                                                                      color: FlutterLibTheme.of(
                                                                        context,
                                                                      ).secondaryText!,
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
                                                          Text(
                                                            'Remember me',
                                                            style: FlutterLibTheme.of(context).bodySmall.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodySmall
                                                                        .fontStyle,
                                                              ),
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).secondaryText,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 8.0)),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (_model
                                                              .tFEmailInTextController
                                                              .text
                                                              .isEmpty) {
                                                            ScaffoldMessenger.of(
                                                              context,
                                                            ).showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Email required!',
                                                                ),
                                                              ),
                                                            );
                                                            return;
                                                          }
                                                          await authManager
                                                              .resetPassword(
                                                                email: _model
                                                                    .tFEmailInTextController
                                                                    .text,
                                                                context:
                                                                    context,
                                                              );
                                                        },
                                                        child: Text(
                                                          'Forgot Password?',
                                                          style: FlutterLibTheme.of(context).bodySmall.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
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
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      GoRouter.of(
                                                        context,
                                                      ).prepareAuthEvent();

                                                      final user = await authManager
                                                          .signInWithEmail(
                                                            context,
                                                            _model
                                                                .tFEmailInTextController
                                                                .text,
                                                            _model
                                                                .tFPassInTextController
                                                                .text,
                                                          );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      context.goNamedAuth(
                                                        HomePageWidget
                                                            .routeName,
                                                        context.mounted,
                                                      );
                                                    },
                                                    text: 'Sign In',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      iconPadding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0.0,
                                                            0.0,
                                                            0.0,
                                                            0.0,
                                                          ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).primary,
                                                      textStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).titleMedium.override(
                                                            font: GoogleFonts.notoSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).info,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12.0,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 24.0)),
                                              ),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).alternate,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.signin =
                                                        !_model.signin;
                                                    safeSetState(() {});
                                                  },
                                                  child: Text(
                                                    'Dont have an account? Signup here!',
                                                    textAlign: TextAlign.center,
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
                                                              ).primary,
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
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.security_rounded,
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).success,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      'Protected by enterprise-grade security',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodySmall.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
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
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(SizedBox(width: 4.0)),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ].divide(SizedBox(height: 32.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (_model.signin == false)
                                Padding(
                                  padding: EdgeInsets.all(40.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(
                                        color: FlutterLibTheme.of(
                                          context,
                                        ).secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8.0,
                                            color: Color(0x1A000000),
                                            offset: Offset(0.0, 4.0),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(
                                          16.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterLibTheme.of(
                                                      context,
                                                    ).primary,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0.0,
                                                          0.0,
                                                        ),
                                                    child: Icon(
                                                      Icons
                                                          .admin_panel_settings,
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).info,
                                                      size: 40.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Admin Signup',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      FlutterLibTheme.of(
                                                        context,
                                                      ).headlineMedium.override(
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterLibTheme.of(
                                                                  context,
                                                                )
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  'Please sign up to access the administrative dashboard',
                                                  textAlign: TextAlign.center,
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
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                            Form(
                                              key: _model.formKey1,
                                              autovalidateMode:
                                                  AutovalidateMode.disabled,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tFEmailUpTextController,
                                                      focusNode: _model
                                                          .tFEmailUpFocusNode,
                                                      autofocus: false,
                                                      autofillHints: [
                                                        AutofillHints.email,
                                                      ],
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        labelText:
                                                            'Email Address',
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
                                                        hintText:
                                                            'Administrator Email',
                                                        hintStyle: FlutterLibTheme.of(context).bodyMedium.override(
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.0,
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12.0,
                                                                  ),
                                                            ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                            ),
                                                        prefixIcon: Icon(
                                                          Icons.email_outlined,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 20.0,
                                                        ),
                                                      ),
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
                                                                ).primaryText,
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
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                      cursorColor:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).primary,
                                                      validator: _model
                                                          .tFEmailUpTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tFNameUpTextController,
                                                      focusNode: _model
                                                          .tFNameUpFocusNode,
                                                      autofocus: false,
                                                      autofillHints: [
                                                        AutofillHints.name,
                                                      ],
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        labelText: 'Name',
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
                                                        hintText: 'Your Name',
                                                        hintStyle: FlutterLibTheme.of(context).bodyMedium.override(
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.0,
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12.0,
                                                                  ),
                                                            ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                            ),
                                                        prefixIcon: Icon(
                                                          Icons.email_outlined,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 20.0,
                                                        ),
                                                      ),
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
                                                                ).primaryText,
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
                                                      cursorColor:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).primary,
                                                      validator: _model
                                                          .tFNameUpTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tFPassUpTextController,
                                                      focusNode: _model
                                                          .tFPassUpFocusNode,
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      obscureText: !_model
                                                          .tFPassUpVisibility,
                                                      decoration: InputDecoration(
                                                        labelText: 'Password',
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
                                                        hintText:
                                                            'Enter your password',
                                                        hintStyle: FlutterLibTheme.of(context).bodyMedium.override(
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.0,
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12.0,
                                                                  ),
                                                            ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                            ),
                                                        prefixIcon: Icon(
                                                          Icons.lock_outlined,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 20.0,
                                                        ),
                                                        suffixIcon: InkWell(
                                                          onTap: () => safeSetState(
                                                            () => _model.tFPassUpVisibility =
                                                                !_model
                                                                    .tFPassUpVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                            skipTraversal: true,
                                                          ),
                                                          child: Icon(
                                                            _model.tFPassUpVisibility
                                                                ? Icons
                                                                      .visibility_outlined
                                                                : Icons
                                                                      .visibility_off_outlined,
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
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
                                                                ).primaryText,
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
                                                      cursorColor:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).primary,
                                                      validator: _model
                                                          .tFPassUpTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tFCpassUpTextController,
                                                      focusNode: _model
                                                          .tFCpassUpFocusNode,
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      obscureText: !_model
                                                          .tFCpassUpVisibility,
                                                      decoration: InputDecoration(
                                                        labelText:
                                                            'Confirm Password',
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
                                                        hintText:
                                                            'Enter your password',
                                                        hintStyle: FlutterLibTheme.of(context).bodyMedium.override(
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12.0,
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
                                                                12.0,
                                                              ),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color:
                                                                    FlutterLibTheme.of(
                                                                      context,
                                                                    ).error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12.0,
                                                                  ),
                                                            ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterLibTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional.fromSTEB(
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                              16.0,
                                                            ),
                                                        prefixIcon: Icon(
                                                          Icons.lock_outlined,
                                                          color:
                                                              FlutterLibTheme.of(
                                                                context,
                                                              ).secondaryText,
                                                          size: 20.0,
                                                        ),
                                                        suffixIcon: InkWell(
                                                          onTap: () => safeSetState(
                                                            () => _model.tFCpassUpVisibility =
                                                                !_model
                                                                    .tFCpassUpVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                            skipTraversal: true,
                                                          ),
                                                          child: Icon(
                                                            _model.tFCpassUpVisibility
                                                                ? Icons
                                                                      .visibility_outlined
                                                                : Icons
                                                                      .visibility_off_outlined,
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).secondaryText,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
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
                                                                ).primaryText,
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
                                                      cursorColor:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).primary,
                                                      validator: _model
                                                          .tFCpassUpTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Theme(
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
                                                                  ).secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value:
                                                                  _model.checkboxValue2 ??=
                                                                      false,
                                                              onChanged:
                                                                  (
                                                                    newValue,
                                                                  ) async {
                                                                    safeSetState(
                                                                      () => _model.checkboxValue2 =
                                                                          newValue!,
                                                                    );
                                                                  },
                                                              side:
                                                                  (FlutterLibTheme.of(
                                                                        context,
                                                                      ).secondaryText !=
                                                                      null)
                                                                  ? BorderSide(
                                                                      width: 2,
                                                                      color: FlutterLibTheme.of(
                                                                        context,
                                                                      ).secondaryText!,
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
                                                          Text(
                                                            'Remember me',
                                                            style: FlutterLibTheme.of(context).bodySmall.override(
                                                              font: GoogleFonts.openSans(
                                                                fontWeight:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                fontStyle:
                                                                    FlutterLibTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodySmall
                                                                        .fontStyle,
                                                              ),
                                                              color:
                                                                  FlutterLibTheme.of(
                                                                    context,
                                                                  ).secondaryText,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(width: 8.0)),
                                                      ),
                                                    ],
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      GoRouter.of(
                                                        context,
                                                      ).prepareAuthEvent();
                                                      if (_model
                                                              .tFPassUpTextController
                                                              .text !=
                                                          _model
                                                              .tFCpassUpTextController
                                                              .text) {
                                                        ScaffoldMessenger.of(
                                                          context,
                                                        ).showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Passwords don\'t match!',
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }

                                                      final user = await authManager
                                                          .createAccountWithEmail(
                                                            context,
                                                            _model
                                                                .tFEmailUpTextController
                                                                .text,
                                                            _model
                                                                .tFPassUpTextController
                                                                .text,
                                                          );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await currentUserReference!
                                                          .update(
                                                            createUsersRecordData(
                                                              displayName: _model
                                                                  .tFNameUpTextController
                                                                  .text,
                                                              accessLevel: 2,
                                                            ),
                                                          );

                                                      context.goNamedAuth(
                                                        HomePageWidget
                                                            .routeName,
                                                        context.mounted,
                                                      );
                                                    },
                                                    text: 'Sign up',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      padding: EdgeInsets.all(
                                                        8.0,
                                                      ),
                                                      iconPadding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0.0,
                                                            0.0,
                                                            0.0,
                                                            0.0,
                                                          ),
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).primary,
                                                      textStyle:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).titleMedium.override(
                                                            font: GoogleFonts.notoSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                FlutterLibTheme.of(
                                                                  context,
                                                                ).info,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12.0,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 24.0)),
                                              ),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color: FlutterLibTheme.of(
                                                context,
                                              ).alternate,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.signin =
                                                        !_model.signin;
                                                    safeSetState(() {});
                                                  },
                                                  child: Text(
                                                    'Already have an account? Signin here!',
                                                    textAlign: TextAlign.center,
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
                                                              ).primary,
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
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.security_rounded,
                                                      color: FlutterLibTheme.of(
                                                        context,
                                                      ).success,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      'Protected by enterprise-grade security',
                                                      style:
                                                          FlutterLibTheme.of(
                                                            context,
                                                          ).bodySmall.override(
                                                            font: GoogleFonts.openSans(
                                                              fontWeight:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterLibTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodySmall
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
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterLibTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(SizedBox(width: 4.0)),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ].divide(SizedBox(height: 32.0)),
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
          ),
        ),
      ),
    );
  }
}
