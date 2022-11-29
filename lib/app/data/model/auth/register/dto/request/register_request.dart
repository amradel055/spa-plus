class RegisterRequestDto {
  RegisterRequestDto({
    this.isMale,
    this.mobile,
    this.birthdate,
    this.educationLevel,
    this.emailAddress,
    this.password  = "",
    this.passwordConfirmation = "",
    this.firstName,
    this.familyname,
    this.fatherName,
    this.city,
  });

  String? mobile;
  DateTime? birthdate;
  int? isMale;
  String? firstName;
  String? familyname;
  String? emailAddress;
  String? fatherName;
  String? city;
  String? password;
  String? passwordConfirmation;
  String? educationLevel;

  Map<String, dynamic> toJson() => {
    "firstname": firstName,
    "familyname": familyname,
    "fathername": fatherName,
    "city": city,
    "is_male": isMale,
    "mobile": mobile,
    "email_address": emailAddress,
    "birthday": birthdate?.toIso8601String(),
    "education_level": educationLevel,
    "password": password,
    "password_confirmation": passwordConfirmation,
  };
}
