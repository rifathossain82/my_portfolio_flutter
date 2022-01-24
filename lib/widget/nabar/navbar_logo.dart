import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../providers/themeProvider.dart';

class NavBar_Logo extends StatelessWidget {
  const NavBar_Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        child: FaIcon(FontAwesomeIcons.dAndD,size: 65,),
      ),
    );
  }
}
