import 'package:bottom_navbar/pages/Account.dart';
import 'package:bottom_navbar/pages/Home.dart';
import 'package:bottom_navbar/pages/Message.dart';
import 'package:bottom_navbar/pages/Seetings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  /*final List<Widget> _pages=[
    Center(
      child: Text("Home Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text("Message Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text("Account Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text("Settings Page",
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];
*/
final List<Widget> _pages=[
  Home(),
  Message(),
  Account(),
  Settings()

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*  body: Center(
        child: Text("hello",
          style: TextStyle(fontSize: 50),
        ),
      ),*/
      body: _pages[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),

          ],

      ),
    );
}}