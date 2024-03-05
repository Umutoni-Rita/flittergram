// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  const Text(
                    "k3lly__",
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
            textAlign: TextAlign.left,
            text: TextSpan(
              children: [
                TextSpan(
                    text: "k3lly__",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: "Was told to post these")
              ],
            ),
          ),
        )
      ],
    );
  }
}
