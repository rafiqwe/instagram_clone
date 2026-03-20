import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class MessangerScreen extends StatelessWidget {
  MessangerScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> messAccount = [
    {
      'img': 'IMG_1491.JPG.jpeg',
      'name': 'Muhammad Rabbi',
      'mess': 'The game in Japan was amazing and I want to share some photos!',
    },
    {
      'img': 'IMG_1489.JPG.jpeg',
      'name': 'Sarah Ahmed',
      'mess': 'Just finished the Flutter project, it looks clean bro!',
    },
    {
      'img': 'IMG_3115.JPG',
      'name': 'Alex Johnson',
      'mess': 'Yo! Are we still meeting for the cricket match tonight?',
    },
    {
      'img': 'IMG_1441.JPG.jpeg',
      'name': 'Muhammad Rabbi Dev',
      'mess':
          'The new UI design is much better than the previous one. Great job on the colors.',
    },
    {
      'img': 'IMG_8899.JPG',
      'name': 'Developer Steve',
      'mess':
          'Don’t forget to wrap that Row in an Expanded or it will crash again! lol',
    },
    {
      'img': 'IMG_1491.JPG.jpeg',
      'name': 'Muhammad Rabbi',
      'mess': 'The game in Japan was amazing and I want to share some photos!',
    },
    {
      'img': 'IMG_1489.JPG.jpeg',
      'name': 'Sarah Ahmed',
      'mess': 'Just finished the Flutter project, it looks clean bro!',
    },
    {
      'img': 'IMG_3115.JPG',
      'name': 'Alex Johnson',
      'mess': 'Yo! Are we still meeting for the cricket match tonight?',
    },
    {
      'img': 'IMG_1441.JPG.jpeg',
      'name': 'Muhammad Rabbi Dev',
      'mess':
          'The new UI design is much better than the previous one. Great job on the colors.',
    },
    {
      'img': 'IMG_8899.JPG',
      'name': 'Developer Steve',
      'mess':
          'Don’t forget to wrap that Row in an Expanded or it will crash again! lol',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "Muhammad rabbi",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 30)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0XFF262626),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: UiHelper.CustomImage(imageUrl: 'Search Icon.png'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: messAccount.length,
                itemBuilder: (context, index) {
                  final user = messAccount[index];
                  final userImg = user['img'];
                  final userName = user['name'];
                  final userMess = user['mess'];
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 4.0,
                    ),
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('assets/images/$userImg'),
                    ),
                    title: Text(
                      userName.toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFFF9F9F9),
                      ),
                    ),
                    subtitle: Text(
                      userMess.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Bro, add your navigation to the chat here!
                    },
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
