import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/item_details/widgets/details_bottom_sheet.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => BottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            enableDrag: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            onClosing: () {},
            builder: (context) => const DetailsBottomSheet(),
          ),
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                "Pizza King".body(
                  context,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 2),
                "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet."
                    .bodySmall(context),
                const SizedBox(height: 10),
                "EGP 22.00".labelLarge(
                  context,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(
            width: context.width * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 1,
                child: "image.jpeg".assetImage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
