import 'package:convertor/pages/speed.dart';
import 'package:convertor/pages/temperature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
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
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Color(0xFFF8FAFC),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: labelType,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.ac_unit_rounded, color: Colors.black),
                selectedIcon: Icon(Icons.ac_unit_rounded, color: Colors.black),
                label: Text(
                  'Temperature',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.speed_rounded, color: Colors.black),
                selectedIcon: Icon(Icons.speed_rounded, color: Colors.black),
                label: Text(
                  'Speed',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const VerticalDivider(thickness: 0, width: 0),
          // This is the main content.
          Expanded(child: tabs[_selectedIndex]),
        ],
      ),
    );
  }
}
