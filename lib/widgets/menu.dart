import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final List items;
  Menu({Key key, this.items}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selected = 0;
  Widget _buildMenuItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: _selected == index ? Color(0xfffff5f5) : Colors.white),
        child: Text(
          widget.items[index],
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              color: _selected == index ? Color(0xffff0a13) : Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.items
            .asMap()
            .entries
            .map((MapEntry map) => _buildMenuItem(map.key))
            .toList(),
      ),
    );
  }
}
