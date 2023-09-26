//   color: Color.fromRGBO(253, 135, 56, 1),
//color:Color(0xFFffaa5b)

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_learning_app/classes/class_screen.dart';
import 'package:e_learning_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants/constants.dart';
import '../screens/components/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 75),
          child:
              Text("EduConnect", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
              )),
        ],
        backgroundColor: Color(0xFFffaa5b),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Create a Class",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(250, 250, 250, 1),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start),
              leading: Icon(
                MdiIcons.plus,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              onTap: () {},
            ),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
              title: const Text(
                "Operating System",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                MdiIcons.arrowRight,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ClassScreen("Operating System")));
              },
            ),
            ListTile(
              title: const Text(
                "Java",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                MdiIcons.arrowRight,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ClassScreen("Java")));
              },
            ),
            ListTile(
              title: const Text(
                "Maths",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                MdiIcons.arrowRight,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ClassScreen("Maths")));
              },
            ),
            Container(height: 360),
            ListTile(
              title: const Text(
                "Close",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                MdiIcons.close,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              onTap: Navigator.of(context).pop,
            ),
          ],
        ),
        backgroundColor: const Color(0xFFffaa5b),
      ),

      //appBar: ,
      //bottom bar
      // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        //selectedIndex: _selectedIndex,
        selectedIndex: _page,
        showElevation: true, // use this to remove appBar's elevation
        // onItemSelected: (index) => setState(() {
        //   _selectedIndex = index;
        // }),
        onItemSelected: onPageChanged,
        items: [
          BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              activeColor: korange,
              inactiveColor: Colors.grey[300]),
          BottomNavyBarItem(
            icon: const Icon(Icons.upload),
            title: const Text('Add Notes'),
            inactiveColor: Colors.grey[300],
            activeColor: korange,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.message),
            title: const Text('Doubts'),
            inactiveColor: Colors.grey[300],
            activeColor: korange,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            inactiveColor: Colors.grey[300],
            activeColor: korange,
          ),
        ],
      ),
      body: Constants.tabsWidget[_page],
    );
  }
}
