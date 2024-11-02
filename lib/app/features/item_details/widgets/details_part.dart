import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/icons_extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/features/item_details/widgets/item_card.dart';

class DetailsPart extends StatefulWidget {
  const DetailsPart({super.key});

  @override
  State<DetailsPart> createState() => _DetailsPartState();
}

class _DetailsPartState extends State<DetailsPart>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Listen for tab changes and scroll to the corresponding item
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _scrollController.scrollTo(
          index: _tabController.index,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                "menu".icon(),
                Expanded(
                  child: TabBar(
                    controller: _tabController,
                    tabAlignment: TabAlignment.center,
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(
                        child: SizedBox(
                          width: (context.width) / 5.5,
                          child: Center(
                            child: "Appetizers".labelLarge(
                              context,
                              weight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: SizedBox(
                          width: (context.width) / 3,
                          child: Center(
                            child: "Cheese Manakish".labelLarge(
                              context,
                              weight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: SizedBox(
                          width: (context.width) / 8,
                          child: Center(
                            child: "Pizza".labelLarge(
                              context,
                              weight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemScrollController: _scrollController,
              itemCount: 3,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          if (index == 0)
                            "Appetizers".titleLarge(context)
                          else if (index == 1)
                            "Cheese Manakish".titleLarge(context)
                          else
                            "Pizza".titleLarge(context),
                          const SizedBox(height: 16),
                          const ItemCard(),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.shade200,
                            height: 32,
                          ),
                          const ItemCard(),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.shade200,
                            height: 32,
                          ),
                          const ItemCard(),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 8,
                      color: Colors.grey.shade200,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
