
import 'package:food_chai/screens/home_screen/single_product.dart';
import 'package:flutter/material.dart';
import 'package:food_chai/screens/home_screen/home_screen.dart';

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
    return Scaffold(
      backgroundColor: Color(0xffc4bebe),
      drawer: Drawer(
        child: Container(
          color: Color(0xff39b2b7),
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
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xff39b2b7),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xff39b2b7),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xff3ec8cd),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.eitfood.eu/files/_1200x514_crop_center-center_82_line/AdobeStock_102476307.jpeg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Color(0xff39b2b7),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 15, top: 5),
                                child: Text(
                                  'Food Chai',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            '25% Off',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17),
                            child: const Text(
                              'On All groceries product, Condition apply',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Vegetables'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProduct(productImage:
                  ('https://cdn.britannica.com/39/187439-050-35BA4DCA/Broccoli-florets.jpg'),
                      productName: ' 1',
                      onTap: () {})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingalProduct(productImage:
                    ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                      productName: ' 1',
                      onTap: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}