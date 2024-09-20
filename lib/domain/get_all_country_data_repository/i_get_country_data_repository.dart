import 'package:countryinfo/domain/get_all_country_data_repository/out_put_response.dart';
import 'package:dartz/dartz.dart';

import '../core/failure.dart';

abstract class IGetCountryDataRepository {
  Future<Either<Failure, OutPutResponse>> getValue();
}
