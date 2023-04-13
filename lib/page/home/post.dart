import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/myprofile.jpeg'),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('Zakiyah Humaira'),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Image.asset(
            'assets/images/post1.jpeg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 24,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_bank_outlined,
                                size: 24,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send,
                                size: 24,
                              )),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border,
                          size: 24,
                        ))
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Like 1.000.000',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Zakiyah Humaira',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '  My Familyyyyyyy'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage:
                            AssetImage('assets/images/myprofile.jpeg'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Add Comment...'),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "😍",
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "🥹",
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        child: Icon(
                          Icons.add_box_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
