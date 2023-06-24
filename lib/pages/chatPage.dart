import 'package:flutter/material.dart';
import 'package:socialmedia_project/models/message_model.dart';
import 'package:socialmedia_project/models/user_model.dart';
import 'package:socialmedia_project/main.dart';

class ChatPage extends StatefulWidget {
  final User user;
  const ChatPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  _buildMessage(Message message, bool isMe){
    return Container(
      margin: isMe ? 
              EdgeInsets.only(top: 8,bottom: 8,left: 80) 
            : EdgeInsets.only(top: 8,bottom: 8,right: 80),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      decoration: BoxDecoration(
        color: isMe ?
               containerBg.withOpacity(0.3) :
               containerBg.withOpacity(0.4),
        borderRadius: isMe ?
                      const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ) :
                      const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
      ),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message.text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              color: Colors.white
            ),
          ),
          SizedBox(height: 5,),
          Text(
            message.time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  _buildSendMessage() {
    return Container(
      height: 70,
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: containerBg,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {} ,
                icon: Icon(Icons.photo),
                iconSize: 30,
                color: Colors.white70,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Send you message',
                    hintStyle: TextStyle(
                      color: Colors.white70
                    )
                  ),
                ),
              ),
              IconButton(
                onPressed: () {} ,
                icon: Icon(Icons.send),
                iconSize: 30,
                color: Colors.white70,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: containerBg,
      appBar: AppBar(
        backgroundColor: containerBg,
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 1
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed:() {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    final Message message = messages[index];
                    bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
          _buildSendMessage(),
        ],
      ),
    );
  }
}
