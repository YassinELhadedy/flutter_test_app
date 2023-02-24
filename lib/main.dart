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


    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 70 ,height: 70,child: CircleAvatar(backgroundImage: AssetImage( 'assets/images/img.png')),),

                  SizedBox(height: 10),
                  
                  Text("Yassin Elhadedy")
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.camera),
              title: Text("Home"),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.camera),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
              },
            )


          ],
        ),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: FadeInImage.assetNetwork(placeholder: 'assets/images/img.png', image: 'https://picsum.photos/250?image=9'),
      ),
    );
  }
}
