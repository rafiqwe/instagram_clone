import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/profile/grid_screen.dart';
import 'package:instagram_clone/Screens/profile/tags_srceen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<Map<String, String>> favList = [
    {'img': 'https://www.svgrepo.com/show/2825/add-symbol.svg', 'name': 'New'},
    {
      'img':
          'https://images.unsplash.com/photo-1582298538104-fe2e74c27f59?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnJpZW5kc3xlbnwwfHwwfHx8MA%3D%3D',
      'name': 'Friends',
    },
    {
      'img':
          'https://images.unsplash.com/photo-1728060838443-691dc6279245?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Ym13JTIwbTR8ZW58MHx8MHx8fDA%3D',
      'name': 'BMW',
    },
    {
      'img':
          'https://images.unsplash.com/photo-1614741118887-7a4ee193a5fa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y29kaW5nfGVufDB8fDB8fHww',
      'name': 'Coding',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock_outlined, size: 20),
              SizedBox(width: 5),
              Text(
                'Muhammad Rabbi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 28)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/IMG_3115.JPG'),
                  ),
                  SizedBox(width: 40),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '54',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            '950',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            '13',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muhammad Rabbi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "FullStack Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Make something that's help peoples",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
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
                    'Edit Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: favList.length,
                  itemBuilder: (context, index) {
                    final fav = favList[index];
                    final String favImg = fav['img'] as String;
                    final String favName = fav['name'] as String;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(favImg),
                          ),
                          SizedBox(
                            width: 64,
                            child: Center(
                              child: Text(
                                favName,
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        icon: UiHelper.CustomImage(imageUrl: 'Grid Icon.png'),
                      ),
                      Tab(
                        icon: UiHelper.CustomImage(imageUrl: 'Tags Icon.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: [GridScreen(), TagsSrceen()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
