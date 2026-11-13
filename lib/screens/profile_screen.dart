import 'package:flutter/material.dart';
import 'package:software_architecture/models/profile_header_model.dart';
import 'package:software_architecture/models/string_listview_model.dart';

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
                  profileHeaderModel(),
                  StringListViewModel(icons: Icons.message, Tital: 'Message'),
                  Divider(),
                  StringListViewModel(icons: Icons.settings, Tital: 'Setting'),
                  Divider(),
                  StringListViewModel(
                    icons: Icons.person,
                    Tital: 'Earn by driving or delivering',
                  ),
                  Divider(),
                  StringListViewModel(icons: Icons.error, Tital: 'Legal'),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

