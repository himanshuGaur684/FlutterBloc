

import 'package:json_annotation/json_annotation.dart';

part 'retro_response.g.dart';

@JsonSerializable()
class Posts {
  int id;
  int userId;
  String title;
  String body;


  Posts({this.body,this.title,this.id,this.userId});

  factory Posts.fromJson(Map<String,dynamic> json)=>_$PostsFromJson(json);

  Map<String,dynamic> toJson()=> _$PostsToJson(this);

}
