import 'package:flutter/material.dart';
import 'package:instagram_clone/UI/notification_item.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class YouTapScreen extends StatelessWidget {
  const YouTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                height: 50,
                width: double.infinity,
                child: Text(
                  'Follow Request',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              NotificationItem(
                texts: 'liked your post',
                name: 'muhammadrabbi',
                profileImg: 'IMG_1441.JPG.jpeg',
                time: '.1hr',
                when: 'New',
                isWhen: true,
                isFollow: false,
              ),
              NotificationItem(
                texts: 'liked your post',
                name: 'muhammadrabbi',
                profileImg: 'IMG_1441.JPG.jpeg',
                time: '.1hr',
                when: 'Today',
                isWhen: true,
                isFollow: false,
              ),
              NotificationItem(
                texts: 'mentioned you in a comment: @jacob_w exactly..',
                name: 'developer',
                profileImg: 'IMG_8899.JPG',
                time: '.1hr',
                when: 'This Week',
                isWhen: true,
                isFollow: false,
              ),
              NotificationItem(
                texts: 'started following you. ',
                name: 'maxjacobson',
                profileImg: 'IMG_1491.JPG.jpeg',
                time: '.1hr',
                when: 'Today',
                isWhen: false,
                isFollow: true,
              ),
              NotificationItem(
                texts: 'started following you.',
                name: 'martini_rond',
                profileImg: 'IMG_3115.JPG',
                time: '.1hr',
                when: 'Today',
                isWhen: false,
                isFollow: true,
              ),
              NotificationItem(
                texts: 'share your post',
                name: 'rabbi',
                profileImg: 'IMG_1489.JPG.jpeg',
                time: '.1hr',
                when: 'Today',
                isWhen: false,
                isFollow: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
