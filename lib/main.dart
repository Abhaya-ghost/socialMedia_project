import 'package:flutter/material.dart';
import 'package:socialmedia_project/pages/category.dart';
import 'package:socialmedia_project/pages/menuchats.dart';
import 'package:socialmedia_project/pages/favcontact.dart';

void main(){
  runApp(const MyApp());
}

const Color containerBg = Color(0xFF283F4D);
const Color bgColor = Color(0xFF112734);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: containerBg,
        elevation: 0,
        leading: IconButton(
          onPressed:() {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "Chats",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed:() {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      backgroundColor: containerBg,
      body: Column(
        children: [
          const Category(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Favorite Contacts",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54,
                            letterSpacing: 0.8
                          ),
                        ),
                        IconButton(
                          icon : Icon(Icons.more_horiz),
                          iconSize: 35,
                          color: Colors.white54,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  const FavContact(),
                  SizedBox(height: 10,),
                  const MenuChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

