import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/colors.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/pages/blog/blog1.dart';
import 'package:my_protfolio/pages/blog/blog2.dart';
import 'package:my_protfolio/pages/blog/blog3.dart';
import 'package:my_protfolio/pages/blog/blog4.dart';
import 'package:my_protfolio/pages/blog/blog5.dart';
import 'package:my_protfolio/pages/blog/blog6.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogPage extends StatelessWidget {
  BlogPage({Key? key}) : super(key: key);

  Blog1 blog1=Blog1();
  Blog2 blog2=Blog2();
  Blog3 blog3=Blog3();
  Blog4 blog4=Blog4();
  Blog5 blog5=Blog5();
  Blog6 blog6=Blog6();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20, right: 8),
        child: mobile_layout(context),
      ),
      tablet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: tablet_layout(context),
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: desktop_layout(context),
      ),
    );
  }

  Widget desktop_layout(BuildContext context){
    return ListView(
       children: [
         SizedBox(height: 30,),
         header(),
         SizedBox(height: 50,),
         Row(
           children: [
             Expanded(child: blogItem(context,blog1,'images/blog/dart.png', blog1_title, my_name, blog1_des)),
             SizedBox(width: 16,),
             Expanded(child: blogItem(context,blog2,'images/blog/flutter.png', blog2_title, my_name, blog2_des)),
             SizedBox(width: 16,),
             Expanded(child: blogItem(context,blog3,'images/blog/features.jpg', blog3_title, my_name, blog3_des)),
           ],
         ),
         SizedBox(height: 50,),
         Row(
           children: [
             Expanded(child: blogItem(context,blog4,'images/blog/flutter_backend.png', blog4_title, my_name, blog4_des)),
             SizedBox(width: 16,),
             Expanded(child: blogItem(context,blog5,'images/blog/flutter_react.png', blog5_title, my_name, blog5_des)),
             SizedBox(width: 16,),
             Expanded(child: blogItem(context,blog6,'images/blog/flutter_supported.png', blog6_title, my_name, blog6_des)),
           ],
         ),
         SizedBox(height: 100,),
         footer(),
       ],
    );
  }

  Widget tablet_layout(BuildContext context){
    return ListView(
      children: [
        SizedBox(height: 30,),
        header(),
        SizedBox(height: 50,),
        Row(
          children: [
            Expanded(child: blogItem(context,blog1,'images/blog/dart.png', blog1_title, my_name, blog1_des)),
            SizedBox(width: 16,),
            Expanded(child: blogItem(context,blog2,'images/blog/flutter.png', blog2_title, my_name, blog2_des)),
           ],
        ),
        SizedBox(height: 50,),
        Row(
          children: [
            Expanded(child: blogItem(context,blog3,'images/blog/features.jpg', blog3_title, my_name, blog3_des)),
            SizedBox(width: 16,),
            Expanded(child: blogItem(context,blog4,'images/blog/flutter_backend.png', blog4_title, my_name, blog4_des)),
          ],
        ),
        SizedBox(height: 50,),
        Row(
          children: [
            Expanded(child: blogItem(context,blog5,'images/blog/flutter_react.png', blog5_title, my_name, blog5_des)),
            SizedBox(width: 16,),
            Expanded(child: blogItem(context,blog6,'images/blog/flutter_supported.png', blog6_title, my_name, blog6_des)),
          ],
        ),
        SizedBox(height: 100,),
        footer(),
      ],
    );
  }

  Widget mobile_layout(BuildContext context){
    return ListView(
      children: [
        SizedBox(height: 30,),
        header(),
        SizedBox(height: 30,),
        Column(
          children: [
            blogItem(context,blog1,'images/blog/dart.png', blog1_title, my_name, blog1_des),
            SizedBox(height: 8,),
            blogItem(context,blog2,'images/blog/flutter.png', blog2_title, my_name, blog2_des),
            SizedBox(height: 8,),
            blogItem(context,blog3,'images/blog/features.jpg', blog3_title, my_name, blog3_des),
            SizedBox(height: 8,),
            blogItem(context,blog4,'images/blog/flutter_backend.png', blog4_title, my_name, blog4_des),
            SizedBox(height: 8,),
            blogItem(context,blog5,'images/blog/flutter_react.png', blog5_title, my_name, blog5_des),
            SizedBox(height: 8,),
            blogItem(context,blog6,'images/blog/flutter_supported.png', blog6_title, my_name, blog6_des),
          ],
        ),
        SizedBox(height: 100,),
        footer(),
      ],
    );
  }

  Widget header(){
    return Container(
      height: 60,
      color: Colors.blueGrey.shade50,
      child: Center(child: Text('Blog',style: GoogleFonts.poppins(fontSize: 26,fontWeight: FontWeight.w600,color: mainHexColor.withOpacity(0.8),letterSpacing: 1.5),),),
    );
  }

  Widget blogItem(BuildContext context,var blog,String image,String title,String author,String description,){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>blog));
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(8),
          height: 600,
          child: Column(
            children: [
              Expanded(flex:4,child: Image.asset(image,fit: BoxFit.cover,)),
              SizedBox(height: 10,),
              Expanded(flex:8,child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex:2,
                          child: AutoSizeText(title,style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w400,),)),
                      Expanded(flex:6,child: AutoSizeText(description,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w300),)),
                      Expanded(child: Row(
                        children: [
                          Expanded(flex:3,child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>blog));
                          }, child: Text('Read more '))),
                          Expanded(flex:4,child: AutoSizeText('By ${my_name}',style: GoogleFonts.poppins(fontSize: 13,fontStyle: FontStyle.italic,),textAlign: TextAlign.end,))
                        ],
                      ))
                    ],
                  ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return Column(
      children: [
        Divider(),
        SizedBox(
          height: 80,
          child: Center(
            child: RichText(
              text: TextSpan(
                  text: 'All Rights Reserved By ',
                  style: GoogleFonts.ubuntu(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: 'officaialrifat82@gmail.com',
                        style: GoogleFonts.ubuntu(
                            color: Colors.red, fontStyle: FontStyle.italic))
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
