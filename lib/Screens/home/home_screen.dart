import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/messanger/messanger_screen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0XFF121212),
        leading: UiHelper.CustomImage(imageUrl: 'Camera Icon.png'),
        title: UiHelper.CustomImage(imageUrl: 'Instagram Logo (1).png'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imageUrl: 'IGTV.png'),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessangerScreen()),
              );
            },
            icon: UiHelper.CustomImage(imageUrl: 'Messanger.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 5),
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                              'https://scontent.fdac151-1.fna.fbcdn.net/v/t39.30808-6/586121481_697843970042713_7122477174493708681_n.jpg?stp=c0.83.756.756a_dst-jpg_s565x565_tt6&_nc_cat=108&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=9GvQC4qQaD4Q7kNvwFGvRI5&_nc_oc=AdoZpgNqTkO3wfqWhei4Uok_KD9jN_-CM4aR3EwUvrC11zaTwOOdM2EdgNujDeZR3u8&_nc_zt=23&_nc_ht=scontent.fdac151-1.fna&_nc_gid=LI8VKCFxW72bYDhCJ-ehQQ&_nc_ss=7a30f&oh=00_AfzUzQnZT4SS5I1fMnkVzAIuYbLe1U603Ez3Cx9robX73A&oe=69C32757',
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            child: Text(
                              '@muhammadrabbidev',
                              style: TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                      'https://scontent.fdac151-1.fna.fbcdn.net/v/t39.30808-6/586121481_697843970042713_7122477174493708681_n.jpg?stp=c0.83.756.756a_dst-jpg_s565x565_tt6&_nc_cat=108&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=9GvQC4qQaD4Q7kNvwFGvRI5&_nc_oc=AdoZpgNqTkO3wfqWhei4Uok_KD9jN_-CM4aR3EwUvrC11zaTwOOdM2EdgNujDeZR3u8&_nc_zt=23&_nc_ht=scontent.fdac151-1.fna&_nc_gid=LI8VKCFxW72bYDhCJ-ehQQ&_nc_ss=7a30f&oh=00_AfzUzQnZT4SS5I1fMnkVzAIuYbLe1U603Ez3Cx9robX73A&oe=69C32757',
                    ),
                  ),
                  title: Text('Muhammad rabbi'),
                  subtitle: Text('@muhammadrabbidev'),
                  trailing: Icon(Icons.density_small_sharp),
                ),
                SizedBox(
                  height: 370,
                  width: double.infinity,
                  child: Image.network(
                    'https://scontent.fdac151-1.fna.fbcdn.net/v/t39.30808-6/586121481_697843970042713_7122477174493708681_n.jpg?stp=c0.83.756.756a_dst-jpg_s565x565_tt6&_nc_cat=108&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=9GvQC4qQaD4Q7kNvwFGvRI5&_nc_oc=AdoZpgNqTkO3wfqWhei4Uok_KD9jN_-CM4aR3EwUvrC11zaTwOOdM2EdgNujDeZR3u8&_nc_zt=23&_nc_ht=scontent.fdac151-1.fna&_nc_gid=LI8VKCFxW72bYDhCJ-ehQQ&_nc_ss=7a30f&oh=00_AfzUzQnZT4SS5I1fMnkVzAIuYbLe1U603Ez3Cx9robX73A&oe=69C32757',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.heart, size: 28),
                            SizedBox(width: 10),
                            Icon(Icons.messenger_outline, size: 28),
                            SizedBox(width: 10),
                            Icon(Icons.share_rounded, size: 28),
                          ],
                        ),
                      ),
                      UiHelper.CustomImage(imageUrl: 'Save.png'),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                          'https://scontent.fdac151-1.fna.fbcdn.net/v/t39.30808-1/650729428_3511302155698836_4605070618391721396_n.jpg?stp=c30.0.770.769a_cp0_dst-jpg_s40x40_tt6&_nc_cat=100&ccb=1-7&_nc_sid=1d2534&_nc_ohc=Nj9XxxYCl6IQ7kNvwH2T2Us&_nc_oc=Ado6jXIJDOeDU9mOueaYTjGPsh8IoJTp2jnufJEdHtg-y5f4vJjWOrdKPlCWlmMiFlE&_nc_zt=24&_nc_ht=scontent.fdac151-1.fna&_nc_gid=VLbR9wyywyFvqpJNA_9MpQ&_nc_ss=7a30f&oh=00_AfxF_WCZibynxOXdmbPFsrzPfzYvI0_Gx5d97wOgLEgWgw&oe=69C315B9',
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Liked by Sumit saha and 44 others',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ), // Default style
                      children: [
                        TextSpan(
                          text: 'Muhammad rabbi ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'The game in Japan was amazing and I want to share some photos',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
