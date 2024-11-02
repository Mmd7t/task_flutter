import 'package:flutter/material.dart';

class DishCategoryModel {
  final String title;
  final String icon;
  final Color? bgColor;

  DishCategoryModel({
    required this.title,
    required this.icon,
    this.bgColor,
  });
}
