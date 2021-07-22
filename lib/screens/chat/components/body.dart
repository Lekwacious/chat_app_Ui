import 'package:chat_app_ui/components/filled_outline_button.dart';
import 'package:chat_app_ui/components/models/Chat.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) => ChatCard(
                    chat: chatsData[index],
                  )),
        )
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  final Chat chat;
  const ChatCard({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(chat.image),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Opacity(
                  opacity: 0.64,
                  child: Text(
                    chat.lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                       
                  ),
                ),
              ],
            ),
          ),
          ),
          Text(chat.time)
        ],
      ),
    );
  }
}
