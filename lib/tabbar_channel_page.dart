import 'package:flutter/material.dart';

class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('频道'),
      ),
      body: Center(
        child: Text('频道页面'),
      ),
    );
  }
}
