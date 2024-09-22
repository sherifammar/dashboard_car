import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class UnderfinishData {
  Crud crud;
 UnderfinishData(this.crud);

  getunderfinishData() async {
    var response = await crud.postData(AppLink.underfinish , {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  //=================
  Uppdatecheckuptofinish(
      String ordersid, String ordersfinish ) async {
    var response = await crud.postData('${AppLink.upcheckuptofinish }', {
      'ordersid': ordersid,
          'ordersfinish': ordersfinish
    });

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
  //================

 
}
