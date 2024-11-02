import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/item_details/pages/item_details_page.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ItemDetailsPage.route);
      },
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 3 / 4.4,
        child: LayoutBuilder(builder: (context, c) {
          return Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                  child: 'image.jpeg'.assetImage(
                      fit: BoxFit.cover,
                      width: c.maxWidth,
                      height: c.minHeight * 0.6),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Pizza King".body(context,
                          color: Colors.black, weight: FontWeight.bold),
                      const SizedBox(height: 2),
                      "Pizza, Pasta".bodySmall(context),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          const Icon(Icons.star,
                              size: 14, color: Colors.yellow),
                          const SizedBox(width: 4),
                          "4.5 ".labelLarge(context, color: Colors.black),
                          "(100+)".labelLarge(
                            context,
                            color: Colors.black.withOpacity(0.5),
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
