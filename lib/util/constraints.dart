import 'package:flutter/cupertino.dart';

double calculateMaxWidth(BuildContext context){
  final width = MediaQuery.of(context).size.width - 50;
  return width;
}

double calculateMaxHeight(BuildContext context){
  final height = MediaQuery.of(context).size.height - 50;
  return height;
}