

class ForgetPasswordRequest {

  String? email ;

  ForgetPasswordRequest({this.email});


  Map<String , dynamic> toJson () => {
    "email" : email
  };
}