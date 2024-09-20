// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'out_put_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutPutResponse {
  bool get success => throw _privateConstructorUsedError;
  KtList<Data> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutPutResponseCopyWith<OutPutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutPutResponseCopyWith<$Res> {
  factory $OutPutResponseCopyWith(
          OutPutResponse value, $Res Function(OutPutResponse) then) =
      _$OutPutResponseCopyWithImpl<$Res, OutPutResponse>;
  @useResult
  $Res call({bool success, KtList<Data> data});
}

/// @nodoc
class _$OutPutResponseCopyWithImpl<$Res, $Val extends OutPutResponse>
    implements $OutPutResponseCopyWith<$Res> {
  _$OutPutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KtList<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutPutResponseImplCopyWith<$Res>
    implements $OutPutResponseCopyWith<$Res> {
  factory _$$OutPutResponseImplCopyWith(_$OutPutResponseImpl value,
          $Res Function(_$OutPutResponseImpl) then) =
      __$$OutPutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, KtList<Data> data});
}

/// @nodoc
class __$$OutPutResponseImplCopyWithImpl<$Res>
    extends _$OutPutResponseCopyWithImpl<$Res, _$OutPutResponseImpl>
    implements _$$OutPutResponseImplCopyWith<$Res> {
  __$$OutPutResponseImplCopyWithImpl(
      _$OutPutResponseImpl _value, $Res Function(_$OutPutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$OutPutResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KtList<Data>,
    ));
  }
}

/// @nodoc

class _$OutPutResponseImpl implements _OutPutResponse {
  _$OutPutResponseImpl({required this.success, required this.data});

  @override
  final bool success;
  @override
  final KtList<Data> data;

  @override
  String toString() {
    return 'OutPutResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutPutResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutPutResponseImplCopyWith<_$OutPutResponseImpl> get copyWith =>
      __$$OutPutResponseImplCopyWithImpl<_$OutPutResponseImpl>(
          this, _$identity);
}

abstract class _OutPutResponse implements OutPutResponse {
  factory _OutPutResponse(
      {required final bool success,
      required final KtList<Data> data}) = _$OutPutResponseImpl;

  @override
  bool get success;
  @override
  KtList<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$$OutPutResponseImplCopyWith<_$OutPutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
