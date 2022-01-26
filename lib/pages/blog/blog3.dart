import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/footer/footer.dart';

class Blog3 extends StatelessWidget {
  Blog3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(blog3_title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30,left: 30),
        child: ListView(
          children: [
            description_view('Here are 6 features of the cross-platform mobile app development framework:'),
            Image.asset('images/blog/features.jpg',height: 250),
            SizedBox(height: 30,),
            title_view(blog3_detailsTitle1),
            description_view(blog3_detailsdes1),
            title_view(blog3_detailsTitle2),
            description_view(blog3_detailsdes2),
            title_view(blog3_detailsTitle3),
            description_view(blog3_detailsdes3),
            title_view(blog3_detailsTitle4),
            description_view(blog3_detailsdes4),
            title_view(blog3_detailsTitle5),
            description_view(blog3_detailsdes5),
            title_view(blog3_detailsTitle6),
            description_view(blog3_detailsdes6),
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
