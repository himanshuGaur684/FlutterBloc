// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retro_call.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _Retro implements Retro {
  _Retro(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://jsonplaceholder.typicode.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<Posts>> getAllPosts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('posts',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Posts.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
