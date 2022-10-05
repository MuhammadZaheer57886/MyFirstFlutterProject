
import 'package:flutter/cupertino.dart';
import 'package:my_first_app/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Fareed App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending Products".text.xl.make(),
      ],
    );
  }
}