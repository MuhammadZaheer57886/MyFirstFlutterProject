import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/widget/item_widget.dart';

import 'dart:convert';

import '../widget/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    final catalogJson =
        await rootBundle.loadString("asserts/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];

    // ignore: unused_local_variable
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
        setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fareed App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
