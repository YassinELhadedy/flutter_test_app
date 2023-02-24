import 'package:flutter/material.dart';
import 'package:flutter_test_app/Choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var choices = <Choice>[Choice("Bicycle", Icons.bike_scooter), Choice("car", Icons.car_crash),Choice("Bus", Icons.bus_alert)];

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(choices[0].icon)),
          IconButton(onPressed: (){}, icon: Icon(choices[1].icon)),
          IconButton(onPressed: (){}, icon: Icon(choices[2].icon)),
          PopupMenuButton(
            itemBuilder: (context){return  choices.map((e) => PopupMenuItem(value: e,child: Text(e.title))).toList();},
          onSelected: (Choice choice){
            setState(() {

            });
          },)
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: FadeInImage.assetNetwork(placeholder: 'assets/images/img.png', image: 'https://picsum.photos/250?image=9'),
      ),
    );
  }
}
