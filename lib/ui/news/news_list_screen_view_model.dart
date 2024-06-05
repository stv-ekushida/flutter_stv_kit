// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';
import 'package:flutter_stv_kit/data/repository/news/news_repository_impl.dart';
import 'package:flutter_stv_kit/ui/news/news_list_screen_state.dart';

part 'news_list_screen_view_model.g.dart';

@Riverpod(dependencies: [newsRepository])
class NewsListScreenViewModel extends _$NewsListScreenViewModel {
  @override
  NewsListScreenState build({
    NewsListScreenState initialState = const NewsListScreenState(),
  }) {
    return initialState;
  }

  Future<void> fetch() async {
    state = state.copyWith(
      isLoading: true,
      personalNews: state.personalNews,
      allNews: state.allNews,
    );

    final result = await ref.read(newsRepositoryProvider).fetchAll(
          type: state.type,
        );

    result.when(
      success: (data) {
        if (state.type == NewsType.personal) {
          state = state.copyWith(personalNews: data, isLoading: false);
        } else {
          state = state.copyWith(allNews: data, isLoading: false);
        }
      },
      failure: (e) {
        state = state.copyWith(isLoading: false);
      },
    );
  }

  void selected(int index) {
    state = state.copyWith(
      type: NewsType.values[index],
    );
  }
}
