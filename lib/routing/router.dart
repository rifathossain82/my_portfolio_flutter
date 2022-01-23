import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/pages/home/homepage.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return getPageRoute(Homepage());
    case AboutRoute:
      return getPageRoute(Center(child: Text('About'),));
    case ProjectsRoute:
      return getPageRoute(Center(child: Text('project'),));
    case BlogRoute:
      return getPageRoute(Center(child: Text('blog'),));
    case ContactsRoute:
      return getPageRoute(Center(child: Text('contact'),));

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