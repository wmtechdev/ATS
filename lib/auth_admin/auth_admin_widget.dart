import '/flutter_saad/flutter_saad_theme.dart';
import '/flutter_saad/flutter_saad_util.dart';
import '/flutter_saad/flutter_saad_widgets.dart';
import 'dart:ui';
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterSaadTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Container(
                      width: 400.0,
                      decoration: BoxDecoration(
                        color: FlutterSaadTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              4.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterSaadTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.admin_panel_settings,
                                      color: FlutterSaadTheme.of(context).info,
                                      size: 40.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Admin Portal',
                                  textAlign: TextAlign.center,
                                  style: FlutterSaadTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'Please sign in to access the administrative dashboard',
                                  textAlign: TextAlign.center,
                                  style: FlutterSaadTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterSaadTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController1,
                                      focusNode: _model.textFieldFocusNode1,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.email],
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Email Address',
                                        labelStyle: FlutterSaadTheme.of(context)
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
                                        hintText: 'Administrator Email',
                                        hintStyle: FlutterSaadTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight:
                                                    FlutterSaadTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterSaadTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterSaadTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterSaadTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 16.0, 16.0, 16.0),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: FlutterSaadTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                      style: FlutterSaadTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                      cursorColor:
                                          FlutterSaadTheme.of(context).primary,
                                      validator: _model.textController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController2,
                                      focusNode: _model.textFieldFocusNode2,
                                      autofocus: false,
                                      autofillHints: [AutofillHints.password],
                                      textInputAction: TextInputAction.done,
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: FlutterSaadTheme.of(context)
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
                                        hintText: 'Enter your password',
                                        hintStyle: FlutterSaadTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight:
                                                    FlutterSaadTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterSaadTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterSaadTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterSaadTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterSaadTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 16.0, 16.0, 16.0),
                                        prefixIcon: Icon(
                                          Icons.lock_outlined,
                                          color: FlutterSaadTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterSaadTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      cursorColor:
                                          FlutterSaadTheme.of(context).primary,
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterSaadTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: Checkbox(
                                              value: _model.checkboxValue ??=
                                                  false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .checkboxValue = newValue!);
                                              },
                                              side:
                                                  (FlutterSaadTheme.of(context)
                                                              .secondaryText !=
                                                          null)
                                                      ? BorderSide(
                                                          width: 2,
                                                          color: FlutterSaadTheme
                                                                  .of(context)
                                                              .secondaryText!,
                                                        )
                                                      : null,
                                              activeColor:
                                                  FlutterSaadTheme.of(context)
                                                      .primary,
                                              checkColor:
                                                  FlutterSaadTheme.of(context)
                                                      .info,
                                            ),
                                          ),
                                          Text(
                                            'Remember me',
                                            style: FlutterSaadTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight:
                                                        FlutterSaadTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterSaadTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterSaadTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterSaadTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterSaadTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Text(
                                        'Forgot Password?',
                                        style: FlutterSaadTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterSaadTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterSaadTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Sign In',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterSaadTheme.of(context).primary,
                                      textStyle: FlutterSaadTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.notoSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterSaadTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Secure Admin Access',
                                  textAlign: TextAlign.center,
                                  style: FlutterSaadTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterSaadTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterSaadTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterSaadTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterSaadTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterSaadTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.security_rounded,
                                      color:
                                          FlutterSaadTheme.of(context).success,
                                      size: 16.0,
                                    ),
                                    Text(
                                      'Protected by enterprise-grade security',
                                      style: FlutterSaadTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterSaadTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterSaadTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterSaadTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterSaadTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterSaadTheme.of(context)
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
