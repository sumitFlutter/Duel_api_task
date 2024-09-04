import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task/screen/home/model/first_api_model.dart';
class APIHelper{
  static APIHelper apiHelper=APIHelper._();
  APIHelper._();
  Future<List<FirstAPIModel>?> getAPIData(int? id)
  async {
    String link="";
    id==null?link="https://jsonplaceholder.typicode.com/posts/":
        link="https://jsonplaceholder.typicode.com/posts/$id";
    var res=await http.get(Uri.parse(link));
    if(res.statusCode==200)
      {
        if(id==null)
          {
            List json=await jsonDecode(res.body) ;
            List<FirstAPIModel> api=json.map((e) => FirstAPIModel.mapToModel(e),).toList();
            return api;
          }
        else{
          var json= await jsonDecode(res.body);
          FirstAPIModel m1=FirstAPIModel.mapToModel(json);
          List<FirstAPIModel> api1=[m1];
          return api1;
        }
      }
    else{
      return null;
    }
  }
}