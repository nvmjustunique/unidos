import 'package:flutter/material.dart';
import 'package:unidos/components/booking_button.dart';
import 'package:unidos/pages/payment_page.dart';

class BookingPageCase extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  BookingPageCase({super.key});

  void book(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentPage()),
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
        ), //hi
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(
                "assets/images/case.jpg",
                height: 350,
                width: 350,
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "\ud83d\udc49 UE-Cell RAIT proudly presents Case Chronicle\ud83d\udc49",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "1st February, from 11 AM to 3 PM at Audi 611. Unleash your creativity, showcase your skills, and be part of an exciting journey!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: .0),
                child: Text(
                  "\ud83d\udcc5 Date: 1st February 2025\n\ud83d\udecb Venue: Room 508\n\ud83d\udcb2 Fees: 00/- \n\ud83c\udf1f Free ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90.0),
                  child: Bookingbutton(
                    onTap: () {
                      book(context);
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
