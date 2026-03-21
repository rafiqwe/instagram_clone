import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class NotificationItem extends StatelessWidget {
  final String texts;
  final String name;
  final String when;
  final String profileImg;
  final String time;
  final bool isWhen;
  final bool isFollow;

  const NotificationItem({
    super.key,
    required this.texts,
    required this.name,
    required this.profileImg,
    required this.time,
    required this.when,
    required this.isWhen,
    required this.isFollow,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isWhen)
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                height: 40,
                child: Text(
                  when,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage('assets/images/$profileImg'),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(text: name),
                          TextSpan(
                            text: " $texts ",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: time,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            trailing: !isFollow
                ? UiHelper.CustomImage(imageUrl: 'IMG_1441.JPG.jpeg')
                : Container(
                    width: 120,
                    height: 44,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white10),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF000000),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Message',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
