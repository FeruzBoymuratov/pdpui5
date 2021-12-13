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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever", style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, size: 21,),
                          border: InputBorder.none,
                          hintText: "Search for hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 15),
              child: Text("Business Hotels", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/images/img.png", title: "Hotel 1"),
                  makeItem(image: "assets/images/img.png", title: "Hotel 2"),
                  makeItem(image: "assets/images/img.png", title: "Hotel 2"),
                ],
            ),
      ),
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 15),
              child: Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            ),

            Container(
              height: 150,
              margin: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/images/img.png", title: "Hotel 1"),
                  makeItem(image: "assets/images/img.png", title: "Hotel 2"),
                  makeItem(image: "assets/images/img.png", title: "Hotel 2"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 15),
              child: Text("Resort Hotels", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            ),

            Container(
              height: 150,
              margin: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/images/img.png", title: "Hotel 1"),
                  makeItem(image: "assets/images/img.png", title: "Hotel 2"),
                  makeItem(image: "assets/images/img.png", title: "Hotel 2"),
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
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 15),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.2),
          ],
        ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(title, style: TextStyle(color: Colors.white, fontSize:25,),),
            Icon(Icons.favorite, color: Colors.red,),
          ],
        ),
      ),
    );
  }
}


