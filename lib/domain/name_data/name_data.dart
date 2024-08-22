import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_data.freezed.dart';

@freezed
class NameData with _$NameData {
  factory NameData({
    required String common,
    required String official,
  }) = _NameData;

  factory NameData.empty() {
    return NameData(
      common: "",
      official: "",
    );
  }
}
