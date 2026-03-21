import 'package:flutter/material.dart';
import 'package:instagram_clone/UI/notification_item.dart';

class FollowingScreen extends StatelessWidget {
  FollowingScreen({super.key});

  final List<Map<String, String>> itemsDetails = [
    {
      "img": "IMG_1491.JPG.jpeg",
      "name": "muhammadrabbi",
      "time": "• 1hr",
      "text": "started following you.",
    },
    {
      "img": "IMG_8899.JPG",
      "name": "sarah_dev",
      "time": "• 2min",
      "text": "liked your post about Flutter.",
    },
    {
      "img": "IMG_3115.JPG",
      "name": "codewith_ash",
      "time": "• 5hr",
      "text": "mentioned you in a comment: 'Great job on the UI!'",
    },
    {
      "img": "IMG_1441.JPG.jpeg",
      "name": "tech_vibe",
      "time": "• 1d",
      "text": "shared your latest article.",
    },
    {
      "img": "IMG_8899.JPG",
      "name": "alex_k",
      "time": "• 12min",
      "text": "sent you a connection request.",
    },
    {
      "img": "IMG_1489.JPG.jpeg",
      "name": "jessica_smith",
      "time": "• 3hr",
      "text": "replied to your story.",
    },
    {
      "img": "IMG_8899.JPG",
      "name": "open_source_hero",
      "time": "• 45min",
      "text": "invited you to join the 'Dev Community' group.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: itemsDetails.length,
                itemBuilder: (context, index) {
                  final item = itemsDetails[index];

                  return NotificationItem(
                    name: item['name'] as String,
                    texts: item['text'] as String,
                    time: item['time'] as String,
                    profileImg: item['img'] as String,
                    when: "Today",
                    isWhen: index == 0,
                    isFollow: index % 3 == 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
