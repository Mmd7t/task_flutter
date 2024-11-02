import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';

class FreeDeliveryCard extends StatelessWidget {
  const FreeDeliveryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'Free Delivery, on us'
                    .titleMedium(context, color: Colors.white),
                const SizedBox(height: 2),
                'A gift for your first order'
                    .bodySmall(context, color: Colors.white),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: "Order now".labelLarge(context, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
