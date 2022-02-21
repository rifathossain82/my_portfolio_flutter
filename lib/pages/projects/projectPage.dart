import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/responsive.dart';
import 'package:my_protfolio/constraints/strings.dart';
import '../../widget/footer/footer.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return Padding(
          padding: EdgeInsets.only(left: 20, bottom: 20, right: 8),
          child: mobile_layout(),
      );
    }
    else if (isTab(context)) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: tablet_layout(),
      );
    }
    else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: desktop_layout(),
      );
    }
  }

  Widget desktop_layout() {
    return ListView(
      children: [
        //section flutter
        Center(
            child: section_title(sectionTitle1_project, sectionDes1_project)
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project1Img,
                    project1Name,
                    project1des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project2Img,
                    project2Name,
                    project2des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project3Img,
                    project3Name,
                    project3des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project4Img,
                    project4Name,
                    project4des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project5Img,
                    project5Name,
                    project5des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project6Img,
                    project6Name,
                    project6des)
            ),
          ],
        ),
        SizedBox(height: 100,),

        //section android
        Center(
            child: section_title(sectionTitle2_project, sectionDes2_project)
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project7Img,
                    project7Name,
                    project7des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project8Img,
                    project8Name,
                    project8des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project9Img,
                    project9Name,
                    project9des)
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project10Img,
                    project10Name,
                    project10des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project11Img,
                    project11Name,
                    project11des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project12Img,
                    project12Name,
                    project12des)
            ),
          ],
        ),
        SizedBox(height: 100,),

        //section desktop
        Center(
            child: section_title(sectionTitle3_project, sectionDes3_project)
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project13Img,
                    project13Name,
                    project13des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project14Img,
                    project14Name,
                    project14des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project15Img,
                    project15Name,
                    project15des)
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project16Img,
                    project16Name,
                    project16des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project17Img,
                    project17Name,
                    project17des)
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project18Img,
                    project18Name,
                    project18des)
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(child: Center()),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project19Img,
                    project19Name,
                    project19des)
            ),
            SizedBox(width: 10,),
            Expanded(child: Center()),
          ],
        ),
        SizedBox(height: 100,),

        footer(),
      ],
    );
  }

  Widget tablet_layout() {
    return ListView(
      children: [
        //section flutter
        Center(
            child: section_title(sectionTitle1_project, sectionDes1_project)
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project1Img,
                    project1Name, project1des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project2Img,
                    project2Name,
                    project2des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project3Img,
                    project3Name,
                    project3des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project4Img,
                    project4Name,
                    project4des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project5Img,
                    project5Name,
                    project5des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project6Img,
                    project6Name,
                    project6des
                )
            ),
          ],
        ),
        SizedBox(height: 100,),

        //section android
        Center(
            child: section_title(sectionTitle2_project, sectionDes2_project)
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project7Img,
                    project7Name,
                    project7des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project8Img,
                    project8Name,
                    project8des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project9Img,
                    project9Name,
                    project9des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project10Img,
                    project10Name,
                    project10des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project11Img,
                    project11Name,
                    project11des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project12Img,
                    project12Name,
                    project12des
                )
            ),
          ],
        ),
        SizedBox(height: 100,),

        //section desktop
        Center(
            child: section_title(sectionTitle3_project, sectionDes3_project)
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project13Img,
                    project13Name,
                    project13des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project14Img,
                    project14Name,
                    project14des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project15Img,
                    project15Name,
                    project15des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project16Img,
                    project16Name,
                    project16des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
                child: projects(
                    project17Img,
                    project17Name,
                    project17des
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: projects(
                    project18Img,
                    project18Name,
                    project18des
                )
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(flex: 1, child: Center()),
            SizedBox(width: 10,),
            Expanded(
                flex: 2,
                child: projects(
                    project19Img,
                    project19Name,
                    project19des
                )
            ),
            SizedBox(width: 10,),
            Expanded(flex: 1, child: Center()),
          ],
        ),
        SizedBox(height: 100,),

        footer(),
      ],
    );
  }

  Widget mobile_layout() {
    return ListView(
      children: [
        SizedBox(height: 10,),

        //section flutter
        Center(
            child: section_title(sectionTitle1_project, sectionDes1_project)
        ),
        SizedBox(height: 30,),
        projects(project1Img, project1Name, project1des),
        SizedBox(height: 5,),
        projects(project2Img, project2Name, project2des),
        SizedBox(height: 5,),
        projects(project3Img, project3Name, project3des),
        SizedBox(height: 5,),
        projects(project4Img, project4Name, project4des),
        SizedBox(height: 5,),
        projects(project5Img, project5Name, project5des),
        SizedBox(height: 5,),
        projects(project6Img, project6Name, project6des),

        SizedBox(height: 60,),

        //section android
        Center(
            child: section_title(sectionTitle2_project, sectionDes2_project)
        ),
        SizedBox(height: 30,),
        projects(project7Img, project7Name, project7des),
        SizedBox(height: 5,),
        projects(project8Img, project8Name, project8des),
        SizedBox(height: 5,),
        projects(project9Img, project9Name, project9des),
        SizedBox(height: 5,),
        projects(project10Img, project10Name, project10des),
        SizedBox(height: 5,),
        projects(project11Img, project11Name, project11des),
        SizedBox(height: 5,),
        projects(project12Img, project12Name, project12des),

        SizedBox(height: 60,),

        //section desktop
        Center(child: section_title(sectionTitle3_project, sectionDes3_project)),
        SizedBox(height: 30,),
        projects(project13Img, project13Name, project13des),
        SizedBox(height: 5,),
        projects(project14Img, project14Name, project14des),
        SizedBox(height: 5,),
        projects(project15Img, project15Name, project15des),
        SizedBox(height: 5,),
        projects(project16Img, project16Name, project16des),
        SizedBox(height: 5,),
        projects(project17Img, project17Name, project17des),
        SizedBox(height: 5,),
        projects(project18Img, project18Name, project18des),
        SizedBox(height: 5,),
        projects(project19Img, project19Name, project19des),
        SizedBox(height: 50,),

        footer(),
      ],
    );
  }

  Widget section_title(String title, String des) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Colors.red.shade500
          ),
        ),
        AutoSizeText(
          des,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  Widget projects(String appImage, String appName, String appDescription) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(8),
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 4,
                  child: Image.asset(
                    appImage,
                    fit: BoxFit.cover,
                  )
              ),
              SizedBox(height: 5,),
              Expanded(
                  flex: 1,
                  child: Text(
                    appName,
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w700
                    ),
                  )
              ),
              Expanded(
                  flex: 3,
                  child: AutoSizeText(
                    appDescription,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),
                    minFontSize: 14,
                    maxFontSize: 20,
                    maxLines: 5,
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
