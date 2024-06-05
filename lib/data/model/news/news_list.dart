// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';

part 'news_list.freezed.dart';
part 'news_list.g.dart';

@Freezed()
class NewsList with _$NewsList {
  const factory NewsList({
    required List<News> news,
  }) = _NewsList;

  factory NewsList.fromJson(Map<String, dynamic> json) =>
      _$NewsListFromJson(json);
}
