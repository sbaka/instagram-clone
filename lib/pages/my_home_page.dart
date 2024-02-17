import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

import '../components/post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var userAvatar = Column(
      children: [
        badges.Badge(
          badgeStyle: const badges.BadgeStyle(
            padding: EdgeInsets.all(2),
            badgeColor: Colors.black,
          ),
          position: badges.BadgePosition.bottomEnd(bottom: 0, end: -1),
          badgeContent: const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 68, 180, 255),
            radius: 8,
            child: Icon(
              Icons.add,
              size: 16,
              weight: 32,
              color: Colors.white,
            ),
          ),
          child: const CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage("assets/images/my_pic.jpg"),
          ),
        ),
        const Gap(8),
        const Text(
          "Your story",
          style: TextStyle(
            color: Color(0xFFD4D4D4),
            fontSize: 10,
          ),
        ),
      ],
    );
    var listOfAvatars = const [
      [NetworkImage("https://cdn.jsdelivr.net/gh/alohe/memojis/png/vibrent_1.png"), "Pixelated_Pug"],
      [NetworkImage("https://cdn.jsdelivr.net/gh/alohe/memojis/png/vibrent_2.png"), "Bookworm_Bakes"],
      [NetworkImage("https://cdn.jsdelivr.net/gh/alohe/memojis/png/vibrent_3.png"), "Meme_Magician"],
      [NetworkImage("https://cdn.jsdelivr.net/gh/alohe/memojis/png/vibrent_4.png"), "PlantWhisperer"],
      [NetworkImage("https://cdn.jsdelivr.net/gh/alohe/memojis/png/vibrent_5.png"), "Coffee_Fueled_Coder"],
      [NetworkImage("https://cdn.jsdelivr.net/gh/alohe/memojis/png/vibrent_6.png"), "Traveling_Typographer"],
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text("Instagram"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/messenger.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  userAvatar,
                  const Gap(8),
                  ...listOfAvatars.map((e) => customAvatarWithStory(e[0] as NetworkImage, e[1] as String)),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 0.2,
            color: const Color(0xFF9E9E9E).withAlpha(100),
          ),
          const Post(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/search.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/add.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/video.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/my_pic.jpg"),
              ),
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget customAvatarWithStory(NetworkImage networkImage, String userName) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(1.5),
          width: 64.0, // Diameter of the circle
          height: 64.0, // Diameter of the circle
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF9CE34), // #F9CE34
                Color(0xFFEE2A7B), // #EE2A7B
                Color(0xFF6228D7), // #6228D7
              ],
            ),
          ),
          child: Container(
            width: 62.0, // Diameter of the circle
            height: 62.0,
            padding: const EdgeInsets.all(2), // Diameter of the circle
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: CircleAvatar(
              backgroundImage: networkImage,
              radius: 32,
            ),
          ),
        ),
        const Gap(8),
        SizedBox(
          width: 64,
          child: Text(
            userName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}
