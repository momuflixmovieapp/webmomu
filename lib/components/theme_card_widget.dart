import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_card_model.dart';
export 'theme_card_model.dart';

class ThemeCardWidget extends StatefulWidget {
  const ThemeCardWidget({
    super.key,
    this.isActive,
    this.icon,
    this.title,
    this.isRightIcon,
  });

  final bool? isActive;
  final Widget? icon;
  final String? title;
  final bool? isRightIcon;

  @override
  State<ThemeCardWidget> createState() => _ThemeCardWidgetState();
}

class _ThemeCardWidgetState extends State<ThemeCardWidget> {
  late ThemeCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (!widget.isRightIcon!)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: widget.icon!,
            ),
          if (widget.isRightIcon ?? true) Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ),
          if (widget.isRightIcon ?? true)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: widget.icon!,
            ),
        ],
      ),
    );
  }
}
