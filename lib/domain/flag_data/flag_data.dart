import 'package:freezed_annotation/freezed_annotation.dart';

part 'flag_data.freezed.dart';

@freezed
class FlagData with _$FlagData {
  factory FlagData({
    required String png,
    required String svg,
    required String alt,
  }) = _FlagData;

  factory FlagData.empty() {
    return FlagData(
      png: "",
      svg: "",
      alt: "",
    );
  }
}
