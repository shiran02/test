// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataDtoImpl _$$DataDtoImplFromJson(Map<String, dynamic> json) =>
    _$DataDtoImpl(
      id: json['id'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$DataDtoImplToJson(_$DataDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
