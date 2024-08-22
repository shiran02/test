import 'package:countryinfo/domain/core/core_failure.dart';
import 'package:countryinfo/domain/core/failure.dart';
import 'package:countryinfo/domain/get_all_country_data_repository/i_get_country_data_repository.dart';
import 'package:countryinfo/domain/get_all_country_data_response/get_all_country_data_response.dart';
import 'package:countryinfo/infrastructure/core/api_helper.dart';
import 'package:countryinfo/infrastructure/get_all_country_data_response_dto.dart/get_all_country_data_response_dto.dart';
import 'package:countryinfo/util/log_util/log_utils.dart';
import 'package:dartz/dartz.dart';

class GetAllCountryDataReository implements IGetCountryDataRepository {
  GetAllCountryDataReository(
    ApiHelper apiHelper,
  ) : _apiHelper = apiHelper;

  final ApiHelper _apiHelper;

  static final LogUtils _logUtils = LogUtils(
    featureName: "Get All Country Data Reository",
    printLog: true,
  );

  // @override
  // Future<Either<Failure, GetAllCountryDataResponse>> getCountryData() async {
  //   try {
  //     final res = await _apiHelper.callApi(
  //       'v3.1/region/europe?fields=flags',
  //       method: RestMethods.get,
  //     );

  //     print("@@@@@@@@@@@@@@# # res ${res.data}");
  //     print("@@@@@@@@@@@@@@# # res success ${res.success}");
  //     print("@@@@@@@@@@@@@@# # res message ${res.info}");
  //     print("@@@@@@@@@@@@@@# # res data ${res.data}");

  //     if (res.success) {
  //       // Ensure data is a List
  //       final List<dynamic>? dataList = res.data as List<dynamic>?;

  //       if (dataList == null) {
  //         return left(
  //           Failure.core(
  //             CoreFailure.serverError("Expected list not found in response"),
  //           ),
  //         );
  //       }

  //       // Convert List<dynamic> to List<Map<String, dynamic>>
  //       final List<Map<String, dynamic>> countryDataList =
  //           dataList.cast<Map<String, dynamic>>();

  //       // Convert the list to DTO
  //       final GetAllCountryResponseDto responseDto =
  //           GetAllCountryResponseDto.fromJson({
  //         'allCountryDataList': countryDataList,
  //       });

  //       return right(responseDto.toDomain());
  //     } else {
  //       return left(
  //         Failure.core(
  //           CoreFailure.serverError(res.error ?? res.info!),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     _logUtils.log("Follow Count : Failure: $e");
  //     return left(
  //       Failure.core(
  //         CoreFailure.somethingWentWrong(e),
  //       ),
  //     );
  //   }
  // }

  @override
  Future<Either<Failure, GetAllCountryDataResponse>> getCountryData() async {
    try {
      final res = await _apiHelper.callApi(
        'v3.1/region/europe?fields=flags,name,population,region,languages,capital',
        method: RestMethods.get,
      );

      // print("@@@@@@@@@@@@@@# # res ${res.data}");
      // print("@@@@@@@@@@@@@@# # res success ${res.success}");
      // print("@@@@@@@@@@@@@@# # res message ${res.data}");
      // print("@@@@@@@@@@@@@@# # res data ${res.data}");

      if (res.success) {
        // return right(
        //   GetAllCountryResponseDto.fromJson(res.data as Map<String, dynamic>)
        //       .toDomain(),
        // );

        // Check if res.data is a List<dynamic>
        // if (res.data is List<dynamic>) {
        //   // Convert the List<dynamic> to a List<Map<String, dynamic>>
        //   final List<Map<String, dynamic>> dataList =
        //       List<Map<String, dynamic>>.from(res.data!);

        //   return right(
        //     GetAllCountryResponseDto.fromJson({'data': dataList}).toDomain(),
        //   );
        // } else {
        //   return left(
        //     Failure.core(
        //       CoreFailure.serverError(
        //           "Expected List<dynamic> but got ${res.data.runtimeType}"),
        //     ),
        //   );
        // }

        // Ensure res.data is a List<dynamic>
        final List<dynamic>? dataList = res.data as List<dynamic>?;

        // Check if dataList is null and provide an empty list if so
        final List<Map<String, dynamic>> countryDataList =
            dataList != null ? List<Map<String, dynamic>>.from(dataList) : [];

        // Convert to GetAllCountryResponseDto
        return right(
          GetAllCountryResponseDto.fromJson(
              {'allCountryDataList': countryDataList}).toDomain(),
        );
      } else {
        return left(
          Failure.core(
            CoreFailure.serverError(res.error ?? res.info!),
          ),
        );
      }
    } catch (e) {
      _logUtils.log("Follow Count : Failure: $e");
      return left(
        Failure.core(
          CoreFailure.somethingWentWrong(e),
        ),
      );
    }
  }

  // @override
  // Future<Either<Failure, GetAllCountryDataResponse>> getCountryData2() async {
  //   try {
  //     final res = await _apiHelper.callApi(
  //       'v3.1/region/europe?fields=flags',
  //       method: RestMethods.get,
  //     );

  //     _logUtils.log("::::  Value :: response of userlocation :: ${res.data}");

  //     if (res.success) {
  //       return right(
  //           GetAllCountryResponseDto.fromJson(res.data as Map<String, dynamic>)
  //               .toDomain());
  //     } else {
  //       return left(
  //         Failure.core(
  //           CoreFailure.serverError(res.error ?? res.info!),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     _logUtils.log("Follow Count : Failure: $e");
  //     return left(
  //       Failure.core(
  //         CoreFailure.somethingWentWrong(e),
  //       ),
  //     );
  //   }
  // }
}
