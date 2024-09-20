import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_all_country_data_repository/data.dart';

part 'data_dto.freezed.dart';
part 'data_dto.g.dart';

@freezed
class DataDto with _$DataDto {
  factory DataDto({
    required String id,
    required int value,
  }) = _DataDto;

  factory DataDto.fromJson(Map<String, dynamic> json) =>
      _$DataDtoFromJson(json);

  factory DataDto.fromDomain(Data domain) {
    return DataDto(
      id: domain.id,
      value: domain.value,
    );
  }

  DataDto._();

  Data toDomain() {
    return Data(
      id: id,
      value: value,
    );
  }
}
