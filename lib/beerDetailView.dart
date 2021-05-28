import 'package:flutter/material.dart';
import 'beer.dart';

class BeerDetailView extends StatelessWidget {
  final Beer beer;
  BeerDetailView({required this.beer});

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
                flex: 4,
                child: new Container(
                  color: Colors.white,
                  child: new Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.red,
                              child: Text(
                                beer.name,
                              ),
                            ),
                            Container(
                              color: Colors.red,
                              child: Text(
                                beer.style,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Image.asset(
                        'assets/images/motel4.png',
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ),
              ),
              new Expanded(
                flex: 3,
                child: new Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(60)),
                  ),
                  child: Text(
                    beer.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
