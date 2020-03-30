import 'package:flutter/material.dart';
import '../widgets/OrderItem.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart' show Orders;
class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders Screen"),
      ),
    body: ListView.builder(itemBuilder: (ctx, i) => OrderItem(orderData.oredrs[i]),itemCount: orderData.oredrs.length,),
    );
  }
}
