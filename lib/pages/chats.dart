import 'package:chat/theme.dart';
import 'package:chat/widgets/chatList.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orangeAccent,
        child: Icon(
          Icons.add,
          size: 20,
        ),
        focusElevation: 10,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/photo_border.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Name Snap',
                            style: TextStyle(fontSize: 20, color: whiteColor)),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent)),
                            child: ClipOval(
                              child: Image.network(
                                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg-z.okeinfo.net%2Fokz%2F500%2Flibrary%2Fimages%2F2021%2F08%2F27%2Fvt1k5lyhib5wvx5jts33_17762.jpg&f=1&nofb=1',
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Name Snap',
                            style: TextStyle(fontSize: 20, color: whiteColor)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Direct Message',
                      style: titleTextStyle,
                    ),
                    chatList(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp4161203.jpg&f=1&nofb=1',
                      name: 'Yabuki Nako',
                      text: '私の名前は矢吹奈子です!',
                      time: 'Just Now',
                      unRead: true,
                    ),
                    chatList(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp4161203.jpg&f=1&nofb=1',
                      name: 'Yabuki Nako',
                      text: '私の名前は矢吹奈子です!',
                      time: '21.23',
                      unRead: false,
                    ),
                    chatList(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp4161203.jpg&f=1&nofb=1',
                      name: 'Yabuki Nako',
                      text: '私の名前は矢吹奈子です!',
                      time: '15.23',
                      unRead: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Circle Chat',
                      style: titleTextStyle,
                    ),
                    chatList(
                      imageUrl:
                          'https://2.bp.blogspot.com/-roYejJg4KHg/WJuuQQ_6StI/AAAAAAAADL8/EkXkkuR6EmcTvu-flDTOzZL7iSqQpfx0wCLcB/s1600/hktdebut1.jpg',
                      name: 'STAFF CREATIVE',
                      text: '新しいプロジェクトがあります',
                      time: '14.23',
                      unRead: true,
                    ),
                    chatList(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp4161203.jpg&f=1&nofb=1',
                      name: 'Member Group',
                      text: '私の名前は矢吹奈子です!',
                      time: '19.23',
                      unRead: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
