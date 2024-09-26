import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fruit_shop/const/palette.dart';
import 'package:fruit_shop/widgets/discount.dart';
import 'package:fruit_shop/widgets/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What do you want',
                      hintStyle:
                          Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Palette.blackColor,
                              ),
                      prefixIcon: const Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt))
              ],
            ),
          ),
          const Discount(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: TabBar(
              dividerColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              splashFactory: NoSplash.splashFactory,
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: const TextStyle(
                color: Colors.black,
              ),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Fruit',
                ),
                Tab(
                  text: 'Veggie',
                ),
                Tab(
                  text: 'Other',
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Item();
                  },
                ),
                GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Item();
                  },
                ),
                GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Item();
                  },
                ),
                GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Item();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
