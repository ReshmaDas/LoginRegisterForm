import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTab extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller;

  final List<Tab> myTabs = <Tab>[
    const Tab(
      child: Text(
        'All',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    const Tab(
      child: Text(
        'Milk & Dairies',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    const Tab(
      child: Text(
        'Coffees & Teas',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    const Tab(
      child: Text(
        'Pet Foods',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    const Tab(
      child: Text(
        'Meats',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    const Tab(
      child: Text(
        'Vegetables',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    const Tab(
      child: Text(
        'Fruits',
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
  ];
  @override
  void onInit() {
    controller = TabController(length: 7, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
