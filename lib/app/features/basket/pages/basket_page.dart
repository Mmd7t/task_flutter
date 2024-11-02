import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/enums/enums.dart';
import 'package:test_flutter/app/config/extensions/icons_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/config/widgets/global_button.dart';
import 'package:test_flutter/app/features/basket/widgets/basket_item_card.dart';
import 'package:test_flutter/app/features/basket/widgets/like_item_card.dart';

class BasketPage extends StatelessWidget {
  static const String route = '/basket';
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Basket".titleMedium(context),
            "pizza king".bodySmall(context),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const BasketItemCard(),
                    Divider(
                      thickness: 1,
                      height: 32,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: "You might also like...".titleMedium(context)),
            ),
            const SizedBox(height: 16),
            AspectRatio(
              aspectRatio: 15 / 7,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemCount: 5,
                itemBuilder: (context, index) => const LikeItemCard(),
              ),
            ),
            Divider(
              thickness: 8,
              height: 32,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: "Save on your order".titleMedium(context)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter voucher code",
                  suffixIcon: UnconstrainedBox(
                      child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 15),
                    child: "Submit".labelLarge(context),
                  )),
                  prefixIcon: UnconstrainedBox(child: "ticket".icon()),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 8,
              height: 32,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: "Payment Summary".titleMedium(context)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Subtotal".bodySmall(context),
                      "EGP 146.00".labelLarge(context, color: Colors.black),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Free Delivery".bodySmall(context),
                      "EGP 15.00".labelLarge(
                        context,
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Service In".bodySmall(context),
                      "EGP 7.30".labelLarge(
                        context,
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Total Amount".body(context, weight: FontWeight.bold),
                      "EGP 153.30".titleSmall(context),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              color: Colors.grey.shade400,
              blurRadius: 12,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: GlobalButton(
                onTap: () {},
                text: "Add Items",
                type: ButtonType.outlined,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: GlobalButton(
                onTap: () {},
                text: "Checkout",
                type: ButtonType.filled,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
