
import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';

class DrawerSide extends StatelessWidget {

  Widget listTitle({required IconData icon, required String title}) {
    return ListTile(
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
              ),
              listTitle(
                icon: Icons.shop_outlined,
                title: "Review Cart",
              ),
              listTitle(
                icon: Icons.person_outline,
                title: "My Profile",
              ),
              listTitle(
                icon: Icons.notifications_outlined,
                title: "Notification",
              ),
              listTitle(
                icon: Icons.star_outline,
                title: "Rating & Review",
              ),
              listTitle(
                icon: Icons.favorite_outline,
                title: "Wishlist",
              ),
              listTitle(
                icon: Icons.copy_outlined,
                title: "Raise a Complaint",
              ),
              listTitle(
                icon: Icons.format_quote_outlined,
                title: "FAQs",
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