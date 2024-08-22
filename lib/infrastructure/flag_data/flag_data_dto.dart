import 'package:countryinfo/domain/flag_data/flag_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flag_data_dto.freezed.dart';
part 'flag_data_dto.g.dart';

@freezed
class FlagDataDto with _$FlagDataDto {
  factory FlagDataDto({
    required String png,
    required String svg,
    required String alt,
  }) = _FlagDataDto;

  factory FlagDataDto.fromJson(Map<String, dynamic> json) =>
      _$FlagDataDtoFromJson(json);

  factory FlagDataDto.fromDomain(FlagData domain) {
    return FlagDataDto(
      png: domain.png,
      svg: domain.svg,
      alt: domain.alt,
    );
  }

  const FlagDataDto._();

  FlagData toDomain() {
    return FlagData(
      png: png,
      svg: svg,
      alt: alt,
    );
  }
}
