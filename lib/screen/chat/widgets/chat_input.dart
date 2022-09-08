import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color.fromRGBO(221, 221, 221, 1)),
                borderRadius: BorderRadius.circular(8)),
            height: 40,
            child: TextField(
              controller: _messageController,
              style: const TextStyle(
                fontSize: 12.8,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () => print('object'),
            child: const Icon(
              Icons.send,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
