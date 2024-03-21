import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TrendingCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Trending',
      apiUrl:
          'https://api.themoviedb.org/3/trending/movie/week?api_key=7380315e84286ea0e70a4c6d419f62a8',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? resualts(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
}

class TopRatedCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TopRated',
      apiUrl:
          'https://api.themoviedb.org/3/movie/top_rated?api_key=7380315e84286ea0e70a4c6d419f62a8',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? resualts(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
}

class NowPlayingMoviesCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'nowPlayingMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/now_playing?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TvShowsOnAirCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TvShowsOnAir',
      apiUrl:
          'https://api.themoviedb.org/3/tv/popular?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TvShowsInfoCall {
  static Future<ApiCallResponse> call({
    int? tvId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TvShowsInfo',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PopularMoviesTagalogCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'PopularMoviesTagalog',
      apiUrl:
          'https://api.themoviedb.org/3/discover/movie?api_key=7380315e84286ea0e70a4c6d419f62a8&include_adult=true&include_video=true&language=tl-PH&page=1&sort_by=popularity.desc&with_original_language=tl',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? result(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
}

class PopularMoviesCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PopularMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/top_rated?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MovieDetailsCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieDetails',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MovieCastCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieCast',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/credits?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MovieImagesCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieImages',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/images?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SimilerMoviesCall {
  static Future<ApiCallResponse> call({
    int? movieId = 453395,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SimilerMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/similar?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US&page=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchMoviesCall {
  static Future<ApiCallResponse> call({
    String? query = 'Deadpool',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchMovies',
      apiUrl:
          'https://api.themoviedb.org/3/search/movie?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US&query=${query}&page=1&include_adult=false',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TvCastsCall {
  static Future<ApiCallResponse> call({
    int? tvId = 66732,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TvCasts',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}/credits?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SimilarTvShowsCall {
  static Future<ApiCallResponse> call({
    int? tvId = 66732,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SimilarTvShows',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}/similar?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US&page=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EpisodesCall {
  static Future<ApiCallResponse> call({
    int? tvId = 66732,
    int? seasonNumber = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Episodes',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}/season/${seasonNumber}?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TrailerCall {
  static Future<ApiCallResponse> call({
    int? movieId = 738031,
    dynamic? keyJson,
  }) async {
    final key = _serializeJson(keyJson);

    return ApiManager.instance.makeApiCall(
      callName: 'Trailer',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/videos?api_key=7380315e84286ea0e70a4c6d419f62a8&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': key,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
