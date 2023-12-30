import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Approuter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor:isLightMode? lightColor : darkColor),

    );
  }
}