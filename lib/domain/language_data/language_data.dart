import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_data.freezed.dart';

@freezed
class LanguageData with _$LanguageData {
  factory LanguageData({
    String? nno,
    String? nob,
    String? smi,
    String? fra,
    String? gsw,
    String? ita,
    String? eng,
    String? rus,
  }) = _LanguageData;

  factory LanguageData.empty() {
    return LanguageData(
      nno: null,
      nob: null,
      smi: null,
      eng: null,
      fra: null,
      gsw: null,
      ita: null,
      rus: null,
    );
  }
}
