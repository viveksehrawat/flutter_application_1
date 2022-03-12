import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

import '../utils/routes.dart';

class ItemWidget extends StatelessWidget {
  Item item = Item();

  ItemWidget({Key? key, required this.item}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
          // print("${item.name} pressed");
        },
        leading: Image.network(item.image!),
        title: Text(item.name!),
        subtitle: Text(item.desc!),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
