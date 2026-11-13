import 'package:flutter/material.dart';
import 'package:software_architecture/models/activty_list_view_model.dart';
import 'package:software_architecture/models/home_gridview_model.dart';
import 'package:software_architecture/models/home_search_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ColoredBox(
        color: Colors.black,
        child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeGridViewModel(),
              SizedBox(height: 16.0),
              HomeSearchModel(),
              SizedBox(height: 16.0),
              ActivityListViewModel()
              
            ],
          ),
        ),
        ),
      ),
    );
  }
}
