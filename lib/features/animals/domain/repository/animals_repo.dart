import 'package:pets_finder/core/networking/api_result.dart';
import 'package:pets_finder/features/animals/data/models/get_animals_query_params.dart';
import 'package:pets_finder/features/animals/domain/entity/animals.dart';

abstract class AnimalsRepository {
  Future<ApiResult<Animals>> animals(
      GetAnimalsQueryParams getAnimalsQueryParams);
}
