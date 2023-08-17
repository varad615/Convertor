import 'package:convertor/pages/speed.dart';
import 'package:convertor/pages/temperature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final List<Widget> tabs = [
    const Temprature(),
    const Speed(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF334155),
      body: <Widget>[
        Container(
          child: Temprature(),
        ),
        Container(
          child: Speed(),
        ),
      ][_selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,

        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        // indicatorColor: Colors.amber[800],
        selectedIndex: _selectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.ac_unit_rounded, color: Colors.black),
            selectedIcon: Icon(Icons.ac_unit_rounded, color: Colors.black),
            label: 'Temperature',
          ),
          NavigationDestination(
            icon: Icon(Icons.speed_rounded, color: Colors.black),
            selectedIcon: Icon(Icons.speed_rounded, color: Colors.black),
            label: 'Speed',
          ),
        ],
      ),
    );
  }
}
