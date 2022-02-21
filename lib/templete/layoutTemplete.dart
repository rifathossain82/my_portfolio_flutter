import 'package:flutter/material.dart';
import 'package:my_protfolio/constraints/responsive.dart';
import 'package:my_protfolio/constraints/strings.dart';
import 'package:my_protfolio/providers/themeProvider.dart';
import 'package:my_protfolio/services/send_email.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'desktop_layout.dart';
import 'mobile_tablet_layout.dart';

class LayoutTemplete extends StatefulWidget {
  LayoutTemplete({Key? key}) : super(key: key);

  @override
  State<LayoutTemplete> createState() => _LayoutTempleteState();
}

class _LayoutTempleteState extends State<LayoutTemplete> {
  Color dialog_bg = Colors.white;
  Color dialog_text = Colors.white;
  Color dialog_border = Colors.white;
  final formKey = GlobalKey<FormState>();

  TextEditingController controller_name=TextEditingController();
  TextEditingController controller_email=TextEditingController();
  TextEditingController controller_message=TextEditingController();


  @override
  void dispose() {
    super.dispose();
    controller_name.clear();
    controller_email.clear();
    controller_message.clear();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final color_icon = themeProvider.isDarkMode ? Colors.grey[900] : Colors.grey[50];
    dialog_bg = (themeProvider.isDarkMode ? Colors.white : Color(0xFF212936));
    dialog_text = (themeProvider.isDarkMode ? Color(0xFF212936) : Colors.white);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: isDesktop(context)?Desktop_Layout():Mobile_TebletLayout(),
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
            titleStyle: TextStyle(
                color: dialog_text, fontWeight: FontWeight.w400, fontSize: 20),
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
                dialogTextField_name(),
                SizedBox(
                  height: 12,
                ),
                dialogTextField_email(),
                SizedBox(
                  height: 12,
                ),
                dialogTextField_message(),
              ],
            ),
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                sendEmail(name: controller_name.text, email: controller_email.text, subject: 'Please, Help Me', message: controller_message.text);
                Navigator.of(context).pop();
                controller_name.clear();
                controller_email.clear();
                controller_message.clear();
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

  Widget dialogTextField_name() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return 'Please, Enter correct information!';
        }
        else {
          return null;
        }
      },
      controller: controller_name,
      maxLines: 1,
      style: TextStyle(color: dialog_text),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle, color: dialog_text,),
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
              borderSide: BorderSide(color: dialog_text)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red)),
          labelText: name_field,
          labelStyle: TextStyle(color: dialog_text)),
    );
  }

  Widget dialogTextField_email() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)) {
          return 'Please, Enter correct information!';
        }
        else {
          return null;
        }
      },
      controller: controller_email,
      maxLines: 1,
      style: TextStyle(color: dialog_text),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_outlined, color: dialog_text,),
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
              borderSide: BorderSide(color: dialog_text)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red)),
          labelText: email_field,
          labelStyle: TextStyle(color: dialog_text)),
    );
  }

  Widget dialogTextField_message() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || !RegExp('').hasMatch(value!)) {
          return 'Please, Enter correct information!';
        }
        else {
          return null;
        }
      },
      controller: controller_message,
      maxLines: 5,
      style: TextStyle(color: dialog_text),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.comment, color: dialog_text,),
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
              borderSide: BorderSide(color: dialog_text)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red)),
          labelText: comment_field,
          labelStyle: TextStyle(color: dialog_text)),
    );
  }
}
