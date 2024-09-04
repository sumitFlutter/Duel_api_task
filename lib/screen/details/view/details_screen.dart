import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/conttroller/getx_conttroller.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  GetXC con=Get.put(GetXC());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Details Screen"),
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: () {
        Get.back();
      }, icon: Icon(Icons.arrow_back_ios_outlined)),),
      body: Center(
        child: Obx(
            () => con.model.value==null?CircularProgressIndicator():ListTile(
            onTap: () {
            },
            title: Text(con.model.value!.title!),
            subtitle: Text(con.model.value!.body!),
          ),
        ),
      ),
    );
  }
}
