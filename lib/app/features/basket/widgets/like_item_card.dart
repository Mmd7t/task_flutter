import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';

class LikeItemCard extends StatelessWidget {
  const LikeItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: LayoutBuilder(builder: (context, c) {
        return Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: 'image.jpeg'.assetImage(
                        fit: BoxFit.cover,
                        width: c.maxWidth,
                        height: c.minHeight * 0.6),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: IconButton.filled(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: context.color.primary),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Pizza King".body(context,
                        color: Colors.black, weight: FontWeight.bold),
                    const SizedBox(height: 2),
                    "EGP 5.00".labelLarge(
                      context,
                      color: Colors.black,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
