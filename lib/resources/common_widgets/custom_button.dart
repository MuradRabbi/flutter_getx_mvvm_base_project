import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onTap,
    required this.title,
    this.height =55.0,
    this.width = 165.0,
    this.backgroundColor = Colors.deepPurple,
    this.borderRadius = 8.0,
    this.titleTextColor = Colors.white,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    super.key,
  });

  final VoidCallback onTap;
  final String title;
  final double? height , width ;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? titleTextColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius!)
        ),
        child: Text(title, style: TextStyle(color: titleTextColor, fontSize: fontSize, fontWeight: fontWeight),),
      ),
    );
  }
}
