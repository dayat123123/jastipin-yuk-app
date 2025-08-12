import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/search_text_form_field.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final chats = [
      {
        "name": "Rina",
        "message": "Lagi dimana?",
        "time": "09:12",
        "unread": 2,
        "avatar": "https://i.pravatar.cc/150?img=5",
      },
      {
        "name": "Andi",
        "message": "Oke, nanti aku kabarin.",
        "time": "Kemarin",
        "unread": 0,
        "avatar": "https://i.pravatar.cc/150?img=3",
      },
      {
        "name": "Grup Liburan",
        "message": "Budi: Gas berangkat besok",
        "time": "08:45",
        "unread": 5,
        "avatar": "https://i.pravatar.cc/150?img=10",
      },
    ];

    return NativeScaffold(
      title: const Text("Chat"),
      actions: [
        IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FluentIcons.chat_12_filled),
      ),
      padding: AppStyles.paddingHorizontalMediumWithBottom,
      body: [
        SearchTextFormField(controller: TextEditingController()),
        const SizedBox(height: 16),
        ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final chat = chats[index];
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(chat["avatar"].toString()),
              ),
              title: Text(
                chat["name"].toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                chat["message"].toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(chat["time"].toString(), style: TextStyle(fontSize: 12)),

                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${chat["unread"]}",
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Arahkan ke halaman chat
              },
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 8),
        ),
      ],
    );
  }
}
