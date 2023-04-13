import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            StoryItem(
              image: 'assets/images/myprofile.jpeg',
              title: 'Your Story',
            ),
            StoryItem(
              image: 'assets/images/memoji1.jpeg',
              title: 'zakiyah',
            ),
            StoryItem(
              image: 'assets/images/memoji2.jpeg',
              title: 'humaira',
            ),
            StoryItem(
              image: 'assets/images/memoji3.jpeg',
              title: 'zakiyah.h',
            ),
            StoryItem(
              image: 'assets/images/memoji4.jpeg',
              title: 'zakiyah_h',
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(2.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                  colors: [Color(0XFFDE0046), Color(0XFFF7A34B)]),
            ),
            child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(image),
                )),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
