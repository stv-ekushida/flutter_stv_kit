// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';

part 'news_list_screen_state.freezed.dart';

@freezed
class NewsListScreenState with _$NewsListScreenState {
  const factory NewsListScreenState.idle() = _Idle;
  const factory NewsListScreenState.data(List<News> news) = _Data;
}
