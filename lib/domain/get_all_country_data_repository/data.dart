import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

@freezed
class Data with _$Data {
  factory Data({
    required String id,
    required int value,
  }) = _Data;

  factory Data.empty() {
    return Data(
      id: '',
      value: 0,
    );
  }
}
