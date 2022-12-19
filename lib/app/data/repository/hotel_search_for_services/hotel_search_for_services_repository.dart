


import 'package:easy_hotel/app/data/model/halls/dto/response/halls_search_response_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_search_request_dto.dart';

import '../../provider/api_provider.dart';

class HotelSearchForServicesRepository {

  searchHotelForServices(
      SpaSearchRequest spaGroupRequest, {
        Function()? onComplete,
        SuccessFunc<List<HotelsearchModel>> onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<HotelsearchModel>>('branch/hotelListByString',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: spaGroupRequest.toJson(),
        onError: onError,
        convertor: HotelsearchModel.fromList,
      );
}