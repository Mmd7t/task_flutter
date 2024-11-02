import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/app/config/constants/constants.dart';
import 'package:test_flutter/app/config/enums/enums.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';
import 'package:test_flutter/app/config/widgets/global_button.dart';
import 'package:test_flutter/app/features/home/presentation/cubit/home_cubit.dart';
import 'package:test_flutter/app/features/home/presentation/widgets/dish_category_card.dart';
import 'package:test_flutter/app/features/home/presentation/widgets/free_delivery_card.dart';
import 'package:test_flutter/app/features/home/presentation/widgets/popular_card.dart';
import 'package:test_flutter/app/features/home/presentation/widgets/quick_browse_card.dart';
import 'package:test_flutter/app/features/home/presentation/widgets/restaurants_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCubit = context.read<HomeCubit>();
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Constants.lightPrimary,
            systemOverlayStyle: const SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Delivering to".bodySmall(context),
                Row(
                  children: [
                    "6th Of October, Giza".body(context),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  ],
                ),
              ],
            ),
            primary: true,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 150),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Hey there!".titleMedium(context),
                      const SizedBox(height: 4),
                      "Log in or create an account for a\nfaster ordering experience."
                          .bodySmall(context),
                      const SizedBox(height: 12),
                      GlobalButton(
                        onTap: () {},
                        text: 'Sign up',
                        type: ButtonType.filled,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            expandedHeight: kToolbarHeight + 150,
            pinned: true,
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Explore Dishes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: "Explore Dishes".titleMedium(context),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DishCategoryCard(
                    category: homeCubit.dishCategoriesList[index],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: homeCubit.dishCategoriesList.length,
                ),
              ),
              const SizedBox(height: 20),
              // Quick Browse
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: "Quick Browse".titleMedium(context),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => QuickBrowseCard(
                    quickBrowse: homeCubit.quickBrowseList[index],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: homeCubit.quickBrowseList.length,
                ),
              ),
              const SizedBox(height: 24),
              // Restaurants you know
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: "Restaurants you know".titleMedium(context),
              ),
              const SizedBox(height: 16),
              AspectRatio(
                aspectRatio: 16 / 9.5,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: 3,
                  itemBuilder: (context, index) => const RestaurantCard(),
                ),
              ),
              const SizedBox(height: 24),
              const FreeDeliveryCard(),
              const SizedBox(height: 24),
              // Popular Today
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: "Popular Today".titleMedium(context),
              ),
              const SizedBox(height: 16),
              AspectRatio(
                aspectRatio: 15 / 7,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemCount: 5,
                  itemBuilder: (context, index) => const PopularCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
