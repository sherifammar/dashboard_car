

import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class OrdersApproveDetailData {
  Crud crud;
 OrdersApproveDetailData(this.crud);
  getordersData() async {

    var response = await crud
        .postData(AppLink.approveorders, {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  
changeToarchive (String ordersid) async {
    var response =
        await crud.postData('${AppLink.updatetoarchive}', {'ordersid': ordersid});

    return response.fold((l) => l, (r) => r); // error => l not 1
  }

    removeOrder(String ordersid) async {
    var response =
        await crud.postData('${AppLink.deletorders}', {'ordersid': ordersid});

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
}
