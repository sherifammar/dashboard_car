import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class OrdersApprove_underinspectlData {
  Crud crud;
 OrdersApprove_underinspectlData(this.crud);

  getApproveUnderinspectsData() async {
    var response = await crud.postData(AppLink.approveorders, {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  //=================
  UppdateapproveToinspect(
      String ordersid, String ordersinspectdate, String ordersinspect) async {
    var response = await crud.postData('${AppLink.upapprovetoinspect}', {
      'ordersid': ordersid,
      'ordersinspectdate': ordersinspectdate,
      'ordersinspect': ordersinspect
    });

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
  //================

 
}
