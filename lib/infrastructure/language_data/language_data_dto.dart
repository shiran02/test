import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/language_data/language_data.dart';

part 'language_data_dto.freezed.dart';
part 'language_data_dto.g.dart';

@freezed
class LanguageDataDto with _$LanguageDataDto {
  factory LanguageDataDto({
    String? nno,
    String? nob,
    String? smi,
    String? fra,
    String? gsw,
    String? ita,
    String? eng,
    String? rus,
  }) = _LanguageDataDto;

  factory LanguageDataDto.fromJson(Map<String, dynamic> json) =>
      _$LanguageDataDtoFromJson(json);

  factory LanguageDataDto.fromDomain(LanguageData domain) {
    return LanguageDataDto(
      nno: domain.nno,
      nob: domain.nob,
      smi: domain.smi,
      fra: domain.fra,
      gsw: domain.gsw,
      ita: domain.ita,
      eng: domain.eng,
      rus: domain.rus,
    );
  }

  const LanguageDataDto._();

  LanguageData toDomain() {
    return LanguageData(
      nno: nno,
      nob: nob,
      smi: smi,
      fra: fra,
      gsw: gsw,
      ita: ita,
      eng: eng,
      rus: rus,
    );
  }
}
