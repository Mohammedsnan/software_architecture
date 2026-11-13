import 'package:flutter/material.dart';
import 'package:software_architecture/models/bachLlstmodel.dart';
class StringListViewModel extends StatelessWidget {
  const StringListViewModel({
    super.key, required this.icons, required this.Tital,
  });
  final IconData icons;
  final String Tital ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            padding: EdgeInsets.all(1),
            
            child: Center(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Icon(icons ,color: Colors.white,),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Text(
                     Tital,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  BackListModel()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}