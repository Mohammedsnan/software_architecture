import 'package:flutter/material.dart';
import 'package:software_architecture/Lists/List_GridView.dart';
import 'package:software_architecture/models/home_column_product_model.dart';


class HomeGridViewModel extends StatelessWidget {
  const HomeGridViewModel({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Color(0xFFFF9E67),
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: SizedBox(
        height: 400,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.0,
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
            final product = productList[index];
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFF1E1F22),
                borderRadius: BorderRadius.circular(23.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: HomeColumnproduModel(product: product),
            );
          },
        ),
      ),
    );
  }
}
