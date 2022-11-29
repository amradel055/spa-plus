import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/data/model/generic/response/generic_response.dart';
import 'package:easy_hotel/app/data/model/user/dto/request/refresh_token_request_dto.dart';
import 'package:easy_hotel/app/data/model/user/dto/request/update_user_put_request.dart';
import 'package:easy_hotel/app/data/model/user/dto/response/refresh_token_response_dto.dart';
import 'package:easy_hotel/app/data/model/user/dto/response/update_user_put_response.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class UserRepository {

  // updateUser(
  //   UpdateUserPutRequest updateUserPutRequest, {
  //   Function()? beforeSend,
  //   Function(GenericResponse<UpdateUserPutResponse> data)? onSuccess,
  //   Function(dynamic error)? onError,
  // }) {
  //   final token = UserManager().token;
  //   ApiProvider().put<UpdateUserPutResponse>('User/UpdateProfile',
  //       beforeSend: beforeSend,
  //       token: token,
  //       data: updateUserPutRequest.toJson(),
  //       onSuccess: onSuccess,
  //       onError: onError);
  // }



}
