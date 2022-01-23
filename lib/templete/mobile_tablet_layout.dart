import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/pages/home/homepage.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:my_protfolio/widget/ligh_dark/light_dark.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Mobile_TebletLayout extends StatefulWidget {
  Mobile_TebletLayout({Key? key}) : super(key: key);

  @override
  State<Mobile_TebletLayout> createState() => _Mobile_TebletLayoutState();
}

class _Mobile_TebletLayoutState extends State<Mobile_TebletLayout> {

  var index=0;
  bool isExpanded=false;

  final pages=[
    Homepage(),
    Text('Favorite',style: TextStyle(fontSize: 52),),
    Text('Feedback',style: TextStyle(fontSize: 52),),
    Text('Settings',style: TextStyle(fontSize: 52),),
    Text('contacts',style: TextStyle(fontSize: 52),),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text(app_name),
        elevation: 0,
        actions: [
          Light_Dark_Mode(),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text(home_),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.info_outline),
                label: Text(about_),
                selectedIcon: Icon(Icons.info),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.apps),
                label: Text(projects_),
                selectedIcon: Icon(Icons.apps_outlined)
              ),
              NavigationRailDestination(
                  icon: Icon(Icons.event_note),
                  label: Text(blog_),
                selectedIcon: Icon(Icons.event_outlined)
              ),
              NavigationRailDestination(
                  icon: Icon(Icons.contact_support),
                  label: Text(contacts_),
                  selectedIcon: Icon(Icons.contact_support),
              ),
            ],
            selectedIndex: index,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/my_pic.JPG',),
              ),
            ),
            //labelType: NavigationRailLabelType.selected,
            minWidth: 50,
            onDestinationSelected: (_index){
              setState(() {
                index=_index;
              });
            },
            ),
          Expanded(child: Container(child: Center(child: pages[index]),))
        ],
      ),
    );
  }
}
