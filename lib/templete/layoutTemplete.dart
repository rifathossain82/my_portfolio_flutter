import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:my_protfolio/widget/nabar/navbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../widget/centeredView/centeredView.dart';
import 'desktop_layout.dart';
import 'mobile_tablet_layout.dart';

class LayoutTemplete extends StatelessWidget {
  LayoutTemplete({Key? key}) : super(key: key);

  Color dialog_bg = Colors.white;
  Color dialog_text = Colors.white;
  Color dialog_border = Colors.white;
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final color_icon =
        themeProvider.isDarkMode ? Colors.grey[900] : Colors.grey[50];
    dialog_bg = (themeProvider.isDarkMode ? Colors.white : Color(0xFF212936))!;
    dialog_text = (themeProvider.isDarkMode ? Color(0xFF212936) : Colors.white)!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScreenTypeLayout(
        mobile: Mobile_TebletLayout(),
        tablet: Mobile_TebletLayout(),
        desktop: Desktop_Layout(),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: dialog_title,
        child: Icon(
          Icons.comment,
          color: color_icon,
        ),
        onPressed: () {
          doChat(context);
        },
      ),
    );
  }

  Future<bool?> doChat(BuildContext context) {
    return Alert(
        context: context,
        title: dialog_title,
        closeIcon: Icon(
          Icons.close,
          color: dialog_text,
        ),
        style: AlertStyle(
            titleStyle: TextStyle(color: dialog_text,fontWeight: FontWeight.w400,fontSize: 20),
            backgroundColor: dialog_bg,
            alertAlignment: Alignment.center,
            isCloseButton: true,
            alertBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        content: Container(
          width: 320,
          padding: EdgeInsets.only(top: 10),
          child: Form(key: formKey,
            child: Column(
              children: <Widget>[
                DialogTextField(name_field, Icons.account_circle, 1,r'^[a-z A-Z]+$'),
                SizedBox(
                  height: 12,
                ),
                DialogTextField(email_field, Icons.email_outlined, 1,r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}'),
                SizedBox(
                  height: 12,
                ),
                DialogTextField(comment_field, Icons.comment, 5,''),
              ],
            ),
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              if(formKey.currentState!.validate()){
                print('success');
                Navigator.of(context).pop();
              }

            },
            color: dialog_text,
            child: Text(
              dialog_button,
              style: TextStyle(color: dialog_bg, fontSize: 20),
            ),
          )
        ]).show();
  }

  Widget DialogTextField(String name,IconData preIcon,int maxLine,String validator){
    return TextFormField(
      validator: (value){
        if(value!.isEmpty || !RegExp(validator).hasMatch(value!)){
          return 'Please, Enter correct information!';
        }
        else{
          return null;
        }
      },
      maxLines: maxLine,
      style: TextStyle(color: dialog_text),
      decoration: InputDecoration(
          prefixIcon: Icon(preIcon,color: dialog_text,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: dialog_text)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: dialog_text)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: dialog_text)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: dialog_text)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red)
          ),
          labelText: name,
          labelStyle: TextStyle(color: dialog_text)),
    );
  }
}
