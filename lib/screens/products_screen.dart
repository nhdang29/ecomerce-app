import 'package:flutter/material.dart';
import 'package:flutter_app_banhang/common_widget/app_bar_widget.dart';

// import '../common_widget/circular_progress.dart';
import '../common_widget/grid_tiles_product.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({required this.name, required this.slug, super.key});

  final String name;
  final String slug;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ProductListWidget(
            slug: slug,
          )
      ),
    );
  }
}


class ProductListWidget extends StatelessWidget {
  const ProductListWidget({required this.slug, super.key});
  final String slug;

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //   future: getProductList(slug, false),
    //   builder: (context, AsyncSnapshot snapshot) {
    //     switch (snapshot.connectionState) {
    //       case ConnectionState.none:
    //       case ConnectionState.waiting:
    //         return const CircularProgress();
    //       default:
    //         if (snapshot.hasError) {
    //           return Text('Error: ${snapshot.error}');
    //         } else {
    //           return createListView(context, snapshot);
    //         }
    //     }
    //   },
    // );
    return GridView.count(
      crossAxisCount: 2,
//    physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(1.0),
      childAspectRatio: 8.0 / 12.0,
      children: List<Widget>.generate(6, (index) {
        return const GridTile(
            child: GridTilesProducts(
              name: "bot ngot",
              imageUrl: "https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg",
              slug: "/",
              price: "12000",
            ));
      }),
    );
  }
}


// ProductsModels products;
//
// Future<ProductsModels> getProductList(String slug, bool isSubList) async {
//   if (isSubList) {
//     products = null;
//   }
//   if (products == null) {
//     Response response;
//     response = await get(Urls.ROOT_URL + slug);
//     int statusCode = response.statusCode;
//     final body = json.decode(response.body);
//     if (statusCode == 200) {
//       products = ProductsModels.fromJson(body);
//       return products;
//     } else {
//       return products = ProductsModels();
//     }
//   } else {
//     return products;
//   }
// }

Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
  // ProductsModels values = snapshot.data;
  // List<Results> results = values.results;
  return GridView.count(
    crossAxisCount: 2,
//    physics: NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 12.0,
    children: List<Widget>.generate(4, (index) {
      return const GridTile(
          child: GridTilesProducts(
            name: "bot ngot",
            imageUrl: "https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg",
            slug: "/",
            price: "12000",
          ));
    }),
  );
}