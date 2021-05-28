import 'package:flutter/material.dart';
import 'beer.dart';
import 'beerDetailView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brewery Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Parkside Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Beer> beers = [
    Beer(
        'Motel',
        'Hazy Pale Ale',
        'This 5-hop Hazy Pale Ale is crisp and balanced with strong hints of lemon and a lingering citrusy-dry finish, perfect for your next trip Parkside… or wherever else you may end up for the night.',
        40,
        5.8,
        'assets/images/motel.png'),
    Beer(
        'Dawn',
        'Pilsner',
        'A refreshing and sessionable pilsner that pays homage to traditional German style with sublime balance between malt and hop. Pairs well with white fish, roast chicken, pork, and sushi.',
        25,
        4.9,
        'assets/images/dawn.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: beers.length,
        itemBuilder: (context, index) {
          return Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BeerDetailView(beer: beers[index]),
                  ),
                );
                print('Clicked');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      child: Image.asset(beers[index].photo),
                    ),
                  ),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(beers[index].name,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Text(beers[index].style)
                      ])),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text('IBU: ' + (beers[index].ibu).toString()),
                        Text('Vol: ' + (beers[index].vol).toString() + '%')
                      ]))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
