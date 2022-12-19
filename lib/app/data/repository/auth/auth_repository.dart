import 'package:easy_hotel/app/data/model/auth/forget_password/dto/request/forget_password_request_dto.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/request/login_request.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/response/login_response.dart';
import 'package:easy_hotel/app/data/model/auth/register/dto/request/register_request.dart';
import 'package:easy_hotel/app/data/model/auth/register/dto/response/register_response.dart';
import 'package:easy_hotel/app/data/model/base_request.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class AuthRepository {

  register(
    RegisterRequestDto request, {
    SuccessFunc<LoginResponse> onSuccess, Function()?onComplete,
    Function(dynamic error)? onError,
    // Function()? onComplete,
  }) {
    ApiProvider().post<LoginResponse>(
      'auth/registerNew',
      data: request.toJson(),
      onSuccess: onSuccess,
      onComplete: onComplete,
      onError: onError,
      convertor: LoginResponse.fromJson,
        // onComplete: onComplete

    );
  }

  resetPassword(
      ForgetPasswordRequest request, {
        SuccessFunc<void> onSuccess, Function()?onComplete,
        Function(dynamic error)? onError,
        // Function()? onComplete,
      }) {
    ApiProvider().post<void>(
      'auth/registerNew',
      data: request.toJson(),
      onSuccess: onSuccess,
      onComplete: onComplete,
      onError: onError,
      convertor: (_){return null;},
      // onComplete: onComplete

    );
  }

  login(
    LoginRequestDto request, {
    SuccessFunc<LoginResponse> onSuccess,
    Function(dynamic error)? onError,
        Function()? onComplete,
    // Function(dynamic error)? onError,  Function()?onComplete,
  }) {
    ApiProvider().post<LoginResponse>(
      'auth/loginNew',
      onSuccess: onSuccess,
      data: request.toJson(),
      onComplete: onComplete,
      queryParameters: request.toJson(),
      onError: onError,
      convertor: LoginResponse.fromJson,
      // onComplete: onComplete
    );
  }
}
