import 'package:flutter/material.dart';
import 'package:nti_islami/app_colors.dart';
import 'package:nti_islami/feauters/tabs/quran_tab/quran_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QranView(),
    Container(
      child: Center(
        child: Text('hadesh'),
      ),
    ),
    Container(
      child: Center(
        child: Text('sebha'),
      ),
    ),
    Container(
      child: Center(
        child: Text('radio'),
      ),
    ),
    Container(
      child: Center(
        child: Text('time'),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: Colors.white,

        showUnselectedLabels: false,

        // backgroundColor: AppColors.primaryColor,
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.black,
        // showUnselectedLabels: true,
        items: [
          _bottomNavItem(
            iconPath: 'assets/images/icons/ic_book.png',
            label: 'Quran',
            isActive: selectedIndex == 0,
          ),
          _bottomNavItem(
            iconPath: 'assets/images/icons/ic_hadeth.png',
            label: 'Hadeth',
            isActive: selectedIndex == 1,
          ),
          _bottomNavItem(
            iconPath: 'assets/images/icons/ic_sebha.png',
            label: 'Sebha',
            isActive: selectedIndex == 2,
          ),
          _bottomNavItem(
            iconPath: 'assets/images/icons/ic_radio.png',
            label: 'Radio',
            isActive: selectedIndex == 3,
          ),
          _bottomNavItem(
            iconPath: 'assets/images/icons/ic_time.png',
            label: 'Time',
            isActive: selectedIndex == 4,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomNavItem({
    required String iconPath,
    required String label,
    required bool isActive,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        iconPath,
        color: isActive ? Colors.white : Colors.black,
        height: 28,
      ),
      activeIcon: Container(
        width: 60,
        height: 34,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: AppColors.secondaryColor.withOpacity(0.6),
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.horizontal(
              left: const Radius.circular(55),
              right: const Radius.circular(55),
            )),
        child: Image.asset(
          iconPath,
          color: Colors.white,
          height: 28,
        ),
      ),
      label: label,
    );
  }
}
