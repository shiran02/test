import 'package:countryinfo/domain/core/core_failure.dart';
import 'package:countryinfo/domain/core/failure.dart';
import 'package:countryinfo/domain/get_all_country_data_repository/i_get_country_data_repository.dart';
import 'package:countryinfo/domain/get_all_country_data_repository/out_put_response.dart';
import 'package:countryinfo/infrastructure/core/api_helper.dart';
import 'package:countryinfo/infrastructure/get_all_country_data_repository/out_put_response_dto.dart';
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

  @override
  Future<Either<Failure, OutPutResponse>> getValue() async {
    //try {
    final res = await _apiHelper.callApi(
      'api/get/data',
      method: RestMethods.get,
    );

    _logUtils.log("::::  Value :: getValue :: ${res.data}");

    if (res.success) {
      return right(
        OutPutResponseDto.fromJson(res.data as Map<String, dynamic>).toDomain(),
      );
    } else {
      return left(
        Failure.core(
          CoreFailure.serverError(res.error ?? res.info!),
        ),
      );
    }
    // } catch (e) {
    //   _logUtils.log("::: getValue : Failure: $e");
    //   return left(
    //     Failure.core(
    //       CoreFailure.somethingWentWrong(e),
    //     ),
    //   );
    // }
  }
}
