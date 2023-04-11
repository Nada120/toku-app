import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  
  final String title;
  final Color textColor, backgroundColor;
  void Function()? process;

  Category({
    super.key,
    required this.title,
    required this.textColor,
    required this.backgroundColor,
    required this.process,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: process,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        color: backgroundColor,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
