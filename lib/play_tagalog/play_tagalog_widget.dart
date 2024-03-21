import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'play_tagalog_model.dart';
export 'play_tagalog_model.dart';

class PlayTagalogWidget extends StatefulWidget {
  const PlayTagalogWidget({
    super.key,
    required this.movie,
  });

  final String? movie;

  @override
  State<PlayTagalogWidget> createState() => _PlayTagalogWidgetState();
}

class _PlayTagalogWidgetState extends State<PlayTagalogWidget> {
  late PlayTagalogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayTagalogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: FlutterFlowWebView(
            content: valueOrDefault<String>(
              widget.movie,
              'https://embedrise.com/v/65fa00d0c12ac',
            ),
            bypass: false,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            verticalScroll: false,
            horizontalScroll: false,
          ),
        ),
      ),
    );
  }
}
