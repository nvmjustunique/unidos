import 'package:flutter/material.dart';

class Bookingbutton extends StatelessWidget {
  final Function()? onTap;

  const Bookingbutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(84, 66, 235, 1),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          'Book Now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
