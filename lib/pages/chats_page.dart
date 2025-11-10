import 'package:flutter/material.dart';
import 'package:test_task_geomax/custom_bottom_navigation.dart';
import '../widgets/chat_item.dart';
import 'chat_screen.dart';
import 'package:test_task_geomax/custom_bottom_navigation.dart'; 

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

void _showImageModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.srcOver,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
            color: Color(0xFF0D1333),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 21,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image.asset(
                      'assets/images/test13.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[600],
                          child: const Icon(
                            Icons.image,
                            color: Colors.white,
                            size: 50,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 21 + 70,
                left: 0,
                right: 0,
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Режим ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: 'инкогнито',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: ' на 24 часа',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 21 + 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Стань невидимкой в ленте и чатах, скрой\n',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                              height: 1.4,
                            ),
                          ),
                          TextSpan(
                            text: 'объявление и наслаждайся <Space> незамеченным',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 21 + 140,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image.asset(
                      'assets/images/test14.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[600],
                          child: const Icon(
                            Icons.image,
                            color: Colors.white,
                            size: 30,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 21 + 250,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 343,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFAA044A), 
                        foregroundColor: Colors.white, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 16, 
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'УСЛОВИЯ И ПОЛОЖЕНИЯ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    child: const Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
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
                            GestureDetector(
                              onTap: () => _showImageModal(context),
                              child: Container(
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
                                    child: GestureDetector(
                                      onTap: () => _showImageModal(context),
                                      child: Image.asset(
                                        'assets/images/test1.png',
                                        fit: BoxFit.contain,
                                        errorBuilder:
                                            (context, error, stackTrace) {
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
                            onTap: () {},
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
      bottomNavigationBar:
          const CustomBottomNavigation(), 
    );
  }
}
