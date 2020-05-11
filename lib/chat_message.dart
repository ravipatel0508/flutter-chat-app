import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  String _name = 'Ravi';
class ChatMessage extends StatelessWidget {

  final String text;
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(
                _name[0],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.blue,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name, style: Theme.of(context).textTheme.subtitle1,),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Wrap(
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                      text, 
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
