import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';
class ProductDetailScreen extends StatelessWidget {

 // final String title;

 // ProductDetailScreen(this.title);

  static const routeName = '/product-detail-screen';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final lodedProduct = Provider.of<Products>(context,listen: false).findById(productId);
    return Scaffold(appBar: AppBar(title: Text(lodedProduct.title),),);
  }
}
