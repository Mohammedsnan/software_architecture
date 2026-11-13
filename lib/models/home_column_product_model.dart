import 'package:flutter/material.dart';
import 'package:software_architecture/Lists/List_GridView.dart';

class HomeColumnproduModel extends StatelessWidget {
  const HomeColumnproduModel({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Center(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, color: Colors.grey, size: 36.0);
              },
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Text(
              product.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (product.hasPromo) ...[
              SizedBox(width: 5.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFF9E67),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  'Promo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 18.0),
            ],
          ],
        ),
      ],
    );
  }
}
