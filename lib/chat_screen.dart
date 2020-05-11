import 'package:flutter/material.dart';

import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text){
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget(){
    return Row(
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: 'Type a message...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  )
              ),
              filled: true,
              fillColor: Colors.white24,
            ),
            controller: _textController,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 8.0),
          height: 55.0, width: 55.0,
          child: FloatingActionButton(
            child: Icon(
              Icons.send,
              size: 20.0,
            ),
            tooltip: 'Send',
            onPressed: ()=> _handleSubmitted(_textController.text),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (_, int index) => _messages[index],
              reverse: true,
            ) ,
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 8.0,
            left: 8.0,
            right: 8.0,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
