import 'package:flutter/material.dart';

class ForwardArrowButton extends StatelessWidget {
  const ForwardArrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.black ,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }
}