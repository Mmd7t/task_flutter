import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/icons_extensions.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/item_details/pages/item_details_page.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ItemDetailsPage.route);
      },
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: LayoutBuilder(builder: (context, c) {
          return Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
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
                      Row(
                        children: [
                          'clock-circle'.icon(),
                          const SizedBox(width: 4),
                          "36 mins".labelLarge(
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
