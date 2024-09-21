class OrdersModel {
  String? autmoblieId;
  String? autmoblieUsersid;
  String? autmoblieTypecar;
  String? autmoblieBrand;
  String? autmoblieCarnumber;
  String? autmoblieManfactoredate;
  String? autmoblieRecordedate;
  String? servicersId;
  String? servicersPrice;
  String? servicersNameservice;
  String? servicersDgree;
  String? servicersDate;
  String? servicersItem1;
  String? servicersItem2;
  String? servicersItem3;
  String? servicersItem4;
  String? servicersItem5;
  String? servicersImage;
  String? usersId;
  String? usersName;
  String? usersPassword;
  String? usersEmail;
  String? usersPhone;
  String? usersCreate;
  String? ordersId;
  String? ordersUsersid;
  String? ordersAutmobileid;
  String? ordersServicersid;
  String? ordersStatus;
  String? ordersInspect;
  String? ordersInspectdate;
  String? ordersFixed;
  String? ordersCheckup;
  String? ordersFinish;
  String? ordersRecordedate;
  String? ordersDeliverdate;
  String? ordersBookingdate;
  String? ordersBookingtime;
  String? ordersAddress;

  OrdersModel(
      {this.autmoblieId,
      this.autmoblieUsersid,
      this.autmoblieTypecar,
      this.autmoblieBrand,
      this.autmoblieCarnumber,
      this.autmoblieManfactoredate,
      this.autmoblieRecordedate,
      this.servicersId,
      this.servicersPrice,
      this.servicersNameservice,
      this.servicersDgree,
      this.servicersDate,
      this.servicersItem1,
      this.servicersItem2,
      this.servicersItem3,
      this.servicersItem4,
      this.servicersItem5,
      this.servicersImage,
      this.usersId,
      this.usersName,
      this.usersPassword,
      this.usersEmail,
      this.usersPhone,
      this.usersCreate,
      this.ordersId,
      this.ordersUsersid,
      this.ordersAutmobileid,
      this.ordersServicersid,
      this.ordersStatus,
      this.ordersInspect,
      this.ordersInspectdate,
      this.ordersFixed,
      this.ordersCheckup,
      this.ordersFinish,
      this.ordersRecordedate,
      this.ordersDeliverdate,
      this.ordersBookingdate,
      this.ordersBookingtime,
      this.ordersAddress});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    autmoblieId = json['autmoblie_id'];
    autmoblieUsersid = json['autmoblie_usersid'];
    autmoblieTypecar = json['autmoblie_typecar'];
    autmoblieBrand = json['autmoblie_brand'];
    autmoblieCarnumber = json['autmoblie_carnumber'];
    autmoblieManfactoredate = json['autmoblie_manfactoredate'];
    autmoblieRecordedate = json['autmoblie_recordedate'];
    servicersId = json['servicers_id'];
    servicersPrice = json['servicers_price'];
    servicersNameservice = json['servicers_nameservice'];
    servicersDgree = json['servicers_dgree'];
    servicersDate = json['servicers_date'];
    servicersItem1 = json['servicers_item1'];
    servicersItem2 = json['servicers_item2'];
    servicersItem3 = json['servicers_item3'];
    servicersItem4 = json['servicers_item4'];
    servicersItem5 = json['servicers_item5'];
    servicersImage = json['servicers_image'];
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersPassword = json['users_password'];
    usersEmail = json['users_email'];
    usersPhone = json['users_phone'];
    usersCreate = json['users_create'];
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersAutmobileid = json['orders_autmobileid'];
    ordersServicersid = json['orders_servicersid'];
    ordersStatus = json['orders_status'];
    ordersInspect = json['orders_inspect'];
    ordersInspectdate = json['orders_inspectdate'];
    ordersFixed = json['orders_fixed'];
    ordersCheckup = json['orders_checkup'];
    ordersFinish = json['orders_finish'];
    ordersRecordedate = json['orders_recordedate'];
    ordersDeliverdate = json['orders_deliverdate'];
    ordersBookingdate = json['orders_bookingdate'];
    ordersBookingtime = json['orders_bookingtime'];
    ordersAddress = json['orders_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['autmoblie_id'] = this.autmoblieId;
    data['autmoblie_usersid'] = this.autmoblieUsersid;
    data['autmoblie_typecar'] = this.autmoblieTypecar;
    data['autmoblie_brand'] = this.autmoblieBrand;
    data['autmoblie_carnumber'] = this.autmoblieCarnumber;
    data['autmoblie_manfactoredate'] = this.autmoblieManfactoredate;
    data['autmoblie_recordedate'] = this.autmoblieRecordedate;
    data['servicers_id'] = this.servicersId;
    data['servicers_price'] = this.servicersPrice;
    data['servicers_nameservice'] = this.servicersNameservice;
    data['servicers_dgree'] = this.servicersDgree;
    data['servicers_date'] = this.servicersDate;
    data['servicers_item1'] = this.servicersItem1;
    data['servicers_item2'] = this.servicersItem2;
    data['servicers_item3'] = this.servicersItem3;
    data['servicers_item4'] = this.servicersItem4;
    data['servicers_item5'] = this.servicersItem5;
    data['servicers_image'] = this.servicersImage;
    data['users_id'] = this.usersId;
    data['users_name'] = this.usersName;
    data['users_password'] = this.usersPassword;
    data['users_email'] = this.usersEmail;
    data['users_phone'] = this.usersPhone;
    data['users_create'] = this.usersCreate;
    data['orders_id'] = this.ordersId;
    data['orders_usersid'] = this.ordersUsersid;
    data['orders_autmobileid'] = this.ordersAutmobileid;
    data['orders_servicersid'] = this.ordersServicersid;
    data['orders_status'] = this.ordersStatus;
    data['orders_inspect'] = this.ordersInspect;
    data['orders_inspectdate'] = this.ordersInspectdate;
    data['orders_fixed'] = this.ordersFixed;
    data['orders_checkup'] = this.ordersCheckup;
    data['orders_finish'] = this.ordersFinish;
    data['orders_recordedate'] = this.ordersRecordedate;
    data['orders_deliverdate'] = this.ordersDeliverdate;
    data['orders_bookingdate'] = this.ordersBookingdate;
    data['orders_bookingtime'] = this.ordersBookingtime;
    data['orders_address'] = this.ordersAddress;
    return data;
  }
}