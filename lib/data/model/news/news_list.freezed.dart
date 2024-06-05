// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsList _$NewsListFromJson(Map<String, dynamic> json) {
  return _NewsList.fromJson(json);
}

/// @nodoc
mixin _$NewsList {
  List<News> get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsListCopyWith<NewsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListCopyWith<$Res> {
  factory $NewsListCopyWith(NewsList value, $Res Function(NewsList) then) =
      _$NewsListCopyWithImpl<$Res, NewsList>;
  @useResult
  $Res call({List<News> news});
}

/// @nodoc
class _$NewsListCopyWithImpl<$Res, $Val extends NewsList>
    implements $NewsListCopyWith<$Res> {
  _$NewsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_value.copyWith(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsListImplCopyWith<$Res>
    implements $NewsListCopyWith<$Res> {
  factory _$$NewsListImplCopyWith(
          _$NewsListImpl value, $Res Function(_$NewsListImpl) then) =
      __$$NewsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<News> news});
}

/// @nodoc
class __$$NewsListImplCopyWithImpl<$Res>
    extends _$NewsListCopyWithImpl<$Res, _$NewsListImpl>
    implements _$$NewsListImplCopyWith<$Res> {
  __$$NewsListImplCopyWithImpl(
      _$NewsListImpl _value, $Res Function(_$NewsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$NewsListImpl(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsListImpl implements _NewsList {
  const _$NewsListImpl({required final List<News> news}) : _news = news;

  factory _$NewsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsListImplFromJson(json);

  final List<News> _news;
  @override
  List<News> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  String toString() {
    return 'NewsList(news: $news)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsListImpl &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsListImplCopyWith<_$NewsListImpl> get copyWith =>
      __$$NewsListImplCopyWithImpl<_$NewsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsListImplToJson(
      this,
    );
  }
}

abstract class _NewsList implements NewsList {
  const factory _NewsList({required final List<News> news}) = _$NewsListImpl;

  factory _NewsList.fromJson(Map<String, dynamic> json) =
      _$NewsListImpl.fromJson;

  @override
  List<News> get news;
  @override
  @JsonKey(ignore: true)
  _$$NewsListImplCopyWith<_$NewsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
