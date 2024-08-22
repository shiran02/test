import 'package:countryinfo/domain/core/authentication_failure.dart';
import 'package:countryinfo/domain/core/core_failure.dart';
import 'package:countryinfo/domain/core/network_failure.dart';
import 'package:countryinfo/domain/core/storage_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.core(CoreFailure failure) = _CoreFailure;

  const factory Failure.network(NetworkFailure failure) = _NetworkFailure;

  const factory Failure.storage(StorageFailure failure) = _StorageFailure;

  const factory Failure.authentication(AuthenticationFailure failure) =
      _AuthenticationFailure;
}
