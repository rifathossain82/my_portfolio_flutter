import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/responsive.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/socialMediaIcon/SocialMediaIcon.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widget/footer/footer.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20, right: 8),
        child: mobile_layout(context),
      );
    }
    else if (isTab(context)) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: mobile_layout(context),
      );
    }
    else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: desktop_layout(context),
      );
    }
  }

  Widget desktop_layout(BuildContext context){
    return ListView(
      children: [
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: my_address()),
            SizedBox(width: 50,),
            Expanded(child: my_hotline()),
            SizedBox(width: 50,),
            Expanded(child: my_email()),
          ],
        ),
        SizedBox(height: 80,),
        showSocialMediaIcon_contactPage(context),
        SizedBox(height: 60,),
        footer(),
      ],
    );
  }

  Widget mobile_layout(BuildContext context){
    return ListView(
      children: [
        SizedBox(height: 20,),
        my_address(),
        SizedBox(height: 30,),
        my_hotline(),
        SizedBox(height: 30,),
        my_email(),
        SizedBox(height: 80,),
        showSocialMediaIcon_contactPage(context),
        SizedBox(height: 60,),
        footer(),
      ],
    );
  }

  Widget my_address(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //section 1 my address
        Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home,size: 32,),
                SizedBox(width: 10,),
                AutoSizeText(
                    address_Title,
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    )
                ),
              ],
            )
        ),
        Divider(),
        SizedBox(height: 10,),
        AutoSizeText(address_present_title,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        AutoSizeText(address_present,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),),
        SizedBox(height: 30,),
        AutoSizeText(address_permanent_title,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        AutoSizeText(address_permanent,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),),
        SizedBox(height: 30,),
      ],
    );
  }


  Widget my_hotline(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone,size: 32,),
                SizedBox(width: 10,),
                AutoSizeText(
                    hotline_Title,
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                ),
              ],
            )
        ),
        Divider(),
        SizedBox(height: 10,),
        AutoSizeText(hotline_officie_title,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        InkWell(onTap: (){_makeCall(hotline1);},child: AutoSizeText(hotline1,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),)),
        SizedBox(height: 30,),
        AutoSizeText(hotline_homeTitle,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        InkWell(onTap: (){_makeCall(hotline2);},child: AutoSizeText(hotline2,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),)),
        InkWell(onTap: (){_makeCall(hotline3);},child: AutoSizeText(hotline3,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),)),
        SizedBox(height: 30,),
        AutoSizeText(hotline_whatsapp_title,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        InkWell(onTap: (){_makeCall(hotline1);},child: AutoSizeText(hotline1,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),)),
        SizedBox(height: 30,),
      ],
    );
  }


  Widget my_email(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email_rounded,size: 32,),
                SizedBox(width: 10,),
                AutoSizeText(
                    email_titile,
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                ),
              ],
            )
        ),
        Divider(),
        SizedBox(height: 10,),
        AutoSizeText(email_official_titile,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        AutoSizeText(email_1,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),),
        SizedBox(height: 30,),
        AutoSizeText(email_personal_titile,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
        AutoSizeText(email_2,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),),
        AutoSizeText(email_3,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),),
        SizedBox(height: 30,),
      ],
    );
  }


  void _makeCall(String number) async {
    var url='tel:${number}';
    if(await canLaunch(url)){
      await launch(url);
    }
  }


  Widget showSocialMediaIcon_contactPage(BuildContext context){
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
            ] ,
          )
        ],
      ),
    );
  }


}
