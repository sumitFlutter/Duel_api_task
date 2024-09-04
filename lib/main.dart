import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/utils/routes/routes.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
    )
  );
}