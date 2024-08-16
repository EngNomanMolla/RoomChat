import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
 final double height;
 final double width;
 final Color color;
 final String title;
 final Color titleColor;
 final VoidCallback onTap;

  CustomButton({required this.height, required this.width, required this.color,required this.title,required this.titleColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Center(
          child: Text(title,style: TextStyle(
            fontSize: 14.0,
            color: titleColor,
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrat"
          )),
        ),
      ),
    );
  }
}
