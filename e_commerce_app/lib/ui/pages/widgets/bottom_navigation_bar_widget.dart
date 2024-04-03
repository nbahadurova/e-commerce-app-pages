import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;
  void select(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal10 + AppPaddings.bottom8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: BottomNavigationBar(
            selectedItemColor: AppColors.orange,
            selectedIconTheme: IconThemeData(color: AppColors.orange),
            unselectedItemColor: AppColors.white,
            currentIndex: selectedIndex,
            onTap: select,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.black,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.find_in_page,
                ),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile',
              )
            ]),
      ),
    );
  }
}
