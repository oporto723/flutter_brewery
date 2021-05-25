import 'package:flutter/material.dart';

class BeerDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second View'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              new Expanded(
                flex: 3,
                child: new Container(
                  color: Colors.white,
                ),
              ),
              new Expanded(
                flex: 2,
                child: new Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Positioned(
              top: -90,
              left: 60,
              child: Image.asset(
                'assets/images/eee.png',
                height: 850,
                width: 500,
              ))
        ],
      ),
    );
  }
}
