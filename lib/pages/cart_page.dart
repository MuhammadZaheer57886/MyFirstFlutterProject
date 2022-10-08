import 'package:flutter/material.dart';
import 'package:my_first_app/models/cart.dart';
// ignore: unused_import
import 'package:my_first_app/models/catalog.dart';
// ignore: unused_import
import 'package:my_first_app/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart"
            .text
            .color(const Color.fromARGB(255, 0, 151, 81))
            .bold
            .xl2
            .make(),
      ),
      body: Column(
        children: [
          const _cartList().p32().expand(),
          const Divider(),
          _cartTotal(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _cartTotal extends StatelessWidget {
  _cartTotal({Key? key}) : super(key: key);
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "\$${_cart.totalPrice}".text.bold.xl4.color(Colors.red).make(),
        30.widthBox,
        ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: "Buying Not Supported Yet.".text.bold.make()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                ),
                child: "Buy".text.bold.make())
            .w32(context),
      ]),
    );
  }
}

// ignore: camel_case_types
class _cartList extends StatefulWidget {
  const _cartList({Key? key}) : super(key: key);

  @override
  State<_cartList> createState() => _cartListState();
}

// ignore: camel_case_types
class _cartListState extends State<_cartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        iconColor: Colors.green,
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove_circle_outline),
          color: Colors.red,
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
