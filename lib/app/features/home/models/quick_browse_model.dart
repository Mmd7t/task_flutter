import 'package:flutter/material.dart';

class QuickBrowseModel {
  final String title;
  final String icon;
  final Color? bgColor;

  QuickBrowseModel({
    required this.title,
    required this.icon,
    this.bgColor,
  });
}
