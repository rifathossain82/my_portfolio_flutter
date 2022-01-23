import 'package:flutter/material.dart';

import '../../locator.dart';
import '../../services/navigationServices.dart';

class NavBar_Item extends StatelessWidget {

  String item;
  String navigatePath;
  NavBar_Item(this.item,this.navigatePath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
        onTap: (){

          locator<NavigationServices>().navigateTo(navigatePath);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: Text(
            item,
            style: TextStyle(fontSize: 18,),
          ),
        ));
  }
}
