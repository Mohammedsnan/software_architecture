import 'package:flutter/material.dart';
import 'package:software_architecture/data/profile_data.dart';
import 'package:software_architecture/widgets/common/forward_arrow_button.dart';
class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ProfileList.length,
        itemBuilder: (context, index) {
           final profList = ProfileList[index];
          return  Container(
            height: 70,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade900 ,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
                 padding: EdgeInsets.symmetric(vertical: 8.0 ,horizontal: 4.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Icon( profList.icons ,color: Colors.white,),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Text(
                         profList.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      ForwardArrowButton()
                    ],
                  ),
            ),
          );
        },
    );
  }
}