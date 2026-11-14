import 'package:flutter/material.dart';
import 'package:software_architecture/widgets/profile/profile_header_card.dart';
import 'package:software_architecture/widgets/profile/profile_menu_tile.dart';

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
               padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileHeaderCard(),
                  ProfileMenuTile()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

