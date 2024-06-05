// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/local/file/file_data_source.dart';
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/model/news/news_list.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';
import 'package:flutter_stv_kit/foundation/delay.dart';
import 'package:flutter_stv_kit/gen/assets.gen.dart';

part 'news_data_source_impl.g.dart';

@Riverpod(dependencies: [])
NewsDataSource newsDataSource(NewsDataSourceRef ref) {
  return NewsDataSourceImpl();
}

class NewsDataSourceImpl implements NewsDataSource {
  @override
  Future<List<News>> fetchAll({
    required NewsType type,
  }) async {
    await delay(500);

    if (type == NewsType.personal) {
      final jsonList = await FileDataSource.loadFile(Assets.stub.news);
      final result = NewsList.fromJson(json.decode(jsonList));

      return Future.value(result.news);
    } else {
      return [];
    }
  }

  @override
  Future<bool> readNews({required String newsId}) async {
    await delay(500);
    return true;
  }
}
