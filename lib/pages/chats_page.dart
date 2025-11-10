import 'package:flutter/material.dart';
import '../widgets/chat_item.dart';
import 'chat_screen.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  void _openChat(BuildContext context, String userName, String? lastMessage) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: userName,
          lastMessage: lastMessage,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.grey[300],
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
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ЧАТЫ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'OFF',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 81, 80, 80),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Container(
                                  width: 31,
                                  height: 21,
                                  child: Image.asset(
                                    'assets/images/test1.png',
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[600],
                                        child: const Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 8,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: ListView(
                        padding: const EdgeInsets.only(top: 16),
                        children: [
                          ChatItem(
                            message: '44 человека тебя лайкнули',
                            isLikes: true,
                            showDot: true,
                            showTime: false,
                            isLikesStyle: true,
                            onTap: () {
                            },
                          ),
                          ChatItem(
                            time: '23 ч 43 мин',
                            message: 'Отлично выглядишь',
                            imagePath: 'assets/images/test3.jpg',
                            hasWhiteBorder: true,
                            onTap: () => _openChat(context, 'Отлично выглядишь',
                                'Отлично выглядишь'),
                          ),
                          ChatItem(
                            time: '20 ч 40 мин',
                            message: 'Встретимся? Я рядом',
                            showDot: true,
                            imagePath: 'assets/images/test4.jpg',
                            onTap: () => _openChat(context,
                                'Встретимся? Я рядом', 'Встретимся? Я рядом'),
                          ),
                          ChatItem(
                            time: '18 ч 40 мин',
                            message: 'Встретимся?',
                            imagePath: 'assets/images/test5.jpg',
                            onTap: () => _openChat(
                                context, 'Встретимся?', 'Встретимся?'),
                          ),
                          ChatItem(
                            time: '09 ч 40 мин',
                            message: 'Давно тебя хочу',
                            imagePath: 'assets/images/test6.jpg',
                            onTap: () => _openChat(
                                context, 'Давно тебя хочу', 'Давно тебя хочу'),
                          ),
                          ChatItem(
                            time: '03 ч 04 мин',
                            message: 'Я в ванной... Скинь фото...',
                            imagePath: 'assets/images/test7.jpg',
                            onTap: () => _openChat(context, 'Я в ванной...',
                                'Я в ванной... Скинь фото...'),
                          ),
                          ChatItem(
                            time: '01 ч 09 мин',
                            message: 'Привет',
                            imagePath: 'assets/images/test8.jpg',
                            onTap: () => _openChat(context, 'Привет', 'Привет'),
                          ),
                        ],
                      ),
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
