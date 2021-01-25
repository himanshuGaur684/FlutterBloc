import 'package:dio/dio.dart';
import 'package:flutter_blocks/remote/response/retro_response.dart';
import 'package:retrofit/http.dart';

part 'retro_call.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class Retro {

  factory Retro(Dio dio) = _Retro;

  @GET('posts')
  Future<List<Posts>> getAllPosts();

}