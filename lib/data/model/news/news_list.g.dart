// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsListImpl _$$NewsListImplFromJson(Map<String, dynamic> json) =>
    _$NewsListImpl(
      news: (json['news'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsListImplToJson(_$NewsListImpl instance) =>
    <String, dynamic>{
      'news': instance.news,
    };
