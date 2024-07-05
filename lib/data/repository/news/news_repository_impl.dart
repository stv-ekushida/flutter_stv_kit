// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source_impl.dart';
import 'package:flutter_stv_kit/data/repository/news/news_repository.dart';
import 'package:flutter_stv_kit/data/result.dart';

part 'news_repository_impl.g.dart';

@Riverpod(dependencies: [newsDataSource])
NewsRepository newsRepository(NewsRepositoryRef ref) {
  return NewsRepositoryImpl(
    ref.watch(newsDataSourceProvider),
  );
}

class NewsRepositoryImpl implements NewsRepository {
  const NewsRepositoryImpl(this.dataSource);

  final NewsDataSource dataSource;

  @override
  Future<Result<List<News>>> fetchAll({
    required NewsType type,
  }) async =>
      Result.guardFuture(
        () async => dataSource.fetchAll(type: type),
      );

  @override
  Future<Result<bool>> readNews({required String newsId}) async =>
      Result.guardFuture(
        () async => dataSource.readNews(newsId: newsId),
      );
}
