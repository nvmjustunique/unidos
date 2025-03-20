import 'package:flutter/material.dart';

class OtpButton extends StatelessWidget {
  final Function()? onTap;

  const OtpButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(22),
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(84, 66, 235, 1),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          'Verify',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        )),
      ),
    );
  }
}
