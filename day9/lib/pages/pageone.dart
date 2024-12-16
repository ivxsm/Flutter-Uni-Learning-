import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:day9/services/gpt.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  ChatUser me = ChatUser(id: "1");
  ChatUser bot = ChatUser(id: "2");


  List<ChatMessage> messagesList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('chAtBoT'),
      ),
      body: DashChat(
          currentUser: me,
          onSend: (newMsg) async {
            messagesList.insert(0,newMsg);
            setState(() {});

            String content = await Gpt().getDat(newMsg.text);

            ChatMessage botmessage = ChatMessage(user: bot, createdAt: DateTime.now(), text: " i hear you but..../n$content");
            messagesList.insert(0, botmessage);
            setState(() {});
          },
          messages: messagesList,
          ),
    );
  }
}
