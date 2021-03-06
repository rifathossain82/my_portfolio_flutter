import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/footer/footer.dart';

class Blog4 extends StatelessWidget {
  Blog4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(blog4_title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30,left: 30),
        child: ListView(
          children: [
            title_view('The Best BaaS for the Flutter App'),
            description_view('If you are curious about the topmost backend services for the flutter app, then you are at the right place. Here are some great backend options for the Flutter app.'),
            Image.asset(blog4Img,height: 250),
            SizedBox(height: 30,),
            title_view(blog4_detailsTitle1),
            description_view(blog4_detailsdes1),
            title_view(blog4_detailsTitle2),
            description_view(blog4_detailsdes2),
            title_view(blog4_detailsTitle3),
            description_view(blog4_detailsdes3),
            title_view(blog4_detailsTitle4),
            description_view(blog4_detailsdes4),
            title_view(blog4_detailsTitle5),
            description_view(blog4_detailsdes5),
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
