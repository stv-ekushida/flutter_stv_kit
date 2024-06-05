// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';
import 'package:flutter_stv_kit/data/result.dart';

abstract class NewsRepository {
  Future<Result<List<News>>> fetchAll({
    required NewsType type,
  });

  Future<Result<bool>> readNews({required String newsId});
}
