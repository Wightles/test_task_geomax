import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String? time;
  final String message;
  final bool isLikes;
  final bool showDot;
  final bool showTime;
  final bool isLikesStyle;
  final VoidCallback? onTap;
  final String? imagePath;
  final bool hasWhiteBorder;
  const ChatItem({
    super.key,
    this.time,
    required this.message,
    this.isLikes = false,
    this.showDot = false,
    this.showTime = true,
    this.isLikesStyle = false,
    this.onTap,
    this.imagePath,
    this.hasWhiteBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 16),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: isLikes ? const Color.fromARGB(255, 37, 4, 61) : Colors.grey[800],
            borderRadius: BorderRadius.circular(25),
            border: hasWhiteBorder
                ? Border.all(
                    color: Colors.white,
                    width: 3,
                  )
                : null,
          ),
          child: isLikes 
              ? const Icon(
                  CupertinoIcons.heart_fill,
                  color: Color.fromARGB(255, 122, 32, 177),
                )
              : (imagePath != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        imagePath!,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.person,
                            color: Colors.grey,
                          );
                        },
                      ),
                    )
                  : const Icon(
                      Icons.person,
                      color: Colors.grey,
                    )),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showTime && time != null)
              Text(
                time!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            if (showTime && time != null) const SizedBox(height: 4),
            Text(
              message,
              style: TextStyle(
                fontSize: isLikesStyle ? 16 : 14,
                fontWeight: isLikesStyle ? FontWeight.w500 : FontWeight.w300,
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        trailing: showDot
            ? const Padding(
                padding: EdgeInsets.only(right: 16),
                child: CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.white,
                ),
              )
            : null,
        contentPadding: const EdgeInsets.only(right: 16),
        onTap: onTap,
      ),
    );
  }
}