import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shope_app_admin/screens/category_screen.dart';
import 'package:shope_app_admin/screens/dashboord_screen.dart';
import 'package:shope_app_admin/screens/main_category_screen.dart';
import 'package:shope_app_admin/screens/sub_category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),
      home:  sidemenu(),
    );
  }
}


class sidemenu extends StatefulWidget {
  static const String id ='side-menu';

  @override
  State<sidemenu> createState() => _sidemenuState();
}

class _sidemenuState extends State<sidemenu> {
  Widget _selectedScreen = DashBoordScreen();

screenSelector(item){
switch(item.route){
  case DashBoordScreen.id :{
    setState(() {
      _selectedScreen = DashBoordScreen();
    });
    break;
  }

  case CategoryScreen.id :{
    setState(() {
      _selectedScreen = CategoryScreen();
    });
    break;
  }

  case MainCategoryScreen.id :{
    setState(() {
      _selectedScreen = MainCategoryScreen();
    });
    break;
  }
  case SubCategoryScreen.id :{
    setState(() {
      _selectedScreen = SubCategoryScreen();
    });
    break;
  }
}

}

   @override
  Widget build(BuildContext context) {

    setState((){


    });
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Shope App Admin'),
      ),
      sideBar: SideBar(
        items: const [
          MenuItem(
            title: 'Dashboard',
            route: DashBoordScreen.id,
            icon: Icons.dashboard,
          ),
          MenuItem(
            title: 'Categories',
            icon: IconlyLight.category,
            children: [
              MenuItem(
                title: 'Category',
                route: CategoryScreen.id,
              ),
              MenuItem(
                title: 'Main Category',
                route: MainCategoryScreen.id,
              ),
              MenuItem(
                title: 'Sub Category',
                route: SubCategoryScreen.id,
              ),

            ],
          ),
        ],
        selectedRoute: sidemenu.id,
        onSelected: (item) {
          screenSelector(item);
          // if (item.route != null) {
          //   Navigator.of(context).pushNamed(item.route!);
          // }
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child:  Center(
            child: Text(
              '${DateTimeFormat.format(DateTime.now(), format: AmericanDateFormats.dayOfWeek)}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: _selectedScreen,
      ),
    );
  }
}
