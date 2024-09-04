import 'package:get/get.dart';
import 'package:task/screen/home/model/first_api_model.dart';
import 'package:task/utils/helper/api_helper.dart';

class GetXC extends GetxController{
  RxList<FirstAPIModel> modelList=<FirstAPIModel>[].obs;
  Rxn<FirstAPIModel> model=Rxn();
  Future<void> getAPIData(int? id)
  async {
    if(id==null)
      {
        if(await APIHelper.apiHelper.getAPIData(id)!=null) {
          modelList.value = (await APIHelper.apiHelper.getAPIData(null))!;
        }
        else{
          modelList.value=[];
        }
      }
    else{
      List<FirstAPIModel> l1 = (await APIHelper.apiHelper.getAPIData(id))!;
      model.value=l1[0];
    }
  }
}