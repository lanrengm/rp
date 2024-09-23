import 'package:flutter/material.dart';
import 'package:cie/pages/check.dart' as check;
import 'package:cie/pages/history.dart' as overview;
import 'package:cie/pages/profile.dart' as profile;

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  var _bottomNavigationIndex = 0;
  void _changeBottomNavigationIndex(current) {
    setState(() {
      _bottomNavigationIndex = current;
    });
  }

  final _bodyList = [
    const check.Check(),
    const overview.Overview(),
    const profile.Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarItems = const [
      BottomNavigationBarItem(
        icon: Icon(Icons.check_box_outlined),
        activeIcon: Icon(Icons.check_box),
        label: '待办'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history_outlined),
        activeIcon: Icon(Icons.history),
        label: '历史'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        activeIcon: Icon(Icons.person),
        label: '我的'
      ),
    ];

    var bottomNavigationBar = BottomNavigationBar(
      items: bottomNavigationBarItems,
      currentIndex: _bottomNavigationIndex,
      onTap: _changeBottomNavigationIndex,
      type: BottomNavigationBarType.fixed,
    );

    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: _bodyList[_bottomNavigationIndex],
    );
  }
}

