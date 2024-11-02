import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';

class DetailsBottomSheet extends StatelessWidget {
  const DetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.7,
      child: LayoutBuilder(builder: (context, c) {
        return Column(
          children: [
            Stack(
              children: [
                "image.jpeg".assetImage(
                  fit: BoxFit.cover,
                  width: context.width,
                  height: c.minHeight * 0.58,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(
                        side: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Pizza King".titleLarge(context),
                  const SizedBox(height: 2),
                  "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet."
                      .body(context),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "EGP 22.00".labelLarge(
                        context,
                        color: Colors.black,
                        weight: FontWeight.w600,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(
                                side: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          "1".bodySmall(context),
                          const SizedBox(width: 8),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: context.color.primary,
                              shape: CircleBorder(
                                side: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: context.color.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: 'Add To Basket'
                              .titleMedium(context, color: Colors.white),
                        ),
                        "EGP 22.00".labelLarge(
                          context,
                          color: Colors.white,
                          weight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
