import 'package:flutter/material.dart';

import 'package:unidos/components/booking_button.dart';
import 'package:unidos/pages/payment_page.dart';

class BookingPage2 extends StatelessWidget {
  const BookingPage2({super.key});

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
              SizedBox(height: 90),
              Image.asset(
                "assets/images/gsoc_poster.jpg",
                height: 350,
                width: 350,
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "\ud83d\udc49 Unleash the Power of AI with NLP & Sentiment Analysis!\ud83d\udc49",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "RAIT ACM SCoE Student Chapter presents \"Semantix\", an exciting hands-on event where you dive into Natural Language Processing (NLP) and build a Sentiment Analysis model from scratch!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: .0),
                child: Text(
                  "\ud83d\udcc5 Date: 6th & 7th February 2025\n\ud83d\udecb Venue: Room 508\n\ud83d\udcb2 Fees: 250/- for non-ACM members\n\ud83c\udf1f Free for ACM members",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 45.0),
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
