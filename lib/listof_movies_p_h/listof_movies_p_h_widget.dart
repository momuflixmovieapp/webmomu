import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'listof_movies_p_h_model.dart';
export 'listof_movies_p_h_model.dart';

class ListofMoviesPHWidget extends StatefulWidget {
  const ListofMoviesPHWidget({super.key});

  @override
  State<ListofMoviesPHWidget> createState() => _ListofMoviesPHWidgetState();
}

class _ListofMoviesPHWidgetState extends State<ListofMoviesPHWidget> {
  late ListofMoviesPHModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListofMoviesPHModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
