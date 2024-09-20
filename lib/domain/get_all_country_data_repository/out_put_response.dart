import 'package:countryinfo/domain/get_all_country_data_repository/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'out_put_response.freezed.dart';

@freezed
class OutPutResponse with _$OutPutResponse {
  factory OutPutResponse({
    required bool success,
    required KtList<Data> data,
  }) = _OutPutResponse;

  factory OutPutResponse.empty() {
    return OutPutResponse(
      success: false,
      data: emptyList(),
    );
  }
}
