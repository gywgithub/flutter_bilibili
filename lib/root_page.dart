import 'package:flutter/material.dart';
import 'package:flutter_bilibili/tabbar_channel_page.dart';
import 'package:flutter_bilibili/tabbar_community_page.dart';
import 'package:flutter_bilibili/tabbar_home_page.dart';
import 'package:flutter_bilibili/tabbar_mine_page.dart';
import 'package:flutter_bilibili/tabbar_shop_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List _pages = [
    HomePage(),
    ChannelPage(),
    CommunityPage(),
    ShopPage(),
    MinePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container (
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap:(int index) {
            _currentIndex = index;
            // 状态刷新
            setState(() {

            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.pink[200],
          currentIndex: _currentIndex,
          selectedFontSize: 12.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('频道'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('动态'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('会员购'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('我的'),
            ),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
