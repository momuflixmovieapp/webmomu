import '/backend/api_requests/api_calls.dart';
import '/components/popularcard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'episodes_bottom_sheet_model.dart';
export 'episodes_bottom_sheet_model.dart';

class EpisodesBottomSheetWidget extends StatefulWidget {
  const EpisodesBottomSheetWidget({
    super.key,
    this.tvShowName,
    this.seasonName,
    this.seasonId,
  });

  final String? tvShowName;
  final String? seasonName;
  final int? seasonId;

  @override
  State<EpisodesBottomSheetWidget> createState() =>
      _EpisodesBottomSheetWidgetState();
}

class _EpisodesBottomSheetWidgetState extends State<EpisodesBottomSheetWidget> {
  late EpisodesBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EpisodesBottomSheetModel());

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
      height: MediaQuery.sizeOf(context).height * 0.75,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
            child: Container(
              width: 80.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Stranger Things / ',
                maxLines: 1,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
              ),
              Text(
                'Season 1',
                maxLines: 1,
                style: FlutterFlowTheme.of(context).titleSmall,
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future: EpisodesCall.call(),
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
                  final listViewEpisodesResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final episode = getJsonField(
                        listViewEpisodesResponse.jsonBody,
                        r'''$.episodes''',
                      ).toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        scrollDirection: Axis.vertical,
                        itemCount: episode.length,
                        itemBuilder: (context, episodeIndex) {
                          final episodeItem = episode[episodeIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: PopularcardWidget(
                              key: Key(
                                  'Keyv0k_${episodeIndex}_of_${episode.length}'),
                              image: valueOrDefault<String>(
                                'https://www.themoviedb.org/t/p/w454_and_h254_bestv2${valueOrDefault<String>(
                                  getJsonField(
                                    episodeItem,
                                    r'''$.still_path''',
                                  )?.toString(),
                                  '/cmCOUjjQ1TfCh1Gj9V4IFAd2XNu.jpg',
                                )}',
                                'https://www.themoviedb.org/t/p/w454_and_h254_bestv2/cmCOUjjQ1TfCh1Gj9V4IFAd2XNu.jpg',
                              ),
                              name: getJsonField(
                                episodeItem,
                                r'''$.name''',
                              ).toString(),
                              overview: getJsonField(
                                episodeItem,
                                r'''$.overview''',
                              ).toString(),
                              relaseDate: valueOrDefault<String>(
                                getJsonField(
                                  episodeItem,
                                  r'''$.air_date''',
                                )?.toString(),
                                '2022',
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
