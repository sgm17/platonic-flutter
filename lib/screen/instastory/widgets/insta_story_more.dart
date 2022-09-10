import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class InstaStoryMore extends ConsumerWidget {
  const InstaStoryMore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final messageController = TextEditingController();

    return Positioned(
        bottom: 16,
        child: SizedBox(
            height: 60,
            width: width - 32,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                        textInputAction: TextInputAction.send,
                        textAlign: TextAlign.left,
                        controller: messageController,
                        maxLength: 100,
                        decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(bottom: 10, left: 8, right: 8),
                            counter: SizedBox.shrink(),
                            fillColor: Colors.transparent,
                            border: InputBorder.none,
                            hintText: 'send a message',
                            hintStyle: TextStyle(
                                fontSize: 12.8,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        style: const TextStyle(
                            fontSize: 12.8,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
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
                    color: Colors.white,
                  ),
                )
              ],
            )));
  }
}
