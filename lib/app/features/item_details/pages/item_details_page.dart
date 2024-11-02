import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/icons_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/basket/pages/basket_page.dart';
import 'package:test_flutter/app/features/item_details/widgets/details_part.dart';
import 'package:test_flutter/app/features/item_details/widgets/header_part.dart';

class ItemDetailsPage extends StatelessWidget {
  static const String route = '/details';
  const ItemDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: "arrow".icon(),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: "search".icon(),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: const Column(
        children: [
          HeaderPart(),
          SizedBox(height: 76),
          DetailsPart(),
          SizedBox(height: 16)
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            "Add EGP 20.00 to start your order".body(context),
            const SizedBox(height: 16),
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => Navigator.of(context).pushNamed(BasketPage.route),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.color.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: " 0 ".body(context, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: 'View basket'
                          .titleMedium(context, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
