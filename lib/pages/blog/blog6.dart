import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/footer/footer.dart';

class Blog6 extends StatelessWidget {
  Blog6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(blog6_title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30,left: 30),
        child: ListView(
          children: [
            Image.asset(blog6Img,height: 250),
            SizedBox(height: 30,),
            title_view(blog6_detailsTitle1),
            description_view(blog6_detailsdes1),
            SizedBox(height: 50,),
            footer(),
          ],
        ),
      ),
    );
  }

  Widget title_view(String title){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: AutoSizeText(title,style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w400),),
    );
  }

  Widget description_view(String des){
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: AutoSizeText(des, style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300),),
    );
  }

}
