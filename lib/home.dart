import 'package:flutter/material.dart';
import 'package:simplify_task/constants/constants.dart';
import 'package:simplify_task/dashboard/ui/dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: [
          const DashBoard(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 72.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(2.0),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor: kSelectedItemColor,
          unselectedItemColor: Colors.black.withOpacity(0.3),
          selectedLabelStyle: TextStyles.semiBold(
            color: kSelectedItemColor,
            fontSize: 14.0,
          ),
          unselectedLabelStyle: TextStyles.semiBold(
            color: Colors.black.withOpacity(0.3),
            fontSize: 14.0,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex!,
          onTap: (index) {},
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
