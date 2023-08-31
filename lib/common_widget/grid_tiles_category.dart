import 'package:flutter/material.dart';
import '../screens/products_screen.dart';
import '../screens/sub_category_screen.dart';

class GridTilesCategory extends StatelessWidget {
  const GridTilesCategory({required this.name, required this.imageUrl, required this.slug, this.fromSubProducts = false, super.key});

  final String name;
  final String imageUrl;
  final String slug;
  final bool fromSubProducts;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if (fromSubProducts) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductsScreen(
                  slug: "products/?page=1&limit=12&category=$slug",
                  name: name,
                )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryScreen(
                  slug: slug,
                )),
          );
        }
      },
      child: Card(
          color: Colors.white,
          elevation: 0,
          child: Center(
            child: Column(
              children: <Widget>[
                Image.network(
                  imageUrl,
                  width: 100,
                  height: 100,
                ),
                Text(name,
                    style: const TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: 12))
              ],
            ),
          )
      ),
    );
  }
}

