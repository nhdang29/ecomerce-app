import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';


class GridTilesProducts extends StatelessWidget {

  final String name;
  final String imageUrl;
  final String slug;
  final String? price;
  final bool fromSubProducts;

  const GridTilesProducts(
      {
        required this.name,
        required this.imageUrl,
        required this.slug,
        this.price,
        this.fromSubProducts = false,
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /* if (fromSubProducts) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductsScreen(
                      slug: "products/?page=1&limit=12&category=" + slug,
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
        }*/

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetailScreen(
                slug: "products/$slug/",
              )),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 5),
        child: Card(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            elevation: 0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.network(
                    imageUrl,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: Text(
                        (name.length <= 40 ? name : name.substring(0, 40)),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color(0xFF444444),
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Text((price != null) ? price! : 'Unavailable',
                        style: TextStyle(
                            color: (price != null)
                                ? const Color(0xFFf67426)
                                : const Color(0xFF0dc2cd),
                            fontFamily: 'Roboto-Light.ttf',
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            )),
      ),
    );
  }
}