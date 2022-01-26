import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constraints/strings.dart';
import '../../providers/themeProvider.dart';

Widget design_socialMediaIcon(String url, IconData icon, BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
  final iconBorderColor =
      themeProvider.isDarkMode ? Colors.white70 : Colors.grey;
  return InkWell(
      onTap: () {
        _launchURL(url);
      },
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 45,
        width: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: iconBorderColor, width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(icon),
        ),
      ));
}

void _launchURL(String url) async {
  if (!await launch(
    url,
    forceSafariVC: true,
    forceWebView: true,
    enableJavaScript: true,
  )) {
    throw 'Could not launch $url';
  }
}
