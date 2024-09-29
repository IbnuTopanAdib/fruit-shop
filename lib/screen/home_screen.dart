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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What do you want',
                    hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
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
        // Flexible widget digunakan untuk mengatur sisa ruang lebih fleksibel
        const Discount(),
        PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Fruit'),
                Tab(text: 'Veggie'),
                Tab(text: 'Other'),
              ],
            ),
          ),
        ),
        // Flexible untuk membuat GridView mengambil sisa ruang yang ada
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 7,
                    childAspectRatio: 0.65),
                itemBuilder: (context, index) {
                  return const Item();
                },
              ),
              GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 7,
                    childAspectRatio: 0.65),
                itemBuilder: (context, index) {
                  return const Item();
                },
              ),
              GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 7,
                    childAspectRatio: 0.65),
                itemBuilder: (context, index) {
                  return const Item();
                },
              ),
              GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 7,
                    childAspectRatio: 0.65),
                itemBuilder: (context, index) {
                  return const Item();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
