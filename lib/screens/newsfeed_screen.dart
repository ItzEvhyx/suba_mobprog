import 'package:flutter/material.dart';
import 'package:suba_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsfeedCard(
          userName: 'Yhvhan Suba',
          postContent: 'Long live Asian Baddies. #IloveABGS #Nihao #FeelingLikeJensenHuang',
          date: '2 hours ago',
          numOfLikes: 10,
          hasImage: true,
          imagePath: 'assets/images/asian_gf.jpg',
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Yhvhan Suba',
          postContent: 'Felt cute, might delete later. #TechCEO #LFChineseSpy #Nvidea',
          date: 'November 21, 2026',
          numOfLikes: 3000,
          hasImage: true,
          imagePath: 'assets/images/choi.jpg',
        ), // NewsfeedCard
      ],
    ); // ListView
  }
}
