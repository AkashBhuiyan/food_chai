import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc4bebe),
      drawer: const Drawer(),
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
        child: Column(
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
            Row(
              children: [
                Container(
                  height: 230,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xF5F1F1FF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                            'https://e7.pngegg.com/pngimages/660/707/png-clipart-cabbage-vegetable-icon-single-cabbage-template-white.png'),
                      ),
                      Expanded(child: Container(),)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
