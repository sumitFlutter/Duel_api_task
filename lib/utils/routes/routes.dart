import 'package:flutter/cupertino.dart';
import 'package:task/screen/details/view/details_screen.dart';
import 'package:task/screen/home/screen/home_screen.dart';

Map <String,WidgetBuilder> appRoutes={
  "/":(context) => const HomeScreen(),
  "details":(context) => DetailsScreen()
};