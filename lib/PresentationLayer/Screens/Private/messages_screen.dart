import 'package:flutter/material.dart';
import '../../../BusinessLayer/Controllers/chat_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import 'package:get/get.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({Key? key}) : super(key: key);
  final ChatController chatController = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Type a message...',
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                chatController.addMessage('Hello'); // إضافة رسالة جديدة
              },
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      ),
      appBar: schoolAppBar(
          title: Text("الرسائل",
              style: UITextStyle.titleBold.copyWith(fontSize: 25))),
      drawer: SchoolDrawer(),
      body: Column(children: [
        Expanded(
          child: Obx(() => ListView.builder(
                itemCount: chatController.messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(chatController.messages[index]),
                  );
                },
              )),
        )
      ]),
    );
  }
}
