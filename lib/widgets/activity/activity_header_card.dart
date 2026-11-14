import 'package:flutter/material.dart';

class ActivityHeaderCard extends StatelessWidget {
  const ActivityHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Color(0xFFFF9E67),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Activity',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text('    Post', style: TextStyle(color: Colors.black, fontSize: 15)),
          SizedBox(height: 25),
          Container(
            height: 200,
            width: 400,
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Text(
                  'Comfort',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '    Aug ,24 7:10 PM',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Text(
                  '    UAH 0.00 , Cancolod',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}