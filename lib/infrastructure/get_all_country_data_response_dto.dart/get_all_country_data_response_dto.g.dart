// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_country_data_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllCountryResponseDtoImpl _$$GetAllCountryResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllCountryResponseDtoImpl(
      allCountryDataList: (json['allCountryDataList'] as List<dynamic>)
          .map((e) => AllCountryDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllCountryResponseDtoImplToJson(
        _$GetAllCountryResponseDtoImpl instance) =>
    <String, dynamic>{
      'allCountryDataList': instance.allCountryDataList,
    };
