
import 'package:easy_hotel/app/data/model/halls/dto/request/all_halls_request_dto.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/halls_search_request_dto.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/offers_halls_request_dto.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_response.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_search_response_dto.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/all_housekeeping_request_dto.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_detail_request_dto.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_save_request.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/response/housekeeping_detail_response.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/response/housekeeping_groups_response.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class HallsRepository {

  getAllHalls(
      AllHallsRequest allHallsRequest, {
        Function()? onComplete,
        SuccessFunc<List<HallsResponse>> onSuccess,
         Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<HallsResponse>>('halls/HallsList',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: allHallsRequest.toJson(),
        onError: onError,
        convertor: HallsResponse.fromList,
      );

  getOffersHalls(
      OffersHallsRequest offersHallsRequest, {
        Function()? onComplete,
        SuccessFunc<List<HallsResponse>> onSuccess,
         Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<HallsResponse>>('halls/offersList',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: offersHallsRequest.toJson(),
        onError: onError,
        convertor: HallsResponse.fromList,
      );
  getSearchHalls(
      HallsSearchRequest hallsSearchRequest, {
        SuccessFunc<HallsSearchResponse> onSuccess,
        Function(dynamic error)? onError,  Function()?onComplete,
      }) {
    ApiProvider().post<HallsSearchResponse>(
        'halls/searchListApiHoles',
        onSuccess: onSuccess,
        data: hallsSearchRequest.toJson(),
        onError: onError,
        convertor: HallsSearchResponse.fromJson,
        onComplete: onComplete
    );
  }




}
