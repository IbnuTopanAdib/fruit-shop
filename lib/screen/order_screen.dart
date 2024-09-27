import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/cart_screen.dart';
import 'package:fruit_shop/widgets/main_appbar.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(flexibleSpace: const MainAppBar()),
        body: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
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
                  Tab(
                    text: 'Cart',
                  ),
                  Tab(
                    text: 'Delivery',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    CartScreen(),
                    Center(
                      child: Text('Ijik'),
                    ),
                    Center(
                      child: Text('Ijik'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
