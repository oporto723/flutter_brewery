import 'package:flutter/material.dart';

class BeerDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second View'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
