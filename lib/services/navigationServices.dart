import 'package:flutter/cupertino.dart';

class NavigationServices{
  final GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName){
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(){
    return navigatorKey.currentState!.pop();
  }
}