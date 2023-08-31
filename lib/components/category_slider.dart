
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../common_widget/grid_tiles_category.dart';
// import '../common_widget/circular_progress.dart';

List<CategoryModel> categories = [];

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.slug, this.isSubList = false});

  final String slug;
  final bool isSubList;

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //   future: getCategoryList(slug, isSubList),
    //   builder: (BuildContext context, AsyncSnapshot snapshot){
    //     switch (snapshot.connectionState){
    //       case ConnectionState.none:
    //       case ConnectionState.waiting:
    //         return const CircularProgress();
    //       default:
    //         if(snapshot.hasError) {
    //           return Text('Error: ${snapshot.error}');
    //         } else {
    //           return createListView(context, snapshot, isSubList);
    //         }
    //     }
    //   },
    // );

    return GridView.count(
      crossAxisCount: 3,
//    physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(1.0),
      childAspectRatio: 8.0 / 9.0,
      children: List<Widget>.generate(4, (index) {
        return GridTile(
            child: GridTilesCategory(
              name: "bot ngot",
              imageUrl: "https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg",
              slug: "/",
              fromSubProducts: isSubList,
            ));
      }),
    );
  }
}


Widget createListView(BuildContext context, AsyncSnapshot snapshot, bool isSubList) {
  List<CategoryModel> values = snapshot.data;
  return GridView.count(
    crossAxisCount: 3,
//    physics: NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 9.0,
    children: List<Widget>.generate(values.length, (index) {
      return GridTile(
          child: GridTilesCategory(
            name: values[index].name,
            imageUrl: values[index].imageUrl,
            slug: values[index].slug,
            fromSubProducts: isSubList,
          ));
    }),
  );
}

Future<List<CategoryModel>> getCategoryList(String slug, bool isSubList) async {
  if (isSubList) {
    categories = [];
  }
  // if (categories.isEmpty) {
  //   Response response;
  //   response = await get(Urls.ROOT_URL + slug);
  //   int statusCode = response.statusCode;
  //   final body = json.decode(response.body);
  //   if (statusCode == 200) {
  //     categories =
  //         (body as List).map((i) => CategoryModel.fromJson(i)).toList();
  //
  //     return categories;
  //   } else {
  //     return categories = List();
  //   }
  // } else {
  //   return categories;
  // }

  return categories;
}
