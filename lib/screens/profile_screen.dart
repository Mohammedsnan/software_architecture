import 'package:flutter/material.dart';
import 'package:software_architecture/models/string_listview_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  Container(
                    height: 300,
                    width: 400,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF9E67),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hi there',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Stanislav Kashchishen ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 19),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipOval(
                                  child: Image.network(
                                    '',
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(
                                        Icons.error,
                                        color: Colors.grey,
                                        size: 36.0,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                               Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft:Radius.circular(20),
                                      bottomLeft: Radius.circular(20)
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.help ,color: Colors.white,size: 36,),
                                      SizedBox(height: 5,),
                                      Text('Help' ,style: TextStyle(color: Colors.white),)

                                    ],
                                  ),
                                ),
                                SizedBox(width: 4,),
                                 Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(
                                      5
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.wallet ,color: Colors.white,size: 36,),
                                      SizedBox(height: 5,),
                                      Text('Wallet' ,style: TextStyle(color: Colors.white),)

                                    ],
                                  ),
                                ),
                                SizedBox(width: 4,),
                                 Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      bottomRight:Radius.circular(20),
                                      topRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.tips_and_updates ,color: Colors.white,size: 36,),
                                      SizedBox(height: 5,),
                                      Text('Tips' ,style: TextStyle(color: Colors.white),)

                                    ],
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  StringListViewModel(icons: Icons.message, Tital: 'Message'),
                  Divider(),
                  StringListViewModel(icons: Icons.settings, Tital: 'Setting'),
                  Divider(),
                  StringListViewModel(
                    icons: Icons.person,
                    Tital: 'Earn by driving or delivering',
                  ),
                  Divider(),
                  StringListViewModel(icons: Icons.error, Tital: 'Legal'),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
