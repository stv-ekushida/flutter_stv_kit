// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';
import 'package:flutter_stv_kit/data/repository/news/news_repository_impl.dart';
import 'package:flutter_stv_kit/ui/news/news_list/news_list_screen_state.dart';

part 'news_list_screen_view_model.g.dart';

@Riverpod(dependencies: [newsRepository])
class NewsListScreenViewModel extends _$NewsListScreenViewModel {
  @override
  NewsListScreenState build({
    NewsListScreenState initialState = const NewsListScreenState.none(),
  }) {
    return initialState;
  }

  Future<void> fetch(NewsType type) async {
    List<News> previousNews = [];

    state.maybeWhen(
      loading: (currentType, news) =>
          previousNews = _updatePreviousNews(currentType, type, news),
      error: (currentType, _, news) =>
          previousNews = _updatePreviousNews(currentType, type, news),
      data: (currentType, news) =>
          previousNews = _updatePreviousNews(currentType, type, news),
      orElse: () => previousNews = [],
    );

    state = NewsListScreenState.loading(type, previousNews);

    final result = await ref.read(newsRepositoryProvider).fetchAll(type: type);

    result.when(success: (news) {
      state = NewsListScreenState.data(type, news);
    }, failure: (e) {
      state = NewsListScreenState.error(
        type,
        e,
        previousNews,
      );
    });
  }

  List<News> _updatePreviousNews(
      NewsType currentType, NewsType type, List<News> news) {
    return currentType == type ? news : [];
  }

  void selected(int index) {
    fetch(NewsType.values[index]);
  }
}
