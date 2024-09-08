import 'package:flutter/material.dart';
import 'package:fruit_shop/widgets/main_appbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const MainAppBar()
      ),
    );
  }
}
