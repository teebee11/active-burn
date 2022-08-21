import 'package:active_burn_app/views/menu.dart';
import 'package:active_burn_app/views/plans.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    PlansScreen(),
    MenuScreen(),
  ];

  int _selectedIndex = 0; //New

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(90.0), topRight: Radius.circular(90.0)),
          color: Theme.of(context).bottomAppBarColor,
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                icon: _selectedIndex == 0
                    ? const CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(255, 52, 51, 51),
                        minRadius: 60,
                        child: ImageIcon(
                          AssetImage("assets/icons/dashboard white.png"),
                          size: 27,
                        ),
                      )
                    : const ImageIcon(
                        AssetImage("assets/icons/dashboard white.png"),
                        size: 25,
                      )),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                icon: _selectedIndex == 1
                    ? const CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(255, 52, 51, 51),
                        radius: 100,
                        child: ImageIcon(
                          AssetImage("assets/icons/plans icon white.png"),
                          size: 27,
                        ),
                      )
                    : const ImageIcon(
                        AssetImage("assets/icons/plans icon.png"),
                        size: 25,
                      )),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                icon: _selectedIndex == 2
                    ? const CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(255, 52, 51, 51),
                        radius: 100,
                        child: Icon(
                          Icons.menu,
                          size: 27,
                        ),
                      )
                    : const Icon(
                        Icons.menu,
                        size: 25,
                      )),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(
            //     AssetImage("assets/icons/dashboard.png"),
            //     size: 25,
            //   ),
            //   label: "Dasboard",
            // ),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(
            //     AssetImage("assets/icons/plans icon.png"),
            //     size: 25,
            //   ),
            //   label: "Plans",
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.menu,
            //     size: 25,
            //   ),
            //   label: "Menu",
            // ),
          ],
          // currentIndex: _selectedIndex, //New
          // onTap: _onItemTapped, //New
          // selectedItemColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                "assets/upper circle.png",
              ),
            ),
            _pages.elementAt(_selectedIndex),
          ],
        ),
      ),
    );
  }
}
