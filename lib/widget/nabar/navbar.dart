import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/ligh_dark/light_dark.dart';
import 'package:my_protfolio/widget/nabar/navbar_item.dart';
import 'package:my_protfolio/widget/nabar/navbar_logo.dart';

class Nav_Bar extends StatelessWidget {
  Nav_Bar({Key? key}) : super(key: key);
  double sizedBox_width=10;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBar_Logo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Light_Dark_Mode(),
              SizedBox(width: sizedBox_width,),
              NavBar_Item(home_,HomeRoute),
              SizedBox(width: sizedBox_width,),
              NavBar_Item(about_,AboutRoute),
              SizedBox(width: sizedBox_width,),
              NavBar_Item(projects_,ProjectsRoute),
              SizedBox(width: sizedBox_width,),
              NavBar_Item(blog_,BlogRoute),
              SizedBox(width: sizedBox_width,),
              NavBar_Item(contacts_,ContactsRoute),
            ],
          ),
        ],
      ),
    );
  }
}
