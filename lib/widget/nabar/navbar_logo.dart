import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../providers/themeProvider.dart';

class NavBar_Logo extends StatelessWidget {
  const NavBar_Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final logo=Provider.of<ThemeProvider>(context).themeMode==ThemeMode.dark
        ?'images/logo4.json':'images/logo4.json';

    return SizedBox(
      child: Lottie.asset(logo,height: 100,width: 100,),
    );
  }
}
