// Package imports:
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
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
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result = await ref.read(newsRepositoryProvider).fetchAll(type: type);

    result.when(success: (news) {
      state = NewsListScreenState.data(news);
    }, failure: (error) {
      notifier.error(error);
    });

    notifier.none();
  }

  void selected(int index) {
    fetch(NewsType.values[index]);
  }
}
