import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/pages/home.dart';
import 'package:flutter_project/pages/profile.dart';
import 'package:flutter_project/pages/signup.dart';
import 'package:flutter_project/pages/wallet.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late home homepage;
  late Profile profile;
  late Wallet wallet;
  // late SignUp signUp;

  @override
  void initState() {
    homepage = home();
    profile = Profile();
    wallet = Wallet();
    // signUp = SignUp();
    pages = [homepage, profile, wallet];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Color(0xffff5722),
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(Icons.home_outlined, color: Colors.white),
            Icon(Icons.shopping_bag_outlined, color: Colors.white),
            Icon(Icons.wallet_outlined, color: Colors.white),
            Icon(Icons.person_2_outlined, color: Colors.white),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
