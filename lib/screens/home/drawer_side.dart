import 'package:devapps/config/colors.dart';
import 'package:flutter/material.dart';

import '../my_profile/my_profile.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);

  Widget listTile({
    required String title,
    required IconData iconData,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Guest'),
                      SizedBox(height: 10),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: null,
                          child: Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              title: 'Home',
              iconData: Icons.home_outlined,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop_outlined),
              title: Text('Review Cart'),
            ),
            listTile(
              title: 'My Profile',
              iconData: Icons.person_outlined,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text('Notification'),
            ),
            ListTile(
              leading: Icon(Icons.star_border_rounded),
              title: Text('Rating & Review'),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_outlined),
              title: Text('Wishlist'),
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Raise a complaint'),
            ),
            ListTile(
              leading: Icon(Icons.format_quote_outlined),
              title: Text('FAQs'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 300.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Support',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Call us: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('+91 1234567891'),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Mail us: ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text('dilip@i-engage.in'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
