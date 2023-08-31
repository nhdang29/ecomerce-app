import 'package:flutter/material.dart';

import '../common_widget/grid_tiles_category.dart';

class BrandHomePage extends StatelessWidget {
  const BrandHomePage({required this.slug, this.isSubList = false,super.key});

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
            child: GridTilesCategory(
                name: "name",
                imageUrl: "https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg",
                slug: "/",
            )
        );
      }),
    );
  }
}


// phan xu li lay du lieu tu web service

// Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
//   BrandModel values = snapshot.data;
//   List<Results> results = values.results;
//   return GridView.count(
//     crossAxisCount: 3,
//     padding: EdgeInsets.all(1.0),
//     childAspectRatio: 8.0 / 9.0,
//     children: List<Widget>.generate(results.length, (index) {
//       return GridTile(
//           child: GridTilesCategory(
//               name: results[index].name,
//               imageUrl: results[index].imageUrl,
//               slug: results[index].slug));
//     }),
//   );
// }

// Future<BrandModel> getCategoryList(String slug, bool isSubList) async {
//   if (brandModel == null) {
//     Response response = await get(Urls.ROOT_URL + slug);
//     int statusCode = response.statusCode;
//     var body = json.decode(response.body);
//     log('${body}');
//     if (statusCode == 200) {
//       brandModel = BrandModel.fromJson(body);
// //    brandModel = (body).map((i) =>BrandModel.fromJson(body)) ;
//       return brandModel;
//     }
//   } else {
//     return brandModel;
//   }
// }
