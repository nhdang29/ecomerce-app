import 'package:flutter/material.dart';
import 'package:flutter_app_banhang/login_signin/login_screen.dart';
import 'package:flutter_app_banhang/providers/page_index_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';



class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Home',
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyHomePage()),
                // )
              onTap: (){
                  context.read<PageIndexProvider>().navigateToIndex(0);
              }
            ),
            _createDrawerItem(
                icon: Icons.favorite_border,
                text: 'Wish List',
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const WishListScreen()),
                // )
              onTap: (){
                context.read<PageIndexProvider>().navigateToIndex(1);
              }
            ),
            _createDrawerItem(
                icon: Icons.person,
                text: 'Acount',
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => EmptyWishListScreen()),
                // )
                onTap: (){
                  context.read<PageIndexProvider>().navigateToIndex(3);
                }
            ),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => EmptyWishListScreen()),
                // )
                onTap: (){}
            ),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Sign In',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                )
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/images/ic_app_icon.png',
              width: 130,
              height: 130,
            ),
          ),
        ),
        const Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
                "Version: 1.0",
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500
                )
            )
        ),
      ]
      )
  );
}

Widget _createDrawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: const Color(0xFF808080),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: const TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}