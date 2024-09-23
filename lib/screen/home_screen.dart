import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fruit_shop/const/palette.dart';
import 'package:fruit_shop/widgets/discount.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
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
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'What do you want',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Palette.greyColor),
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TabBar(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              splashFactory: NoSplash.splashFactory,
              automaticIndicatorColorAdjustment: false,
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
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("All"),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("Fruit"),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("Nut"),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("Other"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, i) {
                      return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 300,
                            margin: const EdgeInsets.only(
                                right: 10, top: 10, bottom: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/discount1.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ));
                    }),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (_, i) {
                      return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 300,
                            margin: const EdgeInsets.only(
                                right: 10, top: 10, bottom: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/discount1.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ));
                    }),
                Material(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Text("Content"),
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Text("Content"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
