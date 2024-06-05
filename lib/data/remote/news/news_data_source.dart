// Project imports:
import 'package:flutter_stv_kit/data/model/news/news.dart';

enum NewsType {
  personal,
  all,
}

extension NewsTypeEx on NewsType {
  String get title {
    switch (this) {
      case NewsType.personal:
        return 'あなた宛';
      case NewsType.all:
        return 'ニュース';
    }
  }
}

abstract class NewsDataSource {
  Future<List<News>> fetchAll({
    required NewsType type,
  });

  Future<bool> readNews({required String newsId});
}
