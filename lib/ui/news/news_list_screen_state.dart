// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';

part 'news_list_screen_state.freezed.dart';

@freezed
class NewsListScreenState with _$NewsListScreenState {
  const factory NewsListScreenState({
    @Default(NewsType.personal) NewsType type,
    @Default([]) List<News> personalNews,
    @Default([]) List<News> allNews,
    @Default(false) bool isLoading,
  }) = _NewsListScreenState;
}
