import 'package:flutter/material.dart';

import '../common_widget/grid_tiles_category.dart';

class ShopHomePage extends StatelessWidget {
  const ShopHomePage({required this.slug, this.isSubList = false, super.key});

  final String slug;
  final bool isSubList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(1.0),
      childAspectRatio: 8.0 / 9.0,
      children: List<Widget>.generate(12, (index) {
        return const GridTile(
            child: GridTilesCategory( // nay la cai nut
                name: "name",
                imageUrl: "https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg",
                slug: "/"
            )
        );
      }),
    );
  }
}


// Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
//   ShopModel values = snapshot.data;
//   List<Data> results = values.data;
//   return GridView.count(
//     crossAxisCount: 3,
//     padding: EdgeInsets.all(1.0),
//     childAspectRatio: 8.0 / 9.0,
//     children: List<Widget>.generate(results.length, (index) {
//       return GridTile(
//           child: GridTilesCategory(
//               name: results[index].shopName,
//               imageUrl: results[index].shopImage,slug:results[index].slug));
//     }),
//   );
// }
//
// Future<ShopModel> getCategoryList(String slug, bool isSubList) async {
//   if (isSubList) {
//     shopModel = null;
//   }
//   if (shopModel == null) {
//     Response response =
//     await get(Urls.ROOT_URL + slug);
//     int statusCode = response.statusCode;
//     var body = json.decode(response.body);
//     log('${body}');
//     if (statusCode == 200) {
//       shopModel = ShopModel.fromJson(body);
// //    brandModel = (body).map((i) =>BrandModel.fromJson(body)) ;
//       return shopModel;
//     }
//   } else {
//     return shopModel;
//   }
// }