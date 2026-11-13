import 'package:flutter/material.dart';
import 'package:software_architecture/models/activty_headeer_model.dart';
import 'package:software_architecture/models/activty_list_view_model.dart';

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
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActivtyHeadeerModel(),
                  ActivityListViewModel(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



