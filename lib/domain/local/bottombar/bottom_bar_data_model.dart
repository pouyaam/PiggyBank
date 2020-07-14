import 'package:flutter/material.dart';

class BottomBarDataModel {
  String title;
  IconData iconData;

  BottomBarDataModel({
    this.title,
    this.iconData
  });
}

final List<BottomBarDataModel> btmItems = [
  BottomBarDataModel(title: null, iconData: Icons.account_balance_wallet),
  BottomBarDataModel(title: null, iconData: Icons.view_carousel),
];