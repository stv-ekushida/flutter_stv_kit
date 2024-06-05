// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  @JsonKey(name: 'news_id')
  String get newsId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_at')
  String get postAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'un_read')
  bool get unRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {@JsonKey(name: 'news_id') String newsId,
      String title,
      String description,
      @JsonKey(name: 'post_at') String postAt,
      @JsonKey(name: 'un_read') bool unRead});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
    Object? title = null,
    Object? description = null,
    Object? postAt = null,
    Object? unRead = null,
  }) {
    return _then(_value.copyWith(
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      postAt: null == postAt
          ? _value.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as String,
      unRead: null == unRead
          ? _value.unRead
          : unRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImplCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$NewsImplCopyWith(
          _$NewsImpl value, $Res Function(_$NewsImpl) then) =
      __$$NewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'news_id') String newsId,
      String title,
      String description,
      @JsonKey(name: 'post_at') String postAt,
      @JsonKey(name: 'un_read') bool unRead});
}

/// @nodoc
class __$$NewsImplCopyWithImpl<$Res>
    extends _$NewsCopyWithImpl<$Res, _$NewsImpl>
    implements _$$NewsImplCopyWith<$Res> {
  __$$NewsImplCopyWithImpl(_$NewsImpl _value, $Res Function(_$NewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
    Object? title = null,
    Object? description = null,
    Object? postAt = null,
    Object? unRead = null,
  }) {
    return _then(_$NewsImpl(
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      postAt: null == postAt
          ? _value.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as String,
      unRead: null == unRead
          ? _value.unRead
          : unRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl implements _News {
  const _$NewsImpl(
      {@JsonKey(name: 'news_id') required this.newsId,
      required this.title,
      required this.description,
      @JsonKey(name: 'post_at') required this.postAt,
      @JsonKey(name: 'un_read') this.unRead = false});

  factory _$NewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImplFromJson(json);

  @override
  @JsonKey(name: 'news_id')
  final String newsId;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'post_at')
  final String postAt;
  @override
  @JsonKey(name: 'un_read')
  final bool unRead;

  @override
  String toString() {
    return 'News(newsId: $newsId, title: $title, description: $description, postAt: $postAt, unRead: $unRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImpl &&
            (identical(other.newsId, newsId) || other.newsId == newsId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.postAt, postAt) || other.postAt == postAt) &&
            (identical(other.unRead, unRead) || other.unRead == unRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, newsId, title, description, postAt, unRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      __$$NewsImplCopyWithImpl<_$NewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImplToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {@JsonKey(name: 'news_id') required final String newsId,
      required final String title,
      required final String description,
      @JsonKey(name: 'post_at') required final String postAt,
      @JsonKey(name: 'un_read') final bool unRead}) = _$NewsImpl;

  factory _News.fromJson(Map<String, dynamic> json) = _$NewsImpl.fromJson;

  @override
  @JsonKey(name: 'news_id')
  String get newsId;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'post_at')
  String get postAt;
  @override
  @JsonKey(name: 'un_read')
  bool get unRead;
  @override
  @JsonKey(ignore: true)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
