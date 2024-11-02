import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_flutter/app/config/constants/constants.dart';
import 'package:test_flutter/app/features/home/models/dish_category_model.dart';
import 'package:test_flutter/app/features/home/models/quick_browse_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final List<DishCategoryModel> dishCategoriesList = [
    DishCategoryModel(
        title: 'Noodles', icon: 'ramen.png', bgColor: Constants.lightRed),
    DishCategoryModel(title: 'Grilled Chicken', icon: 'chicken.png'),
    DishCategoryModel(title: 'Pasta', icon: 'spaghetti.png'),
    DishCategoryModel(title: 'Sushi', icon: 'sushi.png'),
    DishCategoryModel(title: 'Salads', icon: 'salad.png'),
    DishCategoryModel(title: 'Sandwiches', icon: 'sandwish.png'),
  ];

  final List<QuickBrowseModel> quickBrowseList = [
    QuickBrowseModel(
        title: 'Food Offers',
        icon: 'discount.png',
        bgColor: Constants.lightRed),
    QuickBrowseModel(
        title: 'Top-Rated', icon: 'star.png', bgColor: Constants.lightYellow),
    QuickBrowseModel(
        title: 'Live Tracking',
        icon: 'location.png',
        bgColor: Constants.lightRed),
  ];
}
