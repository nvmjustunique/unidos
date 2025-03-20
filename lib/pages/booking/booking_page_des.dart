import 'package:flutter/material.dart';
import 'package:unidos/components/booking_button.dart';
import 'package:unidos/pages/payment_page.dart';

class BookingPageDes extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  BookingPageDes({super.key});

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
              SizedBox(height: 70),
              Image.asset(
                "assets/images/des.jpg",
                height: 350,
                width: 350,
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "\ud83d\udc49CSI-RAIT proudly presents_DESIGNAIRÉ\ud83d\udc49",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 38.0),
                child: Text(
                  "Design is not just about visuals-it's the ability to craft stories, experiences, and emotions into impactful realities. With powerful tools like Figma and Adobe Premiere Pro, the design process becomes a seamless blend of creativity and innovation.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: .0),
                child: Text(
                  "\ud83d\udcc5 Date: 8th & 9th February\n\ud83d\udecb Venue: Lab 619\n\ud83d\udcb2 Fees: ₹50/- for non-CSI members\n\ud83c\udf1f FREE for CSI members",
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
