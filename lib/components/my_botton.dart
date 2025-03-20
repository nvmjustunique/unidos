import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(21),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(84, 66, 235, 1),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          'Login',
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
