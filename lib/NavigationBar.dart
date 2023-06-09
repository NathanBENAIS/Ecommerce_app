import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'pages/Home2.dart';
import './pages/Sign_up.dart';
import './pages/Login.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  String currentPage = '/'; // Page par défaut

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: SvgPicture.asset(
                    'assets/images/svg/home-icon.svg',
                    width: 28,
                    color: currentPage == '/' ? Colors.red : null,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 9,
                    color: currentPage == '/' ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                currentPage = '/';
              });
              Navigator.pushNamed(context, '/');
            },
          ),
          GestureDetector(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: SvgPicture.asset(
                    'assets/images/svg/cart-icon.svg',
                    width: 26,
                    color: currentPage == '/shopPage' ? Colors.red : null,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'Shop',
                  style: TextStyle(
                    fontSize: 9,
                    color:
                        currentPage == '/shopPage' ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                currentPage = '/shopPage';
              });
              Navigator.pushNamed(context, '/shopPage');
            },
          ),
          GestureDetector(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: SvgPicture.asset(
                    'assets/images/svg/Vector.svg',
                    width: 26,
                    color: currentPage == '/bagPage' ? Colors.red : null,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'Bag',
                  style: TextStyle(
                    fontSize: 9,
                    color:
                        currentPage == '/bagPage' ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                currentPage = '/bagPage';
              });
              Navigator.pushNamed(context, '/bagPage');
            },
          ),
          GestureDetector(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: SvgPicture.asset(
                    'assets/images/svg/HeartIcon.svg',
                    width: 27,
                    color: currentPage == '/favoritesPage' ? Colors.red : null,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'Favorites',
                  style: TextStyle(
                    fontSize: 9,
                    color: currentPage == '/favoritesPage'
                        ? Colors.red
                        : Colors.black,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                currentPage = '/favoritesPage';
              });
              Navigator.pushNamed(context, '/favoritesPage');
            },
          ),
          GestureDetector(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: SvgPicture.asset(
                    'assets/images/svg/User.svg',
                    width: 24,
                    color: currentPage == '/signUpPage' ? Colors.red : null,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 9,
                    color: currentPage == '/signUpPage'
                        ? Colors.red
                        : Colors.black,
                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                currentPage = '/signUpPage';
              });
              Navigator.pushNamed(context, '/signUpPage');
            },
          ),
        ],
      ),
    );
  }
}
