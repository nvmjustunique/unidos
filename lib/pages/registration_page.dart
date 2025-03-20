import 'package:flutter/material.dart';

import 'package:unidos/components/my_textfield.dart';
import 'package:unidos/components/registration_textfield.dart';
import 'package:unidos/components/registrationbutton.dart';
import 'package:unidos/pages/otp_page.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  final fullnameController = TextEditingController();
  final emailregistrationController = TextEditingController();
  final branchnameController = TextEditingController();
  final rollnumberController = TextEditingController();
  final divController = TextEditingController();
  final batchControoler = TextEditingController();
  final yearController = TextEditingController();
  final passwordregistrationController = TextEditingController();
  void otp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          //hii
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                'Register Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 40,
                width: 0,
              ),
              MyTextfield(
                controller: fullnameController,
                hintText: 'Full Name',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: emailregistrationController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: branchnameController,
                hintText: 'Branch name',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: rollnumberController,
                hintText: 'Roll no',
                obscureText: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RegistrationTextfield(
                    controller: divController,
                    hintText: '   Div',
                    obscureText: false,
                  ),
                  RegistrationTextfield(
                    controller: batchControoler,
                    hintText: ' Batch ',
                    obscureText: false,
                  ),
                  RegistrationTextfield(
                    controller: yearController,
                    hintText: ' Year',
                    obscureText: false,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: MyTextfield(
                  controller: passwordregistrationController,
                  hintText: 'password',
                  obscureText: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Registrationbutton(
                    onTap: () {
                      otp(context);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
