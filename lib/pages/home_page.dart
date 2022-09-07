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
    // ignore: unused_local_variable
    final decodedData = jsonDecode(catalogJson);
    // ignore: avoid_print, unused_local_variable
    var productData = decodedData["products"];
    // ignore: avoid_print
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(5, (index) => CatalogModel.items[0]);
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
