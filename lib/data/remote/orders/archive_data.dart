import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class ArchivelData {
  Crud crud;
ArchivelData(this.crud);

  getAchiveData() async {
    var response = await crud.postData(AppLink.archive, {}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }


 
}