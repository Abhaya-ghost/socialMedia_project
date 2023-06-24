import 'package:flutter/material.dart';
import 'package:socialmedia_project/models/message_model.dart';
import 'package:socialmedia_project/pages/chatPage.dart';

class FavContact extends StatefulWidget {
  const FavContact({Key? key}) : super(key: key);

  @override
  State<FavContact> createState() => _FavContactState();
}

class _FavContactState extends State<FavContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        itemCount: fav.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(user: fav[index]),));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(fav[index].imageUrl),
                    ),
                  ),
                  Text(
                    fav[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 0.8,
                      color: Colors.white38
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
