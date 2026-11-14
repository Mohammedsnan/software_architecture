import 'package:flutter/material.dart';
import 'package:software_architecture/widgets/activity/activity_header_card.dart';
import 'package:software_architecture/widgets/activity/activity_list_section.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});
  
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
                  ActivityHeaderCard(),
                  ActivityListSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



