// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/api_error.dart';
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';

part 'news_list_screen_state.freezed.dart';

@freezed
class NewsListScreenState with _$NewsListScreenState {
  const factory NewsListScreenState.none() = _None;
  const factory NewsListScreenState.loading(
    NewsType type, [
    @Default([]) previous,
  ]) = _Loading;
  const factory NewsListScreenState.error(
    NewsType type,
    AppError error, [
    @Default([]) previous,
  ]) = _Error;
  const factory NewsListScreenState.data(
    NewsType type,
    List<News> news,
  ) = _Data;
}
