import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  GridScreen({super.key});

  List<Map<String, String>> images = [
    {
      'img':
          'https://hips.hearstapps.com/hmg-prod/images/2022-bmw-m5-cs-114-1640399208.jpg?crop=0.668xw:1.00xh;0.101xw,0&resize=1200:*',
    },
    {
      'img':
          'https://imgd.aeplcdn.com/1920x1080/n/cw/ec/192747/m5-exterior-right-front-three-quarter-10.jpeg?isig=0&q=80&q=80',
    },
    {
      'img':
          'https://www.thecarexpert.co.uk/wp-content/uploads/2024/05/2024-BMW-M4-CS-696x348.jpg',
    },
    {
      'img':
          'https://www.cnet.com/a/img/resize/728abee5386c7f08e9a5ded6968441d1586b991f/hub/2020/09/22/04d78d08-c38b-4cb6-b3c4-128c6db2989d/2021-bmw-m4-coupe-promo.jpg?auto=webp&fit=crop&height=675&width=1200',
    },
    {
      'img':
          'https://www.bmw-m.com/content/dam/bmw/marketBMW_M/www_bmw-m_com/fastlane/motorsport/M4-GT3-EVO/2025/bmw-m4-gt3-evo-hd-06-2.jpg',
    },
    {
      'img':
          'https://di-uploads-pod23.dealerinspire.com/bmwofowingsmills/uploads/2024/07/P90548593_highRes_the-all-new-bmw-m4-c-1.jpg',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMC4ORVsA_1hCjl4H2O6sitg7Rka8Qvggccg&s',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWbqm_Px5A3wFEABLUwVYQMhOQpY04juKxZQ&s',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7tlIGdLzPe29repUgNE3LBsHVKeswk1lQtw&s',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-TuLzFiTTi_5hiZNjoA6K7McvPk0aklvLSg&s',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRABUbXpVZ3hTquPn7zL0fXfJv3f36knYgSw&s',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR36aYfFAdKrTEDQw5AAcLCvvO-0ruqe-LeUA&s',
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE33xDrdjsNOFs7qj-56bMS253mfnaahkCYw&s',
    },
    // {
    //   'img':
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            height: 124,
            width: 124,
            decoration: BoxDecoration(),
            child: Image.network(
              images[index]['img'].toString(),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
