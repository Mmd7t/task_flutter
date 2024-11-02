import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/constants/constants.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/home/models/dish_category_model.dart';

class DishCategoryCard extends StatelessWidget {
  final DishCategoryModel category;

  const DishCategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: category.bgColor ?? Constants.lightPrimary,
          radius: 32,
          child: category.icon.assetImage(width: 32, fit: BoxFit.cover),
        ),
        const SizedBox(height: 8),
        category.title.bodySmall(context),
      ],
    );
  }
}
