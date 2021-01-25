// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retro_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return Posts(
    body: json['body'] as String,
    title: json['title'] as String,
    id: json['id'] as int,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
