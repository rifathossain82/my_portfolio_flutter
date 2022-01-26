import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/nabar/navbar.dart';
import 'package:my_protfolio/widget/socialMediaIcon/SocialMediaIcon.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/themeProvider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 16, right: 8),
        child: ListView(children: [
          intro_text_mobile(32),
        ]),
      ),
      tablet: Padding(
        padding: const EdgeInsets.only(left: 20, top: 12, bottom: 16, right: 8),
        child: ListView(children: [
          intro_text(50),
        ]),
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: intro_text(80)),
            SizedBox(
              width: 80,
            ),
            intro_image(),
          ],
        ),
      ),
    );
  }

  Widget intro_text(double titleFontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TyperAnimatedTextKit(
          text: [title1],
          textStyle: GoogleFonts.oxygen(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontWeight: FontWeight.w900,
              color: Colors.blue),
          speed: Duration(milliseconds: 100),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title2,
          style: GoogleFonts.oxygen(fontSize: 28, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          description,
          maxLines: 10,
          style:
              GoogleFonts.oxygen(fontSize: 18, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 34,
        ),
        hire_me(),
        SizedBox(
          height: 44,
        ),
        showSocialMediaIcon_HomePage(context),
      ],
    );
  }

  Widget intro_text_mobile(double titleFontSize) {
    final themeProvider=Provider.of<ThemeProvider>(context);
    final des_Color=themeProvider.isDarkMode?Colors.grey:Colors.black54;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          my_name,
          style: GoogleFonts.oxygen(
              fontSize: titleFontSize,
              letterSpacing: 2,
              fontWeight: FontWeight.w800,
              color: Colors.blue),
        ),
        Text(
          title2,
          style: GoogleFonts.oxygen(fontSize: 16,color: des_Color),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          description,
          style:
              GoogleFonts.oxygen(fontSize: 16, fontWeight: FontWeight.normal,color: des_Color),
        ),
        SizedBox(
          height: 30,
        ),
        hire_me(),
        SizedBox(
          height: 40,
        ),
        showSocialMediaIcon_HomePage(context),
      ],
    );
  }

  Widget hire_me() {
    return RaisedButton(
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      onPressed: () {
        _launchURL(fiverr_url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 26),
        child: Text(
          hireMe,
          style: GoogleFonts.heebo(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.9)),
        ),
      ),
    );
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

  Widget intro_image() {
    return Stack(
      alignment: Alignment.center,
      overflow: Overflow.visible,
      children: [
        showImage(),

        //top
        Positioned(
          right: 55,
          top: -40,
          child: showDesign(80),
        ),
        Positioned(
          right: 30,
          top: -45,
          child: showDesign(95),
        ),
        Positioned(
          right: 10,
          top: -45,
          child: showDesign(115),
        ),

        //bottom
        Positioned(
          bottom: -40,
          left: 35,
          child: showDesign(85),
        ),
        Positioned(
          bottom: -60,
          left: 50,
          child: showDesign(95),
        ),
        Positioned(
          bottom: -85,
          left: 65,
          child: showDesign(115),
        ),
      ],
    );
  }

  Widget showImage() {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final _color2 =
        themeProvider.isDarkMode ? Colors.white10 : Colors.grey.shade100;
    final _color1 =
        themeProvider.isDarkMode ? Colors.white12 : Colors.grey.shade200;
    return Container(
      decoration: BoxDecoration(color: _color2, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(color: _color1, shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipOval(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(colors: [
                  Colors.black38.withOpacity(0.2),
                  Colors.black87.withOpacity(0.8)
                ], begin: Alignment.center, end: Alignment.bottomCenter)
                    .createShader(bounds),
                blendMode: BlendMode.darken,
                child: CircleAvatar(
                  minRadius: 80,
                  maxRadius: 130,
                  backgroundImage: AssetImage(
                    'images/my_pic.JPG',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget showDesign(double _height) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final _color =
        themeProvider.isDarkMode ? Colors.black12 : Colors.grey.shade100;
    return Transform.rotate(
      angle: 120,
      child: Container(
        height: _height,
        width: 5,
        decoration: BoxDecoration(
          color: _color,
        ),
      ),
    );
  }

  Widget showSocialMediaIcon_HomePage(BuildContext context){
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          design_socialMediaIcon(fb_url, FontAwesomeIcons.facebookF,context),
          SizedBox(width: 8,),
          design_socialMediaIcon(twitter_url, FontAwesomeIcons.twitter,context),
          SizedBox(width: 8,),
          design_socialMediaIcon(instagram_url, FontAwesomeIcons.instagram,context),
          SizedBox(width: 8,),
          design_socialMediaIcon(linkedin_url, FontAwesomeIcons.linkedinIn,context),
          SizedBox(width: 8,),
          design_socialMediaIcon(github_url, FontAwesomeIcons.github,context),
          SizedBox(width: 8,),
          design_socialMediaIcon(youTube_url, FontAwesomeIcons.youtube,context)
        ],
      ),
        ],
      ),
    );
  }
}
