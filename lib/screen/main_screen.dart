import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_shop/const/palette.dart';
import 'package:fruit_shop/providers/bottom_nav_provider.dart';
import 'package:fruit_shop/screen/cart_screen.dart';
import 'package:fruit_shop/screen/categories_screen.dart';
import 'package:fruit_shop/screen/home_screen.dart';
import 'package:fruit_shop/screen/order_screen.dart';
import 'package:fruit_shop/screen/personal_screen.dart';
import 'package:fruit_shop/widgets/main_appbar.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(bottomNavProvider);
    return Scaffold(
      appBar: AppBar(flexibleSpace: const MainAppBar()),
      body: switch (currentIndex) {
        0 => const HomeScreen(),
        1 => const CategoriesScreen(),
        2 => const OrderScreen(),
        3 => const PersonalScreen(),
        _ => const Center(child: Text('Page not found')),
      },
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OrderScreen()),
            );
          } else {
            ref.read(bottomNavProvider.notifier).navigateTo(index);
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Palette.primary,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Personal'),
        ],
      ),
    );
  }
}
