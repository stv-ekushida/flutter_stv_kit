// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user.dart';

part 'my_page_screen_state.freezed.dart';

@freezed
class MyPageScreenState with _$MyPageScreenState {
  const factory MyPageScreenState({
    required User? user,
    @Default(false) bool isLoading,
  }) = _MyPageScreenState;
}
