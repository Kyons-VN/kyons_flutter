// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'login10_model.dart';

// export 'login10_model.dart';

// class Login10Widget extends StatefulWidget {
//   const Login10Widget({Key? key}) : super(key: key);

//   @override
//   _Login10WidgetState createState() => _Login10WidgetState();
// }

// class _Login10WidgetState extends State<Login10Widget> {
//   late Login10Model _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   final _unfocusNode = FocusNode();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => Login10Model());

//     _model.emailAddressFieldController ??= TextEditingController();
//     _model.passwordFieldController ??= TextEditingController();
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     _unfocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {

//     return GestureDetector(
//       onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 1,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).primaryBackground,
//                   ),
//                   child: Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Container(
//                       width: 360,
//                       height: MediaQuery.of(context).size.height * 1,
//                       decoration: BoxDecoration(),
//                       child: Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
//                               child: Material(
//                                 color: Colors.transparent,
//                                 elevation: 0,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Container(
//                                   width: 48,
//                                   height: 48,
//                                   decoration: BoxDecoration(
//                                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                                     image: DecorationImage(
//                                       fit: BoxFit.cover,
//                                       image: Image.asset(
//                                         'assets/images/DAAsset_1.png',
//                                       ).image,
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         blurRadius: 8,
//                                         color: Color(0x1917171C),
//                                         offset: Offset(0, 4),
//                                         spreadRadius: 0,
//                                       )
//                                     ],
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SelectionArea(
//                                 child: Text(
//                               'Welcome back',
//                               style: FlutterFlowTheme.of(context).headlineSmall.override(
//                                     fontFamily: 'Inter',
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.w600,
//                                     lineHeight: 1.2,
//                                   ),
//                             )),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                               child: SelectionArea(
//                                   child: Text(
//                                 'Welcome back! Please enter your details.',
//                                 style: FlutterFlowTheme.of(context).bodySmall.override(
//                                       fontFamily: 'Inter',
//                                       lineHeight: 1.5,
//                                     ),
//                               )),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
//                               child: Form(
//                                 key: _model.formKey,
//                                 autovalidateMode: AutovalidateMode.disabled,
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             SelectionArea(
//                                                 child: Text(
//                                               'Email',
//                                               style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                     fontFamily: 'Inter',
//                                                     color: FlutterFlowTheme.of(context).tertiaryText,
//                                                     fontWeight: FontWeight.w500,
//                                                   ),
//                                             )),
//                                           ],
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
//                                           child: TextFormField(
//                                             controller: _model.emailAddressFieldController,
//                                             obscureText: false,
//                                             decoration: InputDecoration(
//                                               labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                     fontFamily: 'Inter',
//                                                     color: FlutterFlowTheme.of(context).primaryText,
//                                                     fontSize: 16,
//                                                     lineHeight: 1.5,
//                                                   ),
//                                               hintText: 'Enter your email',
//                                               hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                     fontFamily: 'Inter',
//                                                     color: FlutterFlowTheme.of(context).secondaryText,
//                                                     fontSize: 16,
//                                                     lineHeight: 1.5,
//                                                   ),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0xFFD0D5DD),
//                                                   width: 1,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(8),
//                                               ),
//                                               focusedBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0x00000000),
//                                                   width: 1,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(8),
//                                               ),
//                                               errorBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0xFFFDA29B),
//                                                   width: 1,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(8),
//                                               ),
//                                               focusedErrorBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0xFFFDA29B),
//                                                   width: 1,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(8),
//                                               ),
//                                               contentPadding: EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
//                                             ),
//                                             style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                   fontFamily: 'Inter',
//                                                   color: FlutterFlowTheme.of(context).primaryText,
//                                                   fontSize: 16,
//                                                   lineHeight: 1.5,
//                                                 ),
//                                             keyboardType: TextInputType.emailAddress,
//                                             validator: _model.emailAddressFieldControllerValidator.asValidator(context),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             mainAxisSize: MainAxisSize.max,
//                                             children: [
//                                               SelectionArea(
//                                                   child: Text(
//                                                 'Password',
//                                                 style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                       fontFamily: 'Inter',
//                                                       color: FlutterFlowTheme.of(context).tertiaryText,
//                                                       fontWeight: FontWeight.w500,
//                                                     ),
//                                               )),
//                                             ],
//                                           ),
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
//                                             child: TextFormField(
//                                               controller: _model.passwordFieldController,
//                                               obscureText: !_model.passwordFieldVisibility,
//                                               decoration: InputDecoration(
//                                                 labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                       fontFamily: 'Inter',
//                                                       color: FlutterFlowTheme.of(context).primaryText,
//                                                       fontSize: 16,
//                                                       lineHeight: 1.5,
//                                                     ),
//                                                 hintText: '••••••••',
//                                                 hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                       fontFamily: 'Inter',
//                                                       color: FlutterFlowTheme.of(context).secondaryText,
//                                                       fontSize: 16,
//                                                       lineHeight: 1.5,
//                                                     ),
//                                                 enabledBorder: OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color: Color(0xFFD0D5DD),
//                                                     width: 1,
//                                                   ),
//                                                   borderRadius: BorderRadius.circular(8),
//                                                 ),
//                                                 focusedBorder: OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color: Color(0x00000000),
//                                                     width: 1,
//                                                   ),
//                                                   borderRadius: BorderRadius.circular(8),
//                                                 ),
//                                                 errorBorder: OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color: Color(0xFFFDA29B),
//                                                     width: 1,
//                                                   ),
//                                                   borderRadius: BorderRadius.circular(8),
//                                                 ),
//                                                 focusedErrorBorder: OutlineInputBorder(
//                                                   borderSide: BorderSide(
//                                                     color: Color(0xFFFDA29B),
//                                                     width: 1,
//                                                   ),
//                                                   borderRadius: BorderRadius.circular(8),
//                                                 ),
//                                                 contentPadding: EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
//                                                 suffixIcon: InkWell(
//                                                   onTap: () => setState(
//                                                     () => _model.passwordFieldVisibility =
//                                                         !_model.passwordFieldVisibility,
//                                                   ),
//                                                   focusNode: FocusNode(skipTraversal: true),
//                                                   child: Icon(
//                                                     _model.passwordFieldVisibility
//                                                         ? Icons.visibility_outlined
//                                                         : Icons.visibility_off_outlined,
//                                                     color: FlutterFlowTheme.of(context).secondaryText,
//                                                     size: 16,
//                                                   ),
//                                                 ),
//                                               ),
//                                               style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                     fontFamily: 'Inter',
//                                                     color: FlutterFlowTheme.of(context).primaryText,
//                                                     fontSize: 16,
//                                                     lineHeight: 1.5,
//                                                   ),
//                                               validator: _model.passwordFieldControllerValidator.asValidator(context),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                               child: SelectionArea(
//                                   child: Text(
//                                 'Forget password?',
//                                 style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                       fontFamily: 'Inter',
//                                       color: FlutterFlowTheme.of(context).primary,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                               )),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                               child: FFButtonWidget(
//                                 onPressed: () async {
//                                   if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
//                                     return;
//                                   }
//                                 },
//                                 text: 'Log in',
//                                 options: FFButtonOptions(
//                                   width: double.infinity,
//                                   height: 44,
//                                   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                                   iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                                   color: FlutterFlowTheme.of(context).primary,
//                                   textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                                         fontFamily: 'Inter',
//                                         color: Colors.white,
//                                       ),
//                                   elevation: 2,
//                                   borderSide: BorderSide(
//                                     color: Colors.transparent,
//                                     width: 1,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
//                               child: Material(
//                                 color: Colors.transparent,
//                                 elevation: 0,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Container(
//                                   width: double.infinity,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(8),
//                                     border: Border.all(
//                                       color: Color(0xFFD0D5DD),
//                                       width: 1,
//                                     ),
//                                   ),
//                                   child: Align(
//                                     alignment: AlignmentDirectional(0, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.min,
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: [
//                                           Image.network(
//                                             'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png',
//                                             width: 24,
//                                             height: 24,
//                                             fit: BoxFit.cover,
//                                           ),
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                                             child: SelectionArea(
//                                                 child: Text(
//                                               'Sign in with Google',
//                                               style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                                     fontFamily: 'Inter',
//                                                     fontSize: 16,
//                                                     fontWeight: FontWeight.w600,
//                                                   ),
//                                             )),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   SelectionArea(
//                                       child: Text(
//                                     'Don\'t have an account? ',
//                                     style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                           fontFamily: 'Inter',
//                                           color: FlutterFlowTheme.of(context).secondaryText,
//                                         ),
//                                   )),
//                                   SelectionArea(
//                                       child: Text(
//                                     'Sign up',
//                                     style: FlutterFlowTheme.of(context).bodyMedium.override(
//                                           fontFamily: 'Inter',
//                                           color: FlutterFlowTheme.of(context).primary,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                   )),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               if (responsiveVisibility(
//                 context: context,
//                 phone: false,
//                 tablet: false,
//                 tabletLandscape: false,
//               ))
//                 Expanded(
//                   child: Container(
//                     width: 100,
//                     height: MediaQuery.of(context).size.height * 1,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: Image.network(
//                           'https://images.unsplash.com/photo-1622151834625-66296f9f0e96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwd29ya2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
//                         ).image,
//                       ),
//                     ),
//                     child: Align(
//                       alignment: AlignmentDirectional(0, 1),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(48, 0, 48, 48),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(0),
//                           child: BackdropFilter(
//                             filter: ImageFilter.blur(
//                               sigmaX: 14,
//                               sigmaY: 14,
//                             ),
//                             child: Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 color: Color(0x40FFFFFF),
//                                 borderRadius: BorderRadius.circular(12),
//                                 border: Border.all(
//                                   color: Color(0x5AFFFFFF),
//                                   width: 2,
//                                 ),
//                               ),
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SelectionArea(
//                                         child: Text(
//                                       'FlutterGo is the most extensive FlutterFlow component pack available. Create projects easier than ever before.',
//                                       style: FlutterFlowTheme.of(context).headlineSmall.override(
//                                             fontFamily: 'Inter',
//                                             color: Colors.white,
//                                             fontSize: 30,
//                                             fontWeight: FontWeight.w500,
//                                             lineHeight: 1.2,
//                                           ),
//                                     )),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
//                                                 child: SelectionArea(
//                                                     child: Text(
//                                                   '— Will Hobick',
//                                                   style: FlutterFlowTheme.of(context).titleMedium.override(
//                                                         fontFamily: 'Inter',
//                                                         color: Colors.white,
//                                                         fontSize: 24,
//                                                         lineHeight: 1.2,
//                                                       ),
//                                                 )),
//                                               ),
//                                               SelectionArea(
//                                                   child: Text(
//                                                 'Designer, FlutterGo',
//                                                 style: FlutterFlowTheme.of(context).bodySmall.override(
//                                                       fontFamily: 'Inter',
//                                                       color: Color(0x80FFFFFF),
//                                                       fontSize: 18,
//                                                       fontWeight: FontWeight.w500,
//                                                       lineHeight: 1.5,
//                                                     ),
//                                               )),
//                                             ],
//                                           ),
//                                           Row(
//                                             mainAxisSize: MainAxisSize.max,
//                                             children: [
//                                               RatingBarIndicator(
//                                                 itemBuilder: (context, index) => Icon(
//                                                   Icons.star_outlined,
//                                                   color: Colors.white,
//                                                 ),
//                                                 direction: Axis.horizontal,
//                                                 rating: 5,
//                                                 unratedColor: Colors.white,
//                                                 itemCount: 5,
//                                                 itemSize: 24,
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
