import 'package:education_management_system/core/utils/Styles.dart';
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
    return  Scaffold(
    appBar: AppBar(title: Text('Eelu',style: Styles.style22.copyWith(color: Colors.black),),centerTitle: true,backgroundColor: Colors.white,),
    drawer: NavigationDrawerWidget(),  
      body: Column(
        children: [
          // HomeAppBar(),
          ImageSlider()
        ],
      ),
    );
  }
}

