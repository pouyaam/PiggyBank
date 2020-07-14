import 'package:flutter/material.dart';
import 'package:piggy_bank/domain/local/bottombar/bottom_bar_data_model.dart';
import 'package:piggy_bank/widgets/place_holder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  List<Widget> _colors = [Container(color: Colors.cyanAccent), Container(color: Colors.deepPurpleAccent)];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PlaceHolder(
            _colors[_currentTab % 2],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int value) {
            setState(() {
              _currentTab = value;
            });
          },
          items: btmItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(
                    item.iconData,
                    size: 30,
                  ),
                  title: SizedBox.shrink(),
                ),
              )
              .toList(),
        ));
  }
}
