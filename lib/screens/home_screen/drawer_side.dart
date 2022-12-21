import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';
import 'package:food_chai/screens/user_profile/user_profile.dart';

class DrawerSide extends StatelessWidget {
  Widget listTitle(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 100,
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
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Guest'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Login'),
                          /*shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                width: 2,
                              ),
                            ),*/
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            listTitle(
              icon: Icons.home_outlined,
              title: "Home",
              onTap: () {},
            ),
            listTitle(
              icon: Icons.shop_outlined,
              title: "Review Cart",
              onTap: () {},
            ),
            listTitle(
              icon: Icons.person_outline,
              title: "My Profile",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UserProfile(),
                  ),
                );
              },
            ),
            listTitle(
              icon: Icons.notifications_outlined,
              title: "Notification",
              onTap: () {},
            ),
            listTitle(
              icon: Icons.star_outline,
              title: "Rating & Review",
              onTap: () {},
            ),
            listTitle(
              icon: Icons.favorite_outline,
              title: "Wishlist",
              onTap: () {},
            ),
            listTitle(
              icon: Icons.copy_outlined,
              title: "Raise a Complaint",
              onTap: () {},
            ),
            listTitle(
              icon: Icons.format_quote_outlined,
              title: "FAQs",
              onTap: () {},
            ),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Call us:"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("+1234567890"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Mail us:"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("support@foodchai.com"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
