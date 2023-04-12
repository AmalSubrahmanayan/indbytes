import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/controller/bottom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:indbytes/view/DetailPage/detailpage.dart';
import 'package:indbytes/view/home/home.dart';
import 'package:indbytes/view/profile/profile.dart';
import 'package:indbytes/view/sign_up/sign_up.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List<dynamic> body = [
    const HomeScreen(),
    const DetailPage(),
    const SignUp(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<BottomNavBarProvider>(context);
    int curentbodyindex = controller.currentIndexsearch();
    return Scaffold(
      body: body[curentbodyindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentbodyindex,
        type: BottomNavigationBarType.fixed,
        onTap: ((value) => controller.newIndex(value)),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              (curentbodyindex == 0) ? Icons.home_outlined : Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              (curentbodyindex == 1) ? Icons.search_outlined : Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Activity',
            icon: Icon(
              (curentbodyindex == 2) ? Icons.favorite_border : Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (curentbodyindex == 3)
                  ? Icons.person_outline_outlined
                  : Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.redColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
