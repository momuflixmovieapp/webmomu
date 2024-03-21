import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popularcard_model.dart';
export 'popularcard_model.dart';

class PopularcardWidget extends StatefulWidget {
  const PopularcardWidget({
    super.key,
    this.image,
    this.name,
    this.overview,
    this.relaseDate,
  });

  final String? image;
  final String? name;
  final String? overview;
  final String? relaseDate;

  @override
  State<PopularcardWidget> createState() => _PopularcardWidgetState();
}

class _PopularcardWidgetState extends State<PopularcardWidget> {
  late PopularcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopularcardModel());

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
      height: 84.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 150.0,
            height: 84.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.image!,
                    width: 150.0,
                    height: 84.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 150.0,
                  height: 84.0,
                  decoration: BoxDecoration(
                    color: Color(0x27000000),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.knamePlay,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Text(
                      widget.name!,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                      child: Text(
                        widget.overview!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 12.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                  Text(
                    widget.relaseDate!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
