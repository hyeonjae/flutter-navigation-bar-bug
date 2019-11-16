import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print("width x height: $width x $height");

    return Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: MediaQuery.of(context).size.height - 50,
              child: Text(
                'Hello world',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width/2,
              top: MediaQuery.of(context).size.height - 50,
              child: Text(
                'Welcome',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Positioned(
              left: 0,
              top: MediaQuery.of(context).size.height - 100,
              child: Text(
                'Lorem Ipsum',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width/2,
              top: MediaQuery.of(context).size.height - 100,
              child: Text(
                'Chocolate',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
    );
  }
}
