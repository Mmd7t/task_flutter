import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/constants/constants.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/home/models/quick_browse_model.dart';

class QuickBrowseCard extends StatelessWidget {
  final QuickBrowseModel quickBrowse;

  const QuickBrowseCard({super.key, required this.quickBrowse});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 11,
      child: Container(
        alignment: AlignmentDirectional.topStart,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: quickBrowse.bgColor ?? Constants.lightPrimary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            quickBrowse.icon.assetImage(width: 32, fit: BoxFit.cover),
            const SizedBox(height: 8),
            quickBrowse.title.titleSmall(context),
          ],
        ),
      ),
    );
  }
}
