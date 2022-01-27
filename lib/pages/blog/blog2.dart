import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/strings.dart';

import '../../widget/footer/footer.dart';

class Blog2 extends StatelessWidget {
  Blog2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(blog2_title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30,left: 30),
        child: ListView(
          children: [
            title_view(blog2_title),
            description_view(blog2_des),
            Image.asset(blog2Img,height: 250),
            SizedBox(height: 30,),
            title_view(blog2_detailsTitle1),
            description_view(blog2_detailsdes1),
            title_view(blog2_detailsTitle2),
            description_view(blog2_detailsdes2),
            title_view(blog2_detailsTitle3),
            description_view(blog2_detailsdes3),
            title_view(blog2_detailsTitle4),
            description_view(blog2_detailsdes4),
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
