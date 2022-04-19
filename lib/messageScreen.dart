import 'package:clone_clubhouse/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Palette.background,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.navigate_before,
                color: Theme.of(context).iconTheme.color,
              )),
          title: Text(
            "BACKCHANNEL",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                CupertinoIcons.ellipsis,
                color: Theme.of(context).iconTheme.color,
                size: 20,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.text_bubble_fill,
                color: Theme.of(context).iconTheme.color,
                size: 20,
              ),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorWeight: 2,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Requests"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            /// 전체 메뉴
            ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        backChannelRoomsList[index].profileImageUrl,
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      backChannelRoomsList[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      backChannelRoomsList[index].message,
                    ),
                    trailing: Column(
                      children: [
                        Icon(
                          Icons.navigate_next,
                          color: Colors.grey,
                        ),
                        Text(
                          backChannelRoomsList[index].timestamp,
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: backChannelRoomsList.length),

            /// 나만의 메뉴
            Center(
                child: Text(
              "👍 You're all good!\nYou don't have any now\nmessage requests.",
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
