import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendEmail(
    {required String name,
      required String email,
      required String subject,
      required String message})
async {

  final servicesId='service_a2d9rke';
  final templeteId='template_thtfyb8';
  final userId='user_nQF8Mqg7zbnMNWEP6rDzF';

  final url=Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response=await http.post(
      url,
      headers: {
        'origin':'http://localhost',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'service_id':servicesId,
        'template_id':templeteId,
        'user_id':userId,
        'template_params':{
          'user_name':name,
          'user_email':email,
          'to_email':'officialrifat82@gmail.com',         //all time ei gmail e message zabe
          'user_subject':subject,
          'user_message':message,
        }
      })
  );

  if(response.statusCode==200){
    print('success');
  }
  else{
    print('failed');
  }
}