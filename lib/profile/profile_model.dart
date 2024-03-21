import '/auth/firebase_auth/auth_util.dart';
import '/components/profile_option_card_widget.dart';
import '/components/profile_option_card_with_arrow_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfileOptionCard component.
  late ProfileOptionCardModel profileOptionCardModel;
  // Model for ProfileOptionCardWithArrow component.
  late ProfileOptionCardWithArrowModel profileOptionCardWithArrowModel1;
  // Model for ProfileOptionCardWithArrow component.
  late ProfileOptionCardWithArrowModel profileOptionCardWithArrowModel2;
  // Model for ProfileOptionCardWithArrow component.
  late ProfileOptionCardWithArrowModel profileOptionCardWithArrowModel3;
  // Model for ProfileOptionCardWithArrow component.
  late ProfileOptionCardWithArrowModel profileOptionCardWithArrowModel4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    profileOptionCardModel =
        createModel(context, () => ProfileOptionCardModel());
    profileOptionCardWithArrowModel1 =
        createModel(context, () => ProfileOptionCardWithArrowModel());
    profileOptionCardWithArrowModel2 =
        createModel(context, () => ProfileOptionCardWithArrowModel());
    profileOptionCardWithArrowModel3 =
        createModel(context, () => ProfileOptionCardWithArrowModel());
    profileOptionCardWithArrowModel4 =
        createModel(context, () => ProfileOptionCardWithArrowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    profileOptionCardModel.dispose();
    profileOptionCardWithArrowModel1.dispose();
    profileOptionCardWithArrowModel2.dispose();
    profileOptionCardWithArrowModel3.dispose();
    profileOptionCardWithArrowModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
