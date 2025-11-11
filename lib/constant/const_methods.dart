import 'package:flutter/widgets.dart';

//screen height
double screenHeight({required BuildContext ctx}){
  return MediaQuery.of(ctx).size.height;
}
//screen width
double screenWidth({required BuildContext ctx}){
  return MediaQuery.of(ctx).size.width;
}