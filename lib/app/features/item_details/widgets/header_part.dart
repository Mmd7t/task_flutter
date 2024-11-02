import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        "image.jpeg"
            .assetImage(fit: BoxFit.cover, width: context.width, height: 210),
        Positioned(
          bottom: -60,
          child: Container(
            width: context.width - 32,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: "image.jpeg".assetImage(fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
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
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          "Delivery In"
                              .body(context, color: Colors.grey.shade800),
                          const SizedBox(height: 2),
                          "Free".labelLarge(context, color: Colors.black),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: VerticalDivider(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          "Delivery Time"
                              .body(context, color: Colors.grey.shade800),
                          const SizedBox(height: 2),
                          "36 mins".labelLarge(context, color: Colors.black),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: VerticalDivider(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          "Delivery By"
                              .body(context, color: Colors.grey.shade800),
                          const SizedBox(height: 2),
                          "Free".labelLarge(context, color: Colors.black),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
