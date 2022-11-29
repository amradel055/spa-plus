class UpdateUserPutRequest {
  UpdateUserPutRequest({
    required this.firstName,
    required this.lastName,
    required this.isFemale,
    required this.updateAddresses,
    required this.userName,
    required this.email,
    required this.coverId,
    required this.phoneNumber,
    required this.bankAccount,
  });

  String firstName;
  String lastName;
  String coverId;
  bool isFemale;
  List<UpdateAddress> updateAddresses;
  String userName;
  String email;
  String phoneNumber;
  String bankAccount;

  factory UpdateUserPutRequest.fromJson(Map<String, dynamic> json) => UpdateUserPutRequest(
    firstName: json["firstName"],
    lastName: json["lastName"],
    coverId: json["coverId"],
    isFemale: json["isFemale"],
    updateAddresses: List<UpdateAddress>.from(json["updateAddresses"].map((x) => UpdateAddress.fromJson(x))),
    userName: json["userName"],
    email: json["email"],
    phoneNumber: json["phoneNumber"],
    bankAccount: json["bankAccount"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "coverId": coverId,
    "lastName": lastName,
    "isFemale": isFemale,
    "updateAddresses": List<dynamic>.from(updateAddresses.map((x) => x.toJson())),
    "userName": userName,
    "email": email,
    "phoneNumber": phoneNumber,
    "bankAccount": bankAccount,
  };
}

class UpdateAddress {
  UpdateAddress({
     this.id,
     required this.name,
     required this.isDefault,
     required this.status,
  }){
    _id = _globalId++;
  }

  static int _globalId = 0;
  int? _id;
  String? id;
  String name;
  bool isDefault;
  int status;

  factory UpdateAddress.fromJson(Map<String, dynamic> json) => UpdateAddress(
    id: json["id"],
    name: json["name"],
    isDefault: json["isDefault"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "isDefault": isDefault,
    "status": status,
  };

  @override
  bool operator ==(Object other) {
    return (_id == (other as UpdateAddress)._id || hashCode == other.hashCode);
  }

}
