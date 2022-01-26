import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ScreenTypeLayout(
      mobile: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20, right: 8),
        child: mobile_layout(),
      ),
      tablet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: tablet_layout(),
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: desktop_layout(),
      ),
    );
  }

  Widget desktop_layout() {
    return ListView(
      children: [
        //section flutter
        Center(
            child: section_title(sectionTitle1_project, sectionDes1_project)),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/F_amarBangla.png',
                    project1Name, project1des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/F_bmi.png', project2Name,
                    project2des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects(
                    'images/projects_image/F_currencyConverter1.png',
                    project3Name,
                    project3des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects(
                    'images/projects_image/F_currencyConverter2.png',
                    project4Name,
                    project4des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/F_news.png',
                    project5Name, project5des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/F_qrCodeScaner.png',
                    project6Name, project6des)),
          ],
        ),
        SizedBox(
          height: 100,
        ),

        //section android
        Center(
            child: section_title(sectionTitle2_project, sectionDes2_project)),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/A_adorsholopi_logo.jpg',
                    project7Name, project7des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_beta_browser.jpg',
                    project8Name, project8des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_calculaotr_logo.jpg',
                    project9Name, project9des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/A_eshop.png',
                    project10Name, project10des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_scanner_por.jpg',
                    project11Name, project11des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_unique_trade_link.jpg',
                    project12Name, project12des)),
          ],
        ),
        SizedBox(
          height: 100,
        ),

        //section desktop
        Center(
            child: section_title(sectionTitle3_project, sectionDes3_project)),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/D_schoolManagement.jpg',
                    project13Name, project13des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_library.png',
                    project14Name, project14des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_inventorySystem.jpg',
                    project15Name, project15des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/D_hostelManagement.jpg',
                    project16Name, project16des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects(
                    'images/projects_image/D_hospitalManagement.jpg',
                    project17Name,
                    project17des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_fpi_StudentInfo.png',
                    project18Name, project18des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(child: Center()),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_emailSender.jpg',
                    project19Name, project19des)),
            SizedBox(
              width: 10,
            ),
            Expanded(child: Center()),
          ],
        ),
        SizedBox(
          height: 100,
        ),

        footer(),
      ],
    );
  }

  Widget tablet_layout() {
    return ListView(
      children: [
        //section flutter
        Center(
            child: section_title(sectionTitle1_project, sectionDes1_project)),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/F_amarBangla.png',
                    project1Name, project1des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/F_bmi.png', project2Name,
                    project2des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects(
                    'images/projects_image/F_currencyConverter1.png',
                    project3Name,
                    project3des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects(
                    'images/projects_image/F_currencyConverter2.png',
                    project4Name,
                    project4des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/F_news.png',
                    project5Name, project5des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/F_qrCodeScaner.png',
                    project6Name, project6des)),
          ],
        ),
        SizedBox(
          height: 100,
        ),

        //section android
        Center(
            child: section_title(sectionTitle2_project, sectionDes2_project)),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/A_adorsholopi_logo.jpg',
                    project7Name, project7des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_beta_browser.jpg',
                    project8Name, project8des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/A_calculaotr_logo.jpg',
                    project9Name, project9des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_eshop.png',
                    project10Name, project10des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/A_scanner_por.jpg',
                    project11Name, project11des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/A_unique_trade_link.jpg',
                    project12Name, project12des)),
          ],
        ),
        SizedBox(
          height: 100,
        ),

        //section desktop
        Center(
            child: section_title(sectionTitle3_project, sectionDes3_project)),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/D_schoolManagement.jpg',
                    project13Name, project13des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_library.png',
                    project14Name, project14des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects('images/projects_image/D_inventorySystem.jpg',
                    project15Name, project15des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_hostelManagement.jpg',
                    project16Name, project16des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
                child: projects(
                    'images/projects_image/D_hospitalManagement.jpg',
                    project17Name,
                    project17des)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: projects('images/projects_image/D_fpi_StudentInfo.png',
                    project18Name, project18des)),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(flex: 1, child: Center()),
            SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 2,
                child: projects('images/projects_image/D_emailSender.jpg',
                    project19Name, project19des)),
            SizedBox(
              width: 10,
            ),
            Expanded(flex: 1, child: Center()),
          ],
        ),
        SizedBox(
          height: 100,
        ),

        footer(),
      ],
    );
  }

  Widget mobile_layout() {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),

        //section flutter
        Center(
            child: section_title(sectionTitle1_project, sectionDes1_project)),
        SizedBox(
          height: 30,
        ),
        projects('images/projects_image/F_amarBangla.png', project1Name,
            project1des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/F_bmi.png', project2Name, project2des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/F_currencyConverter1.png', project3Name,
            project3des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/F_currencyConverter2.png', project4Name,
            project4des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/F_news.png', project5Name, project5des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/F_qrCodeScaner.png', project6Name,
            project6des),

        SizedBox(
          height: 60,
        ),

        //section android
        Center(
            child: section_title(sectionTitle2_project, sectionDes2_project)),
        SizedBox(
          height: 30,
        ),
        projects('images/projects_image/A_adorsholopi_logo.jpg', project7Name,
            project7des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/A_beta_browser.jpg', project8Name,
            project8des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/A_calculaotr_logo.jpg', project9Name,
            project9des),
        SizedBox(
          height: 5,
        ),
        projects(
            'images/projects_image/A_eshop.png', project10Name, project10des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/A_scanner_por.jpg', project11Name,
            project11des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/A_unique_trade_link.jpg', project12Name,
            project12des),

        SizedBox(
          height: 60,
        ),

        //section desktop
        Center(
            child: section_title(sectionTitle3_project, sectionDes3_project)),
        SizedBox(
          height: 30,
        ),
        projects('images/projects_image/D_schoolManagement.jpg', project13Name,
            project13des),
        SizedBox(
          height: 5,
        ),
        projects(
            'images/projects_image/D_library.png', project14Name, project14des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/D_inventorySystem.jpg', project15Name,
            project15des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/D_hostelManagement.jpg', project16Name,
            project16des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/D_hospitalManagement.jpg',
            project17Name, project17des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/D_fpi_StudentInfo.png', project18Name,
            project18des),
        SizedBox(
          height: 5,
        ),
        projects('images/projects_image/D_emailSender.jpg', project19Name,
            project19des),
        SizedBox(
          height: 50,
        ),

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
          style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Colors.red.shade500),
          textAlign: TextAlign.center,
        ),
        AutoSizeText(
          des,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
          maxLines: 3,
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
                  )),
              SizedBox(
                height: 5,
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    appName,
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  )),
              Expanded(
                  flex: 3,
                  child: AutoSizeText(
                    appDescription,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                    ),
                    minFontSize: 14,
                    maxFontSize: 20,
                    maxLines: 5,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
