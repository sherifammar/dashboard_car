import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class UndercheckupData {
  Crud crud;
 UndercheckupData(this.crud);

  getundercheckupData() async {
    var response = await crud.postData(AppLink.undercheckup, {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  //=================
  Uppdatefixtocheckup (
      String ordersid, String orderscheckup) async {
    var response = await crud.postData('${AppLink.upfixtocheckup }', {
      'ordersid': ordersid,
          'orderscheckup': orderscheckup
    });

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
  //================

 
}
