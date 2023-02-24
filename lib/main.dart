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


    return DefaultTabController(length: 3, child:       Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          bottom: TabBar(tabs:
          [
            Tab(icon: Icon(Icons.camera),text: "Camer",),
            Tab(icon: Icon(Icons.save),text: "Camer",),
            Tab(icon: Icon(Icons.cabin),text: "Camer",),

          ],
          ),
        ),

        body:TabBarView(children: [
          Tab(icon: Icon(Icons.camera),text: "Camer",),
          Tab(icon: Icon(Icons.save),text: "Camer",),
          Tab(icon: Icon(Icons.cabin),text: "Camer",),
        ],)
    ));
      

  }
}
