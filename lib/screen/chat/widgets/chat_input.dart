import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';

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
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.strongWhite),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: _messageController,
                  maxLength: 100,
                  style: const TextStyle(
                    fontSize: 12.8,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.only(bottom: 10, left: 8, right: 8),
                      counter: SizedBox.shrink(),
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                      hintText: 'type a message...',
                      hintStyle: TextStyle(
                          fontSize: 12.8, fontWeight: FontWeight.w500)),
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
      ),
    );
  }
}
