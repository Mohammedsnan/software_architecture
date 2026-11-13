import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ColoredBox(
          color: Colors.black,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF9E67),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
