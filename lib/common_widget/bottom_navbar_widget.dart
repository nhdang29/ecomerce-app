import 'package:flutter/material.dart';
import 'package:flutter_app_banhang/providers/page_index_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';


class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});


  @override
  Widget build(BuildContext context) {


    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.heart),
          label: 'Wish List'
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.cartShopping),
          label: 'Cart'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account"
        ),
      ],
      currentIndex: context.watch<PageIndexProvider>().index,
      selectedItemColor: const Color(0xFFAA292E),
      onTap: (index){
        context.read<PageIndexProvider>().navigateToIndex(index);
      },
    );
  }
}