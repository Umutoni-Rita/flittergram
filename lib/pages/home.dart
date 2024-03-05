// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flittergram/components/posts.dart';
import 'package:flittergram/components/stories.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List<String> people = [
    'u.muton.i',
    '_fsxxldi',
    'gahamanyi_',
    'rutijoel',
    'ce_drxx3',
    'trevornoah',
    'kevinhart',
    'frfredy',
    '_fa.y.th_'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Flittergram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.message_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        //STORIES
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Story(name: people[index]);
              },
            ),
          ),
          //POSTS

          UserPost()
        ],
      ),
    );
  }
}
