import 'package:flutter/material.dart';
import 'package:socialmedia_project/models/message_model.dart';
import 'package:socialmedia_project/pages/chatPage.dart';

const Color bgColor = Color(0xFF112734);
const Color containerBg = Color(0xFF283F4D);

class MenuChats extends StatefulWidget {
  const MenuChats({Key? key}) : super(key: key);

  @override
  State<MenuChats> createState() => _MenuChatsState();
}

class _MenuChatsState extends State<MenuChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: bgColor.withOpacity(0.2),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 10),
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final Message chat = chats[index];
            return Padding(
              padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(user: chat.sender),));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: chat.unread ? containerBg.withOpacity(0.6):Colors.transparent,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(chat.sender.imageUrl),
                          radius: 40,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.sender.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                chat.text,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  overflow: TextOverflow.ellipsis
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.time,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              chat.unread ?
                              Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent.shade200,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Center(
                                  child: Text(
                                    "NEW",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ) : const Text(" "),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
