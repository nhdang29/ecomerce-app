import 'package:flutter/material.dart';
import '../common_widget/search_widget.dart';
import '../common_widget/top_promo_slider.dart';
import '../common_widget/popular_menu.dart';
import '../components/brand_home_page.dart';
import '../components/category_slider.dart';
import '../components/shop_home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchWidget(),
        const TopPromoSlider(),
        const PopularMenu(),
        SizedBox(
          height: 10,
          child: Container(
            color: const Color(0xFFf5f6f7),
          ),
        ),
        const PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Categories',
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
                child: const CategoryPage(slug: 'categories/'),
              ),
              Container(
                color: Colors.white24,
                child: const BrandHomePage(slug: 'brands/?limit=20&page=1'),
              ),
              Container(
                color: Colors.white24,
                child: const ShopHomePage(
                  slug: 'custom/shops/?page=1&limit=15',
                ),
              ) // class name
            ],
          ),
        ),
      ],
    );
  }
}
