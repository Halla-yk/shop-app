import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';

class ProductItem extends StatelessWidget {
//  final String id;
//  final String title;
//  final String imageUrl;
//
//  ProductItem(this.title, this.id, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,
        listen:
            false); //خليتها علشان بدي ءاخد data من ال  product بس عملت ال listen false علشان ما بدي يعمل rebuild لكل ال widget
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
        },
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTileBar(
          backgroundColor: Colors.black38,
          leading: Consumer<Product>(
            // بس رح يعمل rebuild  لهاي علشنها الوحيدة اللي بتتأثر بالتغيير
            builder: (ctx, product, child) => IconButton(
                icon: Icon(product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () => {product.toggleFavoriteStatus()}),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing:
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => {}),
        ),
      ),
    );
  }
}
