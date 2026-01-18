import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTab2 extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller2;

  final List<Tab> myTabs2 = <Tab>[
    const Tab(
      iconMargin: EdgeInsets.all(2),
      text: 'Top Selling',
    ),
    // Tab(
    //   text: 'Trending Products',
    // ),
  ];
  @override
  void onInit() {
    controller2 = TabController(length: 1, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller2.dispose();
    super.onClose();
  }
}

class MyTab3 extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller3;

  final List<Tab> myTabs3 = <Tab>[
    // Tab(
    //   iconMargin: EdgeInsets.all(2),
    //   text: 'Top Selling',
    // ),
    const Tab(
      iconMargin: EdgeInsets.all(2),
      text: 'Trending Products',
    ),
  ];
  @override
  void onInit() {
    controller3 = TabController(length: 1, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller3.dispose();
    super.onClose();
  }
}
