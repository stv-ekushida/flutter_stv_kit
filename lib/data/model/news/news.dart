// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@Freezed()
class News with _$News {
  const factory News({
    @JsonKey(name: 'news_id') required String newsId,
    required String title,
    required String description,
    @JsonKey(name: 'post_at') required String postAt,
    @JsonKey(name: 'un_read') @Default(false) bool unRead,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

extension NewsEx on News {
  String postText() {
    DateTime inputDate = DateFormat('yyyy-MM-dd HH:mm').parse(postAt);
    DateTime now = DateTime.now();
    Duration difference = now.difference(inputDate);


    if (difference.inHours < 24) {
      return '${difference.inHours}時間前';
    } else if (difference.inDays < 365) {
      int months = (difference.inDays / 30).floor();
      return '$monthsヶ月前';
    } else {
      int years = (difference.inDays / 365).floor();
      return '$years年前';
    }
  }
}
