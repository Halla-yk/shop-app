import 'package:flutter/material.dart';
import '../providers/orders.dart' as or;
import 'package:intl/intl.dart';
class OrderItem extends StatelessWidget {
  final or.OrderItem orderItem;

  OrderItem(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(orderItem.amount.toString()),
            subtitle: Text(DateFormat('dd mm yyyy').format(orderItem.dateTime)),
            trailing: IconButton(icon:Icon(Icons.expand_more,) , onPressed: (){},),
          )
        ],
      ),
    );
  }
}
