 import 'package:flutter/material.dart';

import '../utils/Styles.dart';

AppBar MainAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'EELU',
        style: Styles.style22.copyWith(color: Colors.black,),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

