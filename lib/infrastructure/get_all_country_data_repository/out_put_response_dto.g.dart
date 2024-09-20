// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'out_put_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutPutResponseDtoImpl _$$OutPutResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OutPutResponseDtoImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => DataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OutPutResponseDtoImplToJson(
        _$OutPutResponseDtoImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
