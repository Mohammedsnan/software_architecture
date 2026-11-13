import 'package:flutter/material.dart';

class BackListModel extends StatelessWidget {
  const BackListModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
      child: Container(
        height: 20,
        width: 20,
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