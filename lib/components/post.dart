import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:gap/gap.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final parser = EmojiParser();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/my_pic.jpg"),
            ),
            const Gap(8),
            const Text("abdelatif_kbr"),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/more.png"),
            ),
          ],
        ),
        const Gap(2),
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Image.asset(
            "assets/images/post_img_1.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        const Gap(2),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/bubble-chat.png"),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/send.png"),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/bookmark.png"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Like by ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: 'cristiano ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'and ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: 'others ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'abdelatif_kbr ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: parser.emojify('Snowy day in Lille :snowman_without_snow:'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
