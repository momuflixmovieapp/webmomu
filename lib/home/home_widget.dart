import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/movie_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<ApiCallResponse>(
                future: TopRatedCall.call(),
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
                  final pageViewTopRatedResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final results = getJsonField(
                        pageViewTopRatedResponse.jsonBody,
                        r'''$.results''',
                      ).toList().take(5).toList();
                      return Container(
                        width: double.infinity,
                        height: 400.0,
                        child: Stack(
                          children: [
                            PageView.builder(
                              controller: _model.pageViewController ??=
                                  PageController(
                                      initialPage: min(0, results.length - 1)),
                              scrollDirection: Axis.horizontal,
                              itemCount: results.length,
                              itemBuilder: (context, resultsIndex) {
                                final resultsItem = results[resultsIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'MovieDetails',
                                      queryParameters: {
                                        'movieId': serializeParam(
                                          getJsonField(
                                            resultsItem,
                                            r'''$.id''',
                                          ),
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'MovieDetails',
                                            queryParameters: {
                                              'movieId': serializeParam(
                                                getJsonField(
                                                  resultsItem,
                                                  r'''$.id''',
                                                ),
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 400.0,
                                          child: custom_widgets.ImdbImage(
                                            width: double.infinity,
                                            height: 400.0,
                                            imagePath: valueOrDefault<String>(
                                              getJsonField(
                                                resultsItem,
                                                r'''$.backdrop_path''',
                                              )?.toString(),
                                              '/393mh1AJ0GYWVD7Hsq5KkFaTAoT.jpg',
                                            ),
                                            radious: 0.0,
                                            isPoster: false,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.transparent,
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.85),
                                        child: Container(
                                          width: double.infinity,
                                          height: 68.0,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          getJsonField(
                                                            resultsItem,
                                                            r'''$.title''',
                                                          ).toString(),
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMediumFamily,
                                                                fontSize: 20.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineMediumFamily),
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Action • Drama • Adventure',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.7),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await currentUserReference!
                                                          .update(
                                                              createUsersRecordData(
                                                        watching: getJsonField(
                                                          resultsItem,
                                                          r'''$.id''',
                                                        ),
                                                      ));

                                                      context.pushNamed(
                                                        'MovieDetails',
                                                        queryParameters: {
                                                          'movieId':
                                                              serializeParam(
                                                            getJsonField(
                                                              resultsItem,
                                                              r'''$.id''',
                                                            ),
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons.play,
                                                          color: Colors.white,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.83, 0.95),
                              child: smooth_page_indicator.SmoothPageIndicator(
                                controller: _model.pageViewController ??=
                                    PageController(
                                        initialPage:
                                            min(0, results.length - 1)),
                                count: results.length,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) async {
                                  await _model.pageViewController!
                                      .animateToPage(
                                    i,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect:
                                    smooth_page_indicator.ExpandingDotsEffect(
                                  expansionFactor: 2.0,
                                  spacing: 8.0,
                                  radius: 16.0,
                                  dotWidth: 12.0,
                                  dotHeight: 6.0,
                                  dotColor: Color(0x33EF233C),
                                  activeDotColor:
                                      FlutterFlowTheme.of(context).primary,
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('PopularMovies');
                      },
                      child: Text(
                        'See all',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 224.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: FutureBuilder<ApiCallResponse>(
                  future: NowPlayingMoviesCall.call(),
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
                    final listViewNowPlayingMoviesResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final movies = getJsonField(
                          listViewNowPlayingMoviesResponse.jsonBody,
                          r'''$.results''',
                        ).toList().take(8).toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: movies.length,
                          itemBuilder: (context, moviesIndex) {
                            final moviesItem = movies[moviesIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'MovieDetails',
                                    queryParameters: {
                                      'movieId': serializeParam(
                                        getJsonField(
                                          moviesItem,
                                          r'''$.id''',
                                        ),
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: MovieCardWidget(
                                  key: Key(
                                      'Keyek5_${moviesIndex}_of_${movies.length}'),
                                  imagePath: getJsonField(
                                    moviesItem,
                                    r'''$.poster_path''',
                                  ).toString(),
                                  title: getJsonField(
                                    moviesItem,
                                    r'''$.title''',
                                  ).toString(),
                                  duration: '1h 37m',
                                  rating: getJsonField(
                                    moviesItem,
                                    r'''$.vote_average''',
                                  ).toString(),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discover',
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Discover');
                      },
                      child: Text(
                        'See all',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 224.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: FutureBuilder<ApiCallResponse>(
                  future: TrendingCall.call(),
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
                    final listViewTrendingResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final movies = getJsonField(
                          listViewTrendingResponse.jsonBody,
                          r'''$.results''',
                        ).toList().take(8).toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: movies.length,
                          itemBuilder: (context, moviesIndex) {
                            final moviesItem = movies[moviesIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'MovieDetails',
                                    queryParameters: {
                                      'movieId': serializeParam(
                                        getJsonField(
                                          moviesItem,
                                          r'''$.id''',
                                        ),
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: MovieCardWidget(
                                  key: Key(
                                      'Keyhw7_${moviesIndex}_of_${movies.length}'),
                                  imagePath: getJsonField(
                                    moviesItem,
                                    r'''$.poster_path''',
                                  ).toString(),
                                  title: getJsonField(
                                    moviesItem,
                                    r'''$.title''',
                                  ).toString(),
                                  duration: '1h 37m',
                                  rating: getJsonField(
                                    moviesItem,
                                    r'''$.vote_average''',
                                  ).toString(),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pinoy HD',
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Tagalogmovie');
                      },
                      child: Text(
                        'See all',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 224.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: FutureBuilder<ApiCallResponse>(
                  future: PopularMoviesTagalogCall.call(),
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
                    final listViewPopularMoviesTagalogResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final popularMovies = getJsonField(
                          listViewPopularMoviesTagalogResponse.jsonBody,
                          r'''$.results''',
                        ).toList().take(8).toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: popularMovies.length,
                          itemBuilder: (context, popularMoviesIndex) {
                            final popularMoviesItem =
                                popularMovies[popularMoviesIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'MovieDetails',
                                    queryParameters: {
                                      'movieId': serializeParam(
                                        valueOrDefault<int>(
                                          getJsonField(
                                            popularMoviesItem,
                                            r'''$.id''',
                                          ),
                                          278,
                                        ),
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: MovieCardWidget(
                                  key: Key(
                                      'Keyrp9_${popularMoviesIndex}_of_${popularMovies.length}'),
                                  imagePath: getJsonField(
                                    popularMoviesItem,
                                    r'''$.poster_path''',
                                  ).toString(),
                                  title: getJsonField(
                                    popularMoviesItem,
                                    r'''$.title''',
                                  ).toString(),
                                  duration: '1h 37m',
                                  rating: getJsonField(
                                    popularMoviesItem,
                                    r'''$.vote_average''',
                                  ).toString(),
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
              Container(
                width: double.infinity,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
