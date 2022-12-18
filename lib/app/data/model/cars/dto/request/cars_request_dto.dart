


class CarsRequest {
  CarsRequest({required this.groupId});
  int groupId ;

  Map<String , dynamic> toJson ()  => {
    "groupId" : groupId
  };
}