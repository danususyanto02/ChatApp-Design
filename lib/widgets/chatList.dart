import 'package:flutter/material.dart';
import 'package:chat/theme.dart';

class chatList extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;

  chatList(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              imageUrl,
              width: 55,
              height: 55,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                width: 200,
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: subTitle,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitle,
          )
        ],
      ),
    );
  }
}
