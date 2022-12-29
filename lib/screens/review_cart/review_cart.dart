import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';
import 'package:food_chai/models/review_cart_model.dart';
import 'package:food_chai/providers/review_cart_provider.dart';
import 'package:food_chai/widgets/single_item.dart';
import 'package:provider/provider.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    reviewCartProvider.getReviewCartData();
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text(
          "Tk 170.00",
          style: TextStyle(
            color: Colors.green[900],
          ),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text("Submit"),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Review Cart",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
      body: reviewCartProvider.getReviewCartDataList.isEmpty? Center(
        child: Text("No Data"),
      ) : ListView.builder(
        itemCount: reviewCartProvider.getReviewCartDataList.length,
        itemBuilder: (context, index) {
          ReviewCartModel data = reviewCartProvider.getReviewCartDataList[index];
          return Column(
            children: [
              SingleItem(
                isBool: true,
                productImage: data.cartImage,
                productName: data.cartName,
                productPrice: data.cartPrice,
                productId: data.cartId,
                productQuantity: data.cartQuantity,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
