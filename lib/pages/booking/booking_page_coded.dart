import 'package:flutter/material.dart';
import 'package:unidos/components/booking_button.dart';
import 'package:unidos/pages/payment_page.dart';

class BookingPageCoded extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  BookingPageCoded({super.key});

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
                "assets/images/coded.jpg",
                height: 350,
                width: 350,
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "\ud83d\udc49 Coded Creativity-A web Development Workshop\ud83d\udc49",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "Dive into the basics of HTML, understand its elements and much more",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: .0),
                child: Text(
                  "\ud83d\udcc5 Date: 5th and 6th October 2024\n\ud83d\udecb Venue: Room 501\n\ud83d\udcb2 Fees: 000/- for non-ACM members\n\ud83c\udf1f Free ",
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
