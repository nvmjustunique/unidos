import 'package:flutter/material.dart';

class Registrationbutton extends StatelessWidget {
  final Function()? onTap;

  const Registrationbutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(22),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(84, 66, 235, 1),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
      ),
    );
  }
}
