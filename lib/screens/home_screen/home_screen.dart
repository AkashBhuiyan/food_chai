import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';
import 'package:food_chai/providers/product_provider.dart';
import 'package:food_chai/screens/home_screen/single_product.dart';
import 'package:food_chai/screens/product_overview/product_overview.dart';
import 'package:food_chai/screens/search/search.dart';
import 'package:provider/provider.dart';
import 'drawer_side.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;

  Widget _buildVegetableProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
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
            children: productProvider.getVegetablesProductDataList.map(
              (vegetables) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: vegetables.productImage,
                          productName: vegetables.productName,
                          productPrice: vegetables.productPrice,
                        ),
                      ),
                    );
                  },
                  productImage:vegetables.productImage,
                  productName: vegetables.productName,
                  productPrice: vegetables.productPrice,
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildFruitProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fruits'),
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
            children: productProvider.getFruitsProductDataList.map(
                  (fruits) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: fruits.productImage,
                          productName: fruits.productName,
                          productPrice: fruits.productPrice,
                        ),
                      ),
                    );
                  },
                  productImage:fruits.productImage,
                  productName: fruits.productName,
                  productPrice: fruits.productPrice,
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Groceries'),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: productProvider.getGroceriesProductDataList.map(
                        (groceries) {
                      return SingleProduct(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductOverView(
                                productImage: groceries.productImage,
                                productName: groceries.productName,
                                productPrice: groceries.productPrice,
                              ),
                            ),
                          );
                        },
                        productImage:groceries.productImage,
                        productName: groceries.productName,
                        productPrice: groceries.productPrice,
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fetchVegetablesProductData();
    productProvider.fetchFruitsProductData();
    productProvider.fetchGroceriesProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(
      context,
    );
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xEADEDDFF),
            radius: 15,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
              icon: Icon(
                Icons.search,
                size: 17,
                color: textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xEADEDDFF),
              radius: 15,
              child: Icon(
                Icons.shop,
                size: 17,
                color: textColor,
              ),
            ),
          ),
        ],
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
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
                            child: const Center(
                              child: Text(
                                'Food Chai',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black87,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '30% Off',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.green[100],
                              fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'On all vegetables products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildVegetableProduct(context),
            _buildFruitProduct(context),
            _buildRootProduct(context),
          ],
        ),
      ),
    );
  }
}
