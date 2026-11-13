import 'package:flutter/material.dart';

class HomeSearchModel extends StatelessWidget {
  const HomeSearchModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF2B2D31),
              borderRadius: BorderRadius.circular(28.0),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.white70, size: 22.0),
                const SizedBox(width: 8.0),
                const Expanded(
                  child: Text(
                    'where to?',
                    style: TextStyle(color: Colors.white70, fontSize: 16.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 6.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF9E67),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.white, size: 16.0),
                      SizedBox(width: 6.0),
                      Text(
                        'Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 18.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
