import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trailer_model.dart';
export 'trailer_model.dart';

class TrailerWidget extends StatefulWidget {
  const TrailerWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<TrailerWidget> createState() => _TrailerWidgetState();
}

class _TrailerWidgetState extends State<TrailerWidget> {
  late TrailerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrailerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
              FutureBuilder<ApiCallResponse>(
                future: TrailerCall.call(
                  movieId: widget.id,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final youtubePlayerTrailerResponse = snapshot.data!;
                  return FlutterFlowYoutubePlayer(
                    url: 'https://www.youtube.com/embed/${getJsonField(
                      youtubePlayerTrailerResponse.jsonBody,
                      r'''$.key''',
                    ).toString()}',
                    width: double.infinity,
                    height: double.infinity,
                    autoPlay: false,
                    looping: true,
                    mute: false,
                    showControls: true,
                    showFullScreen: true,
                    strictRelatedVideos: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
