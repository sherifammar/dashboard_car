import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class UnderfixData {
  Crud crud;
 UnderfixData(this.crud);

  getUnderfixData() async {
    var response = await crud.postData(AppLink.underfix, {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  //=================
  UppdateinspectTofix(
      String ordersid, String ordersfixed) async {
    var response = await crud.postData('${AppLink.upinspecttofix}', {
      'ordersid': ordersid,
          'ordersfixed': ordersfixed
    });

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
  //================

 
}
