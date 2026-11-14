import 'package:flutter/material.dart';
import 'package:software_architecture/widgets/activity/activity_list_section.dart';
import 'package:software_architecture/widgets/home/home_search_bar.dart';
import 'package:software_architecture/widgets/home/home_services_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: Colors.black,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeServicesGrid(),
                const SizedBox(height: 16.0),
                HomeSearchBar(),
                const SizedBox(height: 16.0),
                ActivityListSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
