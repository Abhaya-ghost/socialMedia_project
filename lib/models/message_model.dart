import 'user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({required this.sender, required this.time,required this.text,required this.isLiked, this.unread = false});
}

final User currentUser = User(
    id: 0,
    name: "Mason",
    imageUrl: "assets/images/image1.jpg"
);

final User abhaya = User(
    id: 1,
    name: "Abhaya",
    imageUrl: "assets/images/image1.jpg"
);
final User ashish = User(
    id: 2,
    name: "Ashish",
    imageUrl: "assets/images/image2.jpg"
);
final User priyanka = User(
    id: 3,
    name: "Priyanka",
    imageUrl: "assets/images/image3.jpg"
);
final User shru = User(
    id: 4,
    name: "Shru",
    imageUrl: "assets/images/image4.jpg"
);
final User pranati = User(
    id: 5,
    name: "Pranati",
    imageUrl: "assets/images/image5.jpg"
);

List <User> fav = [
  ashish,
  priyanka,
  shru,
  pranati,
  abhaya,
];

List <Message> chats = [
  Message(
      sender: abhaya,
      time: '7:03 PM',
      text: 'Hello, How are you?',
      isLiked: true,
      unread: true,
  ),
  Message(
    sender: pranati,
    time: '7:09 PM',
    text: 'Hey buddy, i hope you are doing good and well',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ashish,
    time: '7:03 PM',
    text: 'Just check the mail i have send you something related to wedding video',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: priyanka,
    time: '7:03 PM',
    text: 'Hey long time no see, ahh lets catch up and relieve those memories',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: shru,
    time: '7:03 PM',
    text: 'Dont say to me that you have forgotten me ahh',
    isLiked: true,
    unread: false,
  ),
];


List <Message> messages = [
  Message(
    sender: abhaya,
    time: '7:03 PM',
    text: 'Hello, How are you?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:09 PM',
    text: 'Hey buddy, i hope you are doing good and well',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:03 PM',
    text: 'Just check the mail i have send you something related to wedding video',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: abhaya,
    time: '7:03 PM',
    text: 'Hey long time no see, ahh lets catch up and relieve those memories',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:03 PM',
    text: 'Dont say to me that you have forgotten me ahh',
    isLiked: true,
    unread: false,
  ),
];
