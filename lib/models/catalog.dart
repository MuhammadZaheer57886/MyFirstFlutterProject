class CatalogModel{

  
    static final items= [
    
    
      Item(
      id: 1,
      name: "Lead Pencils",
      desc: "Lead Pencils from Different Companies are Available",
      price: 15,
      color: "#33505a",
      image:
          "https://img.freepik.com/premium-photo/artistic-background-is_522472-12721.jpg?w=360")
];

}


class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

