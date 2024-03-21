import '/components/profile_option_card_with_arrow_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    profileOptionCardWithArrowModel1.dispose();
    profileOptionCardWithArrowModel2.dispose();
    profileOptionCardWithArrowModel3.dispose();
    profileOptionCardWithArrowModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
