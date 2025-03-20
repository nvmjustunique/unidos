import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  final Function()? onTap;

  const PaymentButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: 00, left: 30, right: 30),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(84, 66, 235, 1),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          'Upload File',
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
