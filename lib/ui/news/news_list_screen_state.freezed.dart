// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsListScreenState {
  NewsType get type => throw _privateConstructorUsedError;
  List<News> get personalNews => throw _privateConstructorUsedError;
  List<News> get allNews => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsListScreenStateCopyWith<NewsListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListScreenStateCopyWith<$Res> {
  factory $NewsListScreenStateCopyWith(
          NewsListScreenState value, $Res Function(NewsListScreenState) then) =
      _$NewsListScreenStateCopyWithImpl<$Res, NewsListScreenState>;
  @useResult
  $Res call(
      {NewsType type,
      List<News> personalNews,
      List<News> allNews,
      bool isLoading});
}

/// @nodoc
class _$NewsListScreenStateCopyWithImpl<$Res, $Val extends NewsListScreenState>
    implements $NewsListScreenStateCopyWith<$Res> {
  _$NewsListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? personalNews = null,
    Object? allNews = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NewsType,
      personalNews: null == personalNews
          ? _value.personalNews
          : personalNews // ignore: cast_nullable_to_non_nullable
              as List<News>,
      allNews: null == allNews
          ? _value.allNews
          : allNews // ignore: cast_nullable_to_non_nullable
              as List<News>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsListScreenStateImplCopyWith<$Res>
    implements $NewsListScreenStateCopyWith<$Res> {
  factory _$$NewsListScreenStateImplCopyWith(_$NewsListScreenStateImpl value,
          $Res Function(_$NewsListScreenStateImpl) then) =
      __$$NewsListScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewsType type,
      List<News> personalNews,
      List<News> allNews,
      bool isLoading});
}

/// @nodoc
class __$$NewsListScreenStateImplCopyWithImpl<$Res>
    extends _$NewsListScreenStateCopyWithImpl<$Res, _$NewsListScreenStateImpl>
    implements _$$NewsListScreenStateImplCopyWith<$Res> {
  __$$NewsListScreenStateImplCopyWithImpl(_$NewsListScreenStateImpl _value,
      $Res Function(_$NewsListScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? personalNews = null,
    Object? allNews = null,
    Object? isLoading = null,
  }) {
    return _then(_$NewsListScreenStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NewsType,
      personalNews: null == personalNews
          ? _value._personalNews
          : personalNews // ignore: cast_nullable_to_non_nullable
              as List<News>,
      allNews: null == allNews
          ? _value._allNews
          : allNews // ignore: cast_nullable_to_non_nullable
              as List<News>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewsListScreenStateImpl implements _NewsListScreenState {
  const _$NewsListScreenStateImpl(
      {this.type = NewsType.personal,
      final List<News> personalNews = const [],
      final List<News> allNews = const [],
      this.isLoading = false})
      : _personalNews = personalNews,
        _allNews = allNews;

  @override
  @JsonKey()
  final NewsType type;
  final List<News> _personalNews;
  @override
  @JsonKey()
  List<News> get personalNews {
    if (_personalNews is EqualUnmodifiableListView) return _personalNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personalNews);
  }

  final List<News> _allNews;
  @override
  @JsonKey()
  List<News> get allNews {
    if (_allNews is EqualUnmodifiableListView) return _allNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allNews);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'NewsListScreenState(type: $type, personalNews: $personalNews, allNews: $allNews, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsListScreenStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._personalNews, _personalNews) &&
            const DeepCollectionEquality().equals(other._allNews, _allNews) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_personalNews),
      const DeepCollectionEquality().hash(_allNews),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsListScreenStateImplCopyWith<_$NewsListScreenStateImpl> get copyWith =>
      __$$NewsListScreenStateImplCopyWithImpl<_$NewsListScreenStateImpl>(
          this, _$identity);
}

abstract class _NewsListScreenState implements NewsListScreenState {
  const factory _NewsListScreenState(
      {final NewsType type,
      final List<News> personalNews,
      final List<News> allNews,
      final bool isLoading}) = _$NewsListScreenStateImpl;

  @override
  NewsType get type;
  @override
  List<News> get personalNews;
  @override
  List<News> get allNews;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$NewsListScreenStateImplCopyWith<_$NewsListScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
