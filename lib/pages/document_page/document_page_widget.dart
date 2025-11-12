import '/flutter_lib/flutter_lib_expanded_image_view.dart';
import '/flutter_lib/flutter_lib_icon_button.dart';
import '/flutter_lib/flutter_lib_theme.dart';
import '/flutter_lib/flutter_lib_util.dart';
import '/flutter_lib/flutter_lib_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'document_page_model.dart';
export 'document_page_model.dart';

class DocumentPageWidget extends StatefulWidget {
  const DocumentPageWidget({super.key});

  static String routeName = 'DocumentPage';
  static String routePath = '/documentPage';

  @override
  State<DocumentPageWidget> createState() => _DocumentPageWidgetState();
}

class _DocumentPageWidgetState extends State<DocumentPageWidget> {
  late DocumentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentPageModel());

    _model.textController ??= TextEditingController(
      text:
          'Document is not clearly visible.\n\nkidnly take a picture in good lightning.',
    );
    _model.textFieldFocusNode ??= FocusNode();

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
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 46.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterLibTheme.of(context).primaryText,
              size: 25.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Driving License',
            style: FlutterLibTheme.of(context).headlineMedium.override(
              font: GoogleFonts.notoSans(
                fontWeight: FlutterLibTheme.of(
                  context,
                ).headlineMedium.fontWeight,
                fontStyle: FlutterLibTheme.of(context).headlineMedium.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterLibTheme.of(context).headlineMedium.fontWeight,
              fontStyle: FlutterLibTheme.of(context).headlineMedium.fontStyle,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: FlutterLibIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 46.0,
                icon: Icon(
                  Icons.more_vert,
                  color: FlutterLibTheme.of(context).primaryText,
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          12.0,
                          0.0,
                          0.0,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterLibTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterLibTheme.of(context).primary,
                                  width: 4.0,
                                ),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterLibExpandedImageView(
                                        image: CachedNetworkImage(
                                          fadeInDuration: Duration(
                                            milliseconds: 500,
                                          ),
                                          fadeOutDuration: Duration(
                                            milliseconds: 500,
                                          ),
                                          imageUrl:
                                              'https://images.unsplash.com/photo-1623795457671-600b1223c2db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxkcml2aW5nJTIwbGljZW5zZXxlbnwwfHx8fDE3NjE2NjAxMTV8MA&ixlib=rb-4.1.0&q=80&w=400',
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: 'imageTag',
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'imageTag',
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration: Duration(
                                        milliseconds: 500,
                                      ),
                                      fadeOutDuration: Duration(
                                        milliseconds: 500,
                                      ),
                                      imageUrl:
                                          'https://images.unsplash.com/photo-1623795457671-600b1223c2db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxkcml2aW5nJTIwbGljZW5zZXxlbnwwfHx8fDE3NjE2NjAxMTV8MA&ixlib=rb-4.1.0&q=80&w=400',
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.5,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(55.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Download',
                        icon: Icon(Icons.download_outlined, size: 28.0),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 46.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                            16.0,
                            0.0,
                            16.0,
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
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          22.0,
                          0.0,
                          22.0,
                        ),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Accept',
                          icon: Icon(Icons.check, size: 28.0),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 46.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              0.0,
                              26.0,
                              0.0,
                            ),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              0.0,
                              12.0,
                              0.0,
                            ),
                            color: Color(0xFF1B6F3B),
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
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                        child: Divider(
                          thickness: 2.0,
                          color: Color(0x8E57636C),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          33.0,
                          0.0,
                          0.0,
                        ),
                        child: Container(
                          width: 300.0,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Rejection - Reason',
                              labelStyle: FlutterLibTheme.of(context)
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
                                    color: FlutterLibTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontWeight,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).titleMedium.fontStyle,
                                  ),
                              hintText: 'TextField',
                              hintStyle: FlutterLibTheme.of(context).labelMedium
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
                                  ).secondaryText,
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
                                  color: FlutterLibTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterLibTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterLibTheme.of(
                                context,
                              ).secondaryBackground,
                            ),
                            style: FlutterLibTheme.of(context).bodyLarge
                                .override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterLibTheme.of(
                                      context,
                                    ).bodyLarge.fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterLibTheme.of(
                                    context,
                                  ).bodyLarge.fontStyle,
                                ),
                            maxLines: 5,
                            cursorColor: FlutterLibTheme.of(
                              context,
                            ).primaryText,
                            enableInteractiveSelection: true,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          22.0,
                          0.0,
                          0.0,
                        ),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Reject',
                          icon: Icon(Icons.cancel_outlined, size: 28.0),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 46.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              0.0,
                              26.0,
                              0.0,
                            ),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              0.0,
                              12.0,
                              0.0,
                            ),
                            color: FlutterLibTheme.of(context).error,
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
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Container(width: 200.0),
                    ],
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
