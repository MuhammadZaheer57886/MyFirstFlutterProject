import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/models/catalog.dart';
// ignore: unused_import
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
    //  await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("asserts/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];

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

        // ignore: unnecessary_null_comparison
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child : GridTile(
                      header: Text(item.name),
                      child:Image.network(item.image)) ,
                    
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            //    ListView.builder(
            //     itemCount: CatalogModel.items.length,
            //     itemBuilder: (context, index) => ItemWidget(
            //       item: CatalogModel.items[index],
            //     ),
            //   )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
