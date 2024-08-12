import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/screens/auth/home/home_page.dart';
import 'package:flutter_aninmation_ui/screens/auth/home/widgets/add_drink.dart';
import 'package:flutter_aninmation_ui/screens/auth/home/widgets/categoreis.dart';
import 'package:flutter_aninmation_ui/screens/auth/home/widgets/profiles.dart';
import 'package:flutter_aninmation_ui/themes/theme.dart';

class MainPage extends StatefulWidget {
  static String route = "/dashBoard/MainPage";

  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;

  gotoHistory() {
    setState(() {
      _selectedIndex = 1;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddDrink(),
    Categories(),
    Profiles()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kprimaryColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wine_bar),
            label: 'Drinks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Sales',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: kprimaryColor,
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: 28.0,
                    )
                  ],
                ),
              ),
              onPressed: () async {},
            )
          : null,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
