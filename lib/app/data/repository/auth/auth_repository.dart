import 'package:easy_hotel/app/data/model/auth/login/dto/request/login_request.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/response/login_response.dart';
import 'package:easy_hotel/app/data/model/auth/register/dto/response/register_response.dart';
import 'package:easy_hotel/app/data/model/base_request.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class AuthRepository {

  register(
    BaseRequest request, {
    SuccessFunc<RegisterResponse> onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiProvider().post<RegisterResponse>(
      'auth/register',
      queryParameters: request.toJson(),
      onSuccess: onSuccess,
      onError: onError,
      convertor: RegisterResponse.fromJson,
    );
  }

  login(
    BaseRequest request, {
    SuccessFunc<LoginResponse> onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiProvider().post<LoginResponse>(
      'auth/login',
      onSuccess: onSuccess,
      queryParameters: request.toJson(),
      onError: onError,
      convertor: LoginResponse.fromJson,
    );
  }
}
