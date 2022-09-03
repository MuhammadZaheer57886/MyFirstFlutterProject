import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';

import 'package:my_first_app/widget/item_widget.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  final int hours = 8;
  final String foryou = "Zaheer bro this is";

 HomePage({Key? key}) : super(key: key);
  final dummylist = List.generate(5, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fareed App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
