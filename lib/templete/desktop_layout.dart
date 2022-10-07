import 'package:flutter/material.dart';
import 'package:my_protfolio/widget/custom_scroll_behavior.dart';
import '../constraints/strings.dart';
import '../locator.dart';
import '../routing/router.dart';
import '../services/navigationServices.dart';
import '../widget/centeredView/centeredView.dart';
import '../widget/nabar/navbar.dart';

class Desktop_Layout extends StatelessWidget {
  const Desktop_Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CenteredView(
        child: Column(
          children: [
            Nav_Bar(),
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Navigator(
                          key: locator<NavigationServices>().navigatorKey,
                          onGenerateRoute: generateRoute,
                          initialRoute: HomeRoute,
                        ),
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
