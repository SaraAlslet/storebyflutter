

import 'package:flutter/material.dart';

class LetesetProdacts extends StatefulWidget {
  LetesetProdacts({Key key}) : super(key: key);

  @override
  _LetesetProdactsState createState() => _LetesetProdactsState();
}

class _LetesetProdactsState extends State<LetesetProdacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('أحدث المنتجات',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
              ),
          
        ),
        Container(
          height: 400, color: Colors.orange,
        ),
      ],
    );
  }
}