import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String userName;
  final String? lastMessage;

  const ChatScreen({
    super.key,
    required this.userName,
    this.lastMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
            size: 14,
          ),
        ),
        title: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/test4.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[600],
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 16,
                  ),
                );
              },
            ),
          ),
        ),
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
            },
            child: const Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
              size: 18, 
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 150 - kToolbarHeight,
            color: Colors.grey[300],
            child: Stack(
              children: [
                Positioned(
                  top: 32, 
                  left: 0, 
                  right: 0, 
                  child: Container(
                    height: 39,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7446AC),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Container(
                            width: 20, 
                            height: 20, 
                            child: Image.asset(
                              'assets/images/test15.png',
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.transparent,
                                  child: const Icon(
                                    Icons.image,
                                    color: Colors.white,
                                    size: 10, 
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 5), 
                        const Text(
                          '2 общих соблазна',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5), 
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                            },
                            child: const Icon(
                              CupertinoIcons.clear,
                              color: Colors.white,
                              size: 14,
                              weight: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 33, 33, 33),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 51),
                      child: Text(
                        'Начни общение',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF8D8D8D),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 13,
                    bottom: 77, 
                    right: 13, 
                    child: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.add,
                          color: Colors.grey,
                          size: 25,
                        ),
                        const SizedBox(width: 9.5),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 13,
                              top: 5.5, 
                              bottom: 6.5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.grey[600]!,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: const Text(
                                    'Сообщение...',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                    'assets/images/test2.png',
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[600],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 13),
                        const Icon(
                          CupertinoIcons.mic,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}