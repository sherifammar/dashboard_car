import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class OrdersPending {
  Crud crud;
  OrdersPending(this.crud);
  getPendingData() async {
    var response = await crud.postData(AppLink.pending, {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

// ==========================

  removePendingOrder(String ordersid) async {
    var response =
        await crud.postData('${AppLink.deletorders}', {'ordersid': ordersid});

    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  // ==================================
// changeToapprove (String ordersid) async {
//     var response =
//         await crud.postData('${AppLink.updatetoapprove}', {'ordersid': ordersid});

//     return response.fold((l) => l, (r) => r); // error => l not 1
//   }
//==========================================
  UpdateToapprove(String ordersid, String ordersbookingdate) async {
    var response = await crud.postData('${AppLink.updatetoapprove}',
        {'ordersid': ordersid, 
        'ordersbookingdate': ordersbookingdate});

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
}
