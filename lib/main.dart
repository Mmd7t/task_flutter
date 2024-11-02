import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/app/features/basket/pages/basket_page.dart';
import 'package:test_flutter/app/features/home/presentation/cubit/home_cubit.dart';
import 'package:test_flutter/app/features/home/presentation/pages/main_page.dart';
import 'package:test_flutter/app/features/item_details/pages/item_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomeCubit()),
      ],
      child: MaterialApp(
        title: 'Test Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            primary: const Color(0xFF067B96),
            surfaceTint: Colors.transparent,
          ),
          useMaterial3: true,
        ),
        initialRoute: MainPage.route,
        routes: {
          MainPage.route: (context) => const MainPage(),
          ItemDetailsPage.route: (context) => const ItemDetailsPage(),
          BasketPage.route: (context) => const BasketPage(),
        },
      ),
    );
  }
}
