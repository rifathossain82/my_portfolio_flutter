import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/responsive.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:my_protfolio/widget/custom_scroll_behavior.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_protfolio/widget/footer/footer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

var activeIndex=0;
CarouselController controller=CarouselController();

Color image_bg=Colors.grey.withOpacity(0.4);

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final themeprovider=Provider.of<ThemeProvider>(context);
    image_bg=themeprovider.isDarkMode?Colors.blueGrey.withOpacity(0.4):Colors.grey.withOpacity(0.4);
    if (isMobile(context)) {
      return Padding(
        padding: EdgeInsets.only(left: 20,bottom: 20,right: 8),
        child: mobile_layout(),
      );
    }
    else if (isTab(context)) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: mobile_layout(),
      );
    }
    else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: desktop_layout(),
      );
    }
  }

  Widget mobile_layout() {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        children: [
          SizedBox(height: 30,),
          //section who i am
          Center(child: title_text(title_about1)),
          SizedBox(height: 50,),
          Column(
            children: [
              image(my_pic2),
              SizedBox(height: 20,),
              content(description),
            ],
          ),

          SizedBox(height: 150,),

          //section my skills
          Center(child: title_text(title_about2)),
          SizedBox(height: 40,),
          Column(
            children: [
              image(my_skillsImage),
              SizedBox(height: 20,),
              my_skills(),
            ],
          ),


          SizedBox(height: 150,),

          //section my education
          Center(child: title_text(title_about3)),
          SizedBox(height: 40,),
          Column(
            children: [
              image(my_eduImage),
              SizedBox(height: 80,),
              myEducation(),
            ],
          ),

          SizedBox(height: 150,),


          //section my certified
          Center(child: title_text(title_about5)),
          SizedBox(height: 40,),
          Column(
            children: [
              image(certifiedImage),
              SizedBox(height: 80,),
              myCertificate(),
            ],
          ),

          SizedBox(height: 150,),

          //section my experience
          Center(child: title_text(title_about6)),
          SizedBox(height: 40,),
          Column(
            children: [
              image(my_experience),
              SizedBox(height: 80,),
              myExperience(),
            ],
          ),

          SizedBox(height: 150,),

          //section my photos
          Center(child: title_text(title_about4)),
          SizedBox(height: 40,),
          Column(
            children: [
              myImage_carousel()
            ],
          ),


          SizedBox(height: 50,),
          footer(),
        ],
      ),
    );
  }

  Widget desktop_layout() {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        children: [
          SizedBox(height: 30,),
          Center(
              child: Text(
                heading_about,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 42),
              ),
          ),

          //section who i am
          Center(child: title_text(title_about1)),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 2, child: image(my_pic2)),
              SizedBox(width: 80,),
              Expanded(flex:3,child: content(description)),
            ],
          ),

          SizedBox(height: 150,),

          //section my skills
          Center(child: title_text(title_about2)),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex:3,child: my_skills()),
              SizedBox(width: 80,),
              Expanded(flex:2,child: image(my_skillsImage)),
            ],
          ),

          SizedBox(height: 150,),

          //section my education
          Center(child: title_text(title_about3)),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex:2,child: image(my_eduImage)),
              SizedBox(width: 80,),
              Expanded(flex:3,child: myEducation()),
            ],
          ),

          SizedBox(height: 150,),


          //section my certified
          Center(child: title_text(title_about5)),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex:3,child: myCertificate()),
              SizedBox(width: 80,),
              Expanded(flex:2,child: image(certifiedImage)),
            ],
          ),

          SizedBox(height: 150,),

          //section my experience
          Center(child: title_text(title_about6)),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex:2,child: image(my_experience)),
              SizedBox(width: 80,),
              Expanded(flex:3,child: myExperience()),
            ],
          ),

          SizedBox(height: 150,),

          //section my photo
          Center(child: title_text(title_about4)),
          SizedBox(height: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myImage_carousel()
            ],
          ),
          SizedBox(height: 50,),
          footer(),
        ],
      ),
    );
  }

  Widget title_text(String title) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    final title_containerColor =themeprovider.isDarkMode ? Colors.grey : Color(0xFF212936);
    final titleColor =themeprovider.isDarkMode ? Colors.white70 : Colors.red.shade700;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: 50,
          color: title_containerColor,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 20, color: titleColor, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 2,
          width: 50,
          color: title_containerColor,
        ),
      ],
    );
  }

  Widget content(String content) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content_about1Title,
          style: GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20,),
        Text(
          content,
          style: GoogleFonts.poppins(),
        ),
        SizedBox(height: 20,),
        download_cv(),
      ],
    );
  }

  Widget download_cv() {
    return RaisedButton(
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      onPressed: () {
        _launchURL(cv_download_link);       //000webhost e upload kora ache
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 26),
        child: Text(
          content_about1buttons,
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.9)
          ),
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
    ))
    {
      throw 'Could not launch $url';
    }
  }

  Widget image(String image) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: image_bg,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              image,
            ),
          )
      ),
    );
  }

  Widget my_skills(){
    return Row(
      children: [
        Expanded(child: skills_body('C')),
        Expanded(
          child: Column(
            children: [
              skills_body('Java'),
              skills_body('Android'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              skills_body('Git'),
              skills_body('MySQL'),
              skills_body('Figma'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              skills_body('Dart'),
              skills_body('Flutter'),
            ],
          ),
        ),
        Expanded(child: skills_body('''Desktop Application'''))
      ],
    );
  }

  Widget skills_body(String name){
    final themeprovider = Provider.of<ThemeProvider>(context);
    final bg_color= themeprovider.isDarkMode ? Colors.white70 : Colors.blueGrey;
    final text_color = themeprovider.isDarkMode ? Color(0xFF212936) : Colors.white;

    return Container(
      height: 70,
      margin: EdgeInsets.only(top: 12,right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bg_color,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: AutoSizeText(
            name,
            style: GoogleFonts.poppins(color: text_color),
            textAlign: TextAlign.center,
            minFontSize: 4,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
  
  Widget myEducation(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //college
        Text(education1_title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
        Text(education1_institute,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
        Row(
          children: [
            Expanded(child: Text(education1_duration,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic),)),
            Text(education1_result,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.red)),
          ],
        ),

        SizedBox(height: 50,),

        //school
        Text(education2_title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
        Text(education2_institute,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
        Row(
          children: [
            Expanded(child: Text(education2_duration,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic),)),
            Text(education2_result,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.red)),
          ],
        ),

      ],
    );
  }

  Widget myCertificate(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //utc
        Text(certificate_title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
        Text(certificate_institute,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
        Text(certificate_institute_address,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
        Row(
          children: [
            Expanded(child: Text(certificate_duration,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic),)),
            Text(certificate_result,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.red)),
          ],
        ),

        SizedBox(height: 50,),

        //ezze tech
        Text(certificate2_title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
        Text(certificate2_institute,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
        Text(certificate2_institute_address,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
        Row(
          children: [
            Expanded(child: Text(certificate2_duration,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic),)),
            Text(certificate2_result,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.red)),
          ],
        ),

      ],
    );
  }

  Widget myExperience(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //college
        Text(experience1_title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
        Text(experience1_companyName,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
        Row(
          children: [
            Expanded(child: Text(experience1_duration,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic),)),
            Text(experience1_location,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.red)),
          ],
        ),

        SizedBox(height: 50,),

        //school
        Text(experience2_title,style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
        Text(experience2_companyName,style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
        Row(
          children: [
            Expanded(child: Text(experience2_duration,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic),)),
            Text(experience2_location,style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.red)),
          ],
        ),

      ],
    );
  }

  Widget myImage_carousel(){
    return Center(
      child: Column(
        children: [
          CarouselSlider.builder(
              carouselController: controller,
              itemCount: my_images.length,
              itemBuilder: (context,index,realIndex){
                return Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage(my_images[index]),
                      fit: BoxFit.cover,
                    )
                  ),
                );
              },
              options: CarouselOptions(
                  initialPage: 0,
                  height:  MediaQuery.of(context).size.width/5,
                  autoPlay: true,   //set autoplay
                  autoPlayAnimationDuration: Duration(seconds: 2), //duration for autoplay animation
                  autoPlayInterval: Duration(seconds: 3),   //set duration for auto play
                  viewportFraction: 1,       //to see only one photo
                  enlargeCenterPage: true,        //it's show center image bigger than others
                  enlargeStrategy: CenterPageEnlargeStrategy.height,    //
                  //pageSnapping: false,          //by this we can scroll every pixel
                  //enableInfiniteScroll: false, //by this you can not scroll in at last and fist item
                  onPageChanged: (index,reason){
                    setState(() {
                      activeIndex=index;
                    });
                  }
              )
          ),
          // SizedBox(height: 20,),
          // AnimatedSmoothIndicator(
          //   activeIndex: activeIndex,
          //   count: my_images.length,
          //   axisDirection: Axis.horizontal,
          //   onDotClicked: (index){
          //     controller.animateToPage(index);
          //   },
          //   effect:  ExpandingDotsEffect(
          //       spacing:  8.0,
          //       radius:  4.0,
          //       dotWidth:  24.0,
          //       dotHeight:  16.0,
          //       paintStyle:  PaintingStyle.fill,
          //       strokeWidth:  1.5,
          //       dotColor:  Colors.grey,
          //       activeDotColor:  Colors.deepOrange
          //
          //   ),
          // ),
        ],
      ),
    );
  }
}
