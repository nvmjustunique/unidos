import 'package:flutter/material.dart';
import 'package:unidos/components/booking_button.dart';
import 'package:unidos/pages/payment_page.dart';

class BookingPageDance extends StatelessWidget {
  BookingPageDance({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                "assets/images/dance.jpg",
                height: 350,
                width: 350,
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "\ud83d\udc49Dance Lovers Unite!*\ud83d\udc49",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "Whether you're a beginner or a pro, this workshop is for EVERYONE who wants to express themselves through dance!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: .0),
                child: Text(
                  "\ud83d\udcc5 Date: 9th October, 2024\n\ud83d\udecb Venue: Yoga Hall, D.Y. Patil Stadium\n\ud83d\udcb2 Fees: ₹149/- ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100.0),
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
