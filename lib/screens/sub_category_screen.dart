import 'package:flutter/material.dart';
import 'package:flutter_app_banhang/common_widget/app_bar_widget.dart';
import 'package:flutter_app_banhang/common_widget/search_widget.dart';

import '../components/brand_home_page.dart';
import '../components/category_slider.dart';
import '../components/shop_home_page.dart';


class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({required this.slug, super.key});

  final String slug;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBarWidget(context),
        body: SafeArea(
          child: Column(
            children: [
              const SearchWidget(),
              SizedBox(
                height: 10,
                child: Container(
                  color: const Color(0xFFf5f6f7),
                ),
              ),
              const PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Sub Categories',
                    ),
                    Tab(
                      text: 'Brands',
                    ),
                    Tab(
                      text: 'Shops',
                    )
                  ], // list of tabs
                ),
              ),
              SizedBox(
                height: 10,
                child: Container(
                  color: const Color(0xFFf5f6f7),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                      child: CategoryPage(
                          slug: 'categories/?parent=$slug', isSubList: true),
                    ),
                    Container(
                      color: Colors.white24,
                      child: BrandHomePage(
                        slug: 'brands/?limit=20&page=1&category=$slug',
                        isSubList: true,
                      ),
                    ),
                    Container(
                      color: Colors.white24,
                      child: ShopHomePage(
                        slug: 'category/shops/$slug/?page=1&limit=15',
                        isSubList: true,
                      ),
                    ) // class name
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
