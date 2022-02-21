import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/widget/footer/footer.dart';

class Blog5 extends StatelessWidget {
  Blog5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(blog5_title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30,left: 30),
        child: ListView(
          children: [
            title_view('Flutter vs React Native'),
            description_view('When it comes to cross-platform mobile application development technology trends, both React Native and Flutter are pretty similar in terms of popularity, and both are still quite young (React Native was released in 2015, Flutter in 2017). Both technologies rank very high on GitHub with 71,9k stars (Flutter) and 79,6k (React Native).\n\nWe can see that the interest in Flutter has risen significantly in 2020 and is growing rapidly. '),
            Image.asset(blog5Img,height: 250),
            SizedBox(height: 30,),
            title_view(blog5_detailsTitle1),
            description_view(blog5_detailsdes1),
            title_view(blog5_detailsTitle2),
            description_view(blog5_detailsdes2),
            title_view(blog5_detailsTitle3),
            description_view(blog5_detailsdes3),
            title_view(blog5_detailsTitle4),
            description_view(blog5_detailsdes4),
            title_view(blog5_detailsTitle5),
            description_view(blog5_detailsdes5),
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
