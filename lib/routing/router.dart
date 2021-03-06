import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/pages/about/aboutPage.dart';
import 'package:my_protfolio/pages/blog/blogpage.dart';
import 'package:my_protfolio/pages/contact/contactPage.dart';
import 'package:my_protfolio/pages/home/homepage.dart';
import 'package:my_protfolio/pages/projects/projectPage.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return getPageRoute(Homepage());
    case AboutRoute:
      return getPageRoute(AboutPage());
    case ProjectsRoute:
      return getPageRoute(ProjectsPage());
    case BlogRoute:
      return getPageRoute(BlogPage());
    case ContactsRoute:
      return getPageRoute(ContactPage());

    default: return getPageRoute(Homepage());
  }
}

PageRoute getPageRoute(Widget child) {
  return fadeRoute(child: child);
}

class fadeRoute extends PageRouteBuilder{
  final Widget child;
  fadeRoute({required this.child})
      :super(
      pageBuilder:(
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation
          )=>
      child,
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
          )=>
          FadeTransition(opacity: animation,child: child,)
  );
}