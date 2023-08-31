import 'package:flutter/material.dart';
import 'package:flutter_app_banhang/providers/page_index_provider.dart';
import 'common_widget/app_bar_widget.dart';
import 'common_widget/bottom_navbar_widget.dart';
import 'common_widget/drawer_widget.dart';
import './screens/export_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageIndexProvider()),
      ],
      child: MaterialApp(
        title: 'Ecomerce App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> viewContainer = [
    const HomeScreen(),
    const WishListScreen(),
    const ShoppingCartScreen(),
    const AccountScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBarWidget(context),
        drawer: const DrawerWidget(),
        body: IndexedStack(
          index: context.watch<PageIndexProvider>().index,
          children: viewContainer,
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}


