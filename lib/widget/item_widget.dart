import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print(item.name);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 67, 111),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
