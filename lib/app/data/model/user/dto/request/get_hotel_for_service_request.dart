


class GetHotelForServicesRequest {

  int invOrganizationId ;

  GetHotelForServicesRequest({required this.invOrganizationId});


  Map<String , dynamic> toJson() => {
    "invOrganizationId" : invOrganizationId
  };
}