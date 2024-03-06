// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  //profile above the post
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[400]),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_vert_outlined)
          ],
        ),
        //Post picture
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey[400],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        //like and comment buttons
        const Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11),
                    child: Icon(
                      Icons.mode_comment_outlined,
                    ),
                  ),
                  Icon(Icons.send),
                ],
              ),
              Icon(Icons.bookmark_border_rounded)
            ],
          ),
        ),
        //liked by
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                "u.muton.i",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //caption
        Padding(
          padding: EdgeInsets.only(left: 12, top: 8),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "She was 19 with a baby on the way on the east side of the city she was working everyday")
              ],
            ),
          ),
        )
      ],
    );
  }
}
