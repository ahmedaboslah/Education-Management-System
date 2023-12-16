import 'package:education_management_system/core/Widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

import '../../features/Home/presentation/view/Widgets/ButtonIconsAppBar.dart';
import '../utils/Styles.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          const Text(
            'Eelu.',
            style: Styles.style22,
          ),
          const Spacer(
            flex: 1,
          ),
          ButtonIcon(
            icon: const Icon(Icons.menu),
            onpressed: () {
              return NavigationDrawerWidget();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          ButtonIcon(icon: const Icon(Icons.search_outlined), onpressed: () {}),
          const SizedBox(
            width: 8,
          ),
          ButtonIcon(icon: const Icon(Icons.person), onpressed: () {}),
          const SizedBox(
            width: 8,
          ),
          ButtonIcon(icon: const Icon(Icons.brightness_7), onpressed: () {}),
        ],
      ),
    );
  }
}
