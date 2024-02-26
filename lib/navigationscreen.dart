import 'package:flutter/material.dart';
import 'package:showroom/homescreen.dart';

void main() {
  runApp(const NavigationScreen());
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int _selectIndex = 0;
  void _Navigationbar(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  List<Widget> screen = [
    const HomePageScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screen[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black54,
          currentIndex: _selectIndex,
          onTap: _Navigationbar,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('home.png'), size: 30,),
                label: '',
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('Handshake.png'),size: 35,), label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('UsersThree.png'),size: 40,), label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('ChatTeardroptext.png'),size: 40,), label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('User.png'),size: 40,), label: '')
          ],
        ),
      ),
    );
  }
}