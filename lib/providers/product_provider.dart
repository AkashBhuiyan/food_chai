import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_chai/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  late ProductModel productModel;

  List<ProductModel> search = [];

  productModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
      productImage: element.get("productImage"),
      productName: element.get("productName"),
      productPrice: element.get("productPrice"),
    );
    search.add(productModel);
  }

  ////////////////// Vegetable Products ////////////////////////

  List<ProductModel> vegetableProductList = [];

  fetchVegetablesProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("VegetablesProduct").get();

    value.docs.forEach(
      (element) {
        productModels(element);
        newList.add(productModel);
      },
    );
    vegetableProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getVegetablesProductDataList {
    return vegetableProductList;
  }

  ////////////////// Fruits ////////////////////////

  List<ProductModel> fruitsProductList = [];

  fetchFruitsProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("Fruits").get();

    value.docs.forEach(
      (element) {
        print(element.data());
        productModels(element);
        newList.add(productModel);
      },
    );
    fruitsProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFruitsProductDataList {
    return fruitsProductList;
  }

  ////////////////// Groceries ////////////////////////

  List<ProductModel> groceriesProductList = [];

  fetchGroceriesProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("Groceries").get();

    value.docs.forEach(
      (element) {
        productModels(element);
        newList.add(productModel);
      },
    );
    groceriesProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getGroceriesProductDataList {
    return groceriesProductList;
  }

  ////////////////search Return /////////////
  List<ProductModel> get getAllProductSearch {
    return search;
  }

}
