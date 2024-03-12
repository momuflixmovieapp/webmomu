import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'watching_movie_model.dart';
export 'watching_movie_model.dart';

class WatchingMovieWidget extends StatefulWidget {
  const WatchingMovieWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<WatchingMovieWidget> createState() => _WatchingMovieWidgetState();
}

class _WatchingMovieWidgetState extends State<WatchingMovieWidget> {
  late WatchingMovieModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WatchingMovieModel());

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 852.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: FlutterFlowWebView(
                content: valueOrDefault<String>(
                  'https://yaps.therarbg.to/play/movies?id=${widget.id?.toString()}',
                  'https://yaps.therarbg.to/play/movies?id=',
                ),
                bypass: false,
                width: MediaQuery.sizeOf(context).width,
                height: 852.0,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
