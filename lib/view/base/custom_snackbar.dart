import 'package:flutter/material.dart';
import 'package:flutter_restaurant/helper/responsive_helper.dart';
import 'package:flutter_restaurant/main.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/styles.dart';

void showCustomSnackBar(String? message, {bool isError = true, bool isToast = false}) {
  final width = MediaQuery.of(Get.context!).size.width - 50;
  ScaffoldMessenger.of(Get.context!)..hideCurrentSnackBar()..showSnackBar(SnackBar(

    content: Text(message!, style: rubikRegular.copyWith(
      color: Colors.white,
    )),
    margin: ResponsiveHelper.isDesktop(Get.context!)
        ?  EdgeInsets.only(right: width * 0.7, bottom: Dimensions.paddingSizeExtraSmall, left: Dimensions.paddingSizeExtraSmall)
        :  EdgeInsets.only(
  bottom: MediaQuery.of(Get.context!).size.height - 100,
    left: 10,
    right: 10,
  ),
    behavior: SnackBarBehavior.floating,

    backgroundColor: isError ? Colors.red : Colors.green,
  ));

}