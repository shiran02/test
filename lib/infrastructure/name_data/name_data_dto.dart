import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/name_data/name_data.dart';

part 'name_data_dto.freezed.dart';
part 'name_data_dto.g.dart';

@freezed
class NameDataDto with _$NameDataDto {
  factory NameDataDto({
    required String common,
    required String official,
  }) = _NameDataDto;

  factory NameDataDto.fromJson(Map<String, dynamic> json) =>
      _$NameDataDtoFromJson(json);

  factory NameDataDto.fromDomain(NameData domain) {
    return NameDataDto(
      common: domain.common,
      official: domain.official,
    );
  }

  const NameDataDto._();

  NameData toDomain() {
    return NameData(
      common: common,
      official: official,
    );
  }
}
