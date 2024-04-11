import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiki_flutter_examples/cloning/nike/pages/running.dart';
import 'package:wiki_flutter_examples/cloning/nike/pages/shoes.dart';
import 'package:wiki_flutter_examples/cloning/nike/pages/sneakers.dart';

import '../animation/fade_animation.dart';
import 'air.dart';
import 'football.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/cloning/nike/header.jpg"),
                      fit: BoxFit.fill),
                  color: Colors.white54,
                ),
                child: const Text(
                  "",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: const Text(
                  "Setting",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.pages,
                  color: Colors.black,
                ),
                title: const Text(
                  "Products",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: null,
          title: Text(
            "Shoes",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: FadeAnimation(
                            1,
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: GestureDetector(
                          onTap: () => Get.to(() => Sneakers()),
                          child: FadeAnimation(
                              1.1,
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Center(
                                  child: Text(
                                    "Sneakers",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: GestureDetector(
                          onTap: () => Get.to(() => Football()),
                          child: FadeAnimation(
                              1.2,
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Center(
                                  child: Text(
                                    "Football",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: GestureDetector(
                          onTap: () => Get.to(() => Running()),
                          child: FadeAnimation(
                              1.3,
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Center(
                                  child: Text(
                                    "Running",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: GestureDetector(
                          onTap: () => Get.to(() => Air()),
                          child: FadeAnimation(
                              1.4,
                              Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Center(
                                  child: Text(
                                    "Air",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                    1.5,
                    makeItem(
                        image: 'images/cloning/nike/one.jpg',
                        tag: 'Running1',
                        context: context,
                        name: "Run",
                        price: 60)),
                FadeAnimation(
                    1.6,
                    makeItem(
                        image: 'images/cloning/nike/two.jpg',
                        tag: 'Sneakers1',
                        context: context,
                        name: "Sneakers",
                        price: 100)),
                FadeAnimation(
                    1.7,
                    makeItem(
                        image: 'images/cloning/nike/three.jpg',
                        tag: 'Sneakers2',
                        context: context,
                        name: "Sneakers",
                        price: 100)),
                FadeAnimation(
                    1.8,
                    makeItem(
                        image: 'images/cloning/nike/six.jpg',
                        tag: 'Running2',
                        context: context,
                        name: "Run",
                        price: 60)),
                FadeAnimation(
                    1.9,
                    makeItem(
                        image: 'images/cloning/nike/seven.jpg',
                        tag: 'Sneakers3',
                        context: context,
                        name: "Sneakers",
                        price: 100)),
                FadeAnimation(
                    1.9,
                    makeItem(
                        image: 'images/cloning/nike/eight.jpg',
                        tag: 'Air1',
                        context: context,
                        name: "Jordan",
                        price: 130)),
                FadeAnimation(
                    1.9,
                    makeItem(
                        image: 'images/cloning/nike/nine.jpg',
                        tag: 'Air2',
                        context: context,
                        name: "Jordan",
                        price: 130)),
                FadeAnimation(
                    1.9,
                    makeItem(
                        image: 'images/cloning/nike/ten.jpg',
                        tag: 'Sneakers4',
                        context: context,
                        name: "Sneakers",
                        price: 100)),
                FadeAnimation(
                    1.9,
                    makeItem(
                        image: 'images/cloning/nike/eleven.jpg',
                        tag: 'Air3',
                        context: context,
                        name: "Air",
                        price: 160)),
                FadeAnimation(
                    2.0,
                    makeItem(
                        image: 'images/cloning/nike/AirJordan.jpg',
                        tag: 'Air4',
                        context: context,
                        name: "Jordan",
                        price: 130)),
                FadeAnimation(
                    2.1,
                    makeItem(
                        image: 'images/cloning/nike/Airjordan2.jpg',
                        tag: 'Air5',
                        context: context,
                        name: "Jordan",
                        price: 130)),
                FadeAnimation(
                    2.2,
                    makeItem(
                        image: 'images/cloning/nike/football1.jpg',
                        tag: 'Football1',
                        context: context,
                        name: "Football",
                        price: 200)),
                FadeAnimation(
                    2.3,
                    makeItem(
                        image: 'images/cloning/nike/running2.jpg',
                        tag: 'Running3',
                        context: context,
                        name: "Run",
                        price: 60)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context, name, price}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Shoes(
                    image: image,
                  )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400]!,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "Nike",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.1,
                            Text(
                              name,
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  FadeAnimation(
                      1.2,
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            size: 20,
                          ),
                        ),
                      ))
                ],
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "$price\$",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}