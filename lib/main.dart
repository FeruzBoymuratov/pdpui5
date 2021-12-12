import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //HEADER
            Container(
              height: 210,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text("Business Hotels", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/images/img.png", title: "Hotel1"),
                  makeItem(image: "assets/images/img.png", title: "Hotel1"),
                ],
            ),
      ),
          ],
        ),
      ),
    );
  }
  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          children: <Widget>[
            Text(title, style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}


