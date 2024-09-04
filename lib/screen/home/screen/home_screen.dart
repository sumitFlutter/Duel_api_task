import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conttroller/getx_conttroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetXC con=Get.put(GetXC());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    con.getAPIData(null);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("JsonPlaceHolder Task"),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,),
      body: Obx(
        () =>  ListView.builder(padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: ListTile(
              onTap: () {
                con.model.value=null;
                con.getAPIData(con.modelList[index].id!);
                Get.toNamed("details");
              },
              title: Text(con.modelList[index].title!),
              subtitle: Text(con.modelList[index].body!),
            ),
          );
        },itemCount: con.modelList.length,),
      ),
    );
  }
}
