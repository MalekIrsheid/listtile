import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mobileBrand = ["Apple", "Samsung", "Huawei", "Pixel", "Redmi", "Oppo"];
  List mobileName = [
    "Iphone 13 ",
    "S22 Ultra",
    "P40 Pro",
    "Pixel 7",
    "MI note 11pro",
    "Reno5 Pro"
  ];
  List mobilePictures = [
    "images/iphone13pro.jpg",
    "images/S22 ultra.jpg",
    "images/P40pro.jpg",
    "images/pixel7.jpg",
    "images/MI11.jpg",
    "images/Reno5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smart Phones",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.purple.shade100,
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    trailing: Icon(Icons.phone_android),
                    title: Text("${mobileBrand[i]}"),
                    subtitle: Text("${mobileName[i]}"),
                    leading: Image(image: AssetImage("${mobilePictures[i]}")),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
