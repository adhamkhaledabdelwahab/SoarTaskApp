// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_service_impl.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _RemoteServiceImpl implements RemoteServiceImpl {
  _RemoteServiceImpl(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>>
      getCharacters({
    required int limit,
    required int offset,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        HttpResponse<
            BaseResponseModel<BaseResponseDataModel<CharacterModel>>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'v1/public/characters',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
    final _value =
        BaseResponseModel<BaseResponseDataModel<CharacterModel>>.fromJson(
      _result.data!,
      (json) => BaseResponseDataModel<CharacterModel>.fromJson(
        json as Map<String, dynamic>,
        (json) => CharacterModel.fromJson(json as Map<String, dynamic>),
      ),
    );
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<ComicModel>>>>
      getCharacterComics({
    int limit = 3,
    required num characterId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
            HttpResponse<BaseResponseModel<BaseResponseDataModel<ComicModel>>>>(
        Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'v1/public/characters/${characterId}/comics',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        BaseResponseModel<BaseResponseDataModel<ComicModel>>.fromJson(
      _result.data!,
      (json) => BaseResponseDataModel<ComicModel>.fromJson(
        json as Map<String, dynamic>,
        (json) => ComicModel.fromJson(json as Map<String, dynamic>),
      ),
    );
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<EventModel>>>>
      getCharacterEvents({
    int limit = 3,
    required num characterId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
            HttpResponse<BaseResponseModel<BaseResponseDataModel<EventModel>>>>(
        Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'v1/public/characters/${characterId}/events',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        BaseResponseModel<BaseResponseDataModel<EventModel>>.fromJson(
      _result.data!,
      (json) => BaseResponseDataModel<EventModel>.fromJson(
        json as Map<String, dynamic>,
        (json) => EventModel.fromJson(json as Map<String, dynamic>),
      ),
    );
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>>
      getCharacterSeries({
    int limit = 3,
    required num characterId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        HttpResponse<
            BaseResponseModel<BaseResponseDataModel<SeriesModel>>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'v1/public/characters/${characterId}/series',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
    final _value =
        BaseResponseModel<BaseResponseDataModel<SeriesModel>>.fromJson(
      _result.data!,
      (json) => BaseResponseDataModel<SeriesModel>.fromJson(
        json as Map<String, dynamic>,
        (json) => SeriesModel.fromJson(json as Map<String, dynamic>),
      ),
    );
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<StoryModel>>>>
      getCharacterStories({
    int limit = 3,
    required num characterId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
            HttpResponse<BaseResponseModel<BaseResponseDataModel<StoryModel>>>>(
        Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'v1/public/characters/${characterId}/stories',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        BaseResponseModel<BaseResponseDataModel<StoryModel>>.fromJson(
      _result.data!,
      (json) => BaseResponseDataModel<StoryModel>.fromJson(
        json as Map<String, dynamic>,
        (json) => StoryModel.fromJson(json as Map<String, dynamic>),
      ),
    );
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
