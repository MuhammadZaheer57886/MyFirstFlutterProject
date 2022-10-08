import 'package:my_first_app/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  // catalog fileds
  late CatalogModel _catalog;

  //collections of ids and store ids of each items
  final List<int> _itemIds = [];

  //geter for catalogmodel class
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyid(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
  // add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
