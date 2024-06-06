import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../widgets/test.dart';
import '../home/home.dart';
import '../profile/profile_page.dart';
import '../shimmer/shimmer_items.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    Container(),
    MyApptest(),
    ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
         if (productController.isLoading.value) {
          return ShimmerItems();
        } else {
          return Scaffold(
            body: _pages[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedFontSize: 11,
              selectedFontSize: 11,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: "Home",
                  tooltip: "Home",
                  icon: SvgPicture.asset(
                    "assets/icons/Shop Icon.svg",
                    fit: BoxFit.cover,
                    color: Colors.grey,
                    height: 20,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/icons/Shop Icon.svg",
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                    height: 20,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Favourite",
                  icon: SvgPicture.asset(
                    "assets/icons/Heart Icon.svg",
                    fit: BoxFit.cover,
                    color: Colors.grey,
                    height: 20,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/icons/Heart Icon.svg",
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                    height: 20,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Chat",
                  icon: SvgPicture.asset(
                    "assets/icons/Chat bubble Icon.svg",
                    fit: BoxFit.cover,
                    color: Colors.grey,
                    height: 20,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/icons/Chat bubble Icon.svg",
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                    height: 20,
                  ),
                  // activeIcon: iconAssetImage("assets/icons/cart.png"),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: SvgPicture.asset(
                    "assets/icons/User Icon.svg",
                    fit: BoxFit.cover,
                    color: Colors.grey,
                    height: 20,
                  ),
                  activeIcon: SvgPicture.asset(
                    "assets/icons/User Icon.svg ",
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                    height: 20,
                  ),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            ),
          );
        }
      },
    );
  }
}
