import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/icons_extensions.dart';
import 'package:test_flutter/app/config/extensions/image_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';

class BasketItemCard extends StatelessWidget {
  const BasketItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              "Pizza".body(
                context,
                weight: FontWeight.bold,
              ),
              const SizedBox(height: 2),
              "Closed".bodySmall(context),
              const SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {},
                label: "Edit".labelLarge(context),
                icon: "edit".icon(),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
              ),
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
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: "image.jpeg".assetImage(),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.color.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "delete".icon(),
                    "1".bodySmall(context, color: Colors.white),
                    const Icon(Icons.add, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
