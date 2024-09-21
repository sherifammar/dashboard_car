




import '../../core/class/crud.dart';
import '../../linkapi.dart';






class SettingData {
  Crud crud;
 SettingData(this.crud);

  getCountData() async {

    var response = await crud
        .postData(AppLink.counthome, {
        
        }); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

}
