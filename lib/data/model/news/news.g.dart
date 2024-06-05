// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      newsId: json['news_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      postAt: json['post_at'] as String,
      unRead: json['un_read'] as bool? ?? false,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'news_id': instance.newsId,
      'title': instance.title,
      'description': instance.description,
      'post_at': instance.postAt,
      'un_read': instance.unRead,
    };
