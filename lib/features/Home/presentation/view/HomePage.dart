import 'package:flutter/material.dart';
import '../../../../core/Widgets/AppBar.dart';
import '../../../../core/Widgets/navigation_drawer_widget.dart';
import 'Widgets/imageSlider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    drawer: NavigationDrawerWidget(),
      body: Column(
        children: [
          HomeAppBar(),
          ImageSlider()
        ],
      ),
    );
  }
}

