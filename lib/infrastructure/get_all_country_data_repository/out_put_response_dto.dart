import 'package:countryinfo/domain/get_all_country_data_repository/out_put_response.dart';
import 'package:countryinfo/infrastructure/get_all_country_data_repository/data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'out_put_response_dto.freezed.dart';
part 'out_put_response_dto.g.dart';

@freezed
class OutPutResponseDto with _$OutPutResponseDto {
  factory OutPutResponseDto({
    required bool success,
    required List<DataDto> data,
  }) = _OutPutResponseDto;

  factory OutPutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OutPutResponseDtoFromJson(json);

  factory OutPutResponseDto.fromDomain(OutPutResponse domain) {
    return OutPutResponseDto(
      success: domain.success,
      data: domain.data.map((p0) => DataDto.fromDomain(p0)).asList(),
    );
  }

  OutPutResponseDto._();

  OutPutResponse toDomain() {
    return OutPutResponse(
      success: success,
      data: data.map((e) => e.toDomain()).toImmutableList(),
    );
  }
}
