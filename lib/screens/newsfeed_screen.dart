import 'package:flutter/material.dart';
import 'package:suba_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // 1. Image post 1
        NewsfeedCard(
          userName: 'Yhvhan Suba',
          postContent:
              'Long live Asian Baddies. #IloveABGS #Nihao #FeelingLikeJensenHuang',
          date: '2 hours ago',
          numOfLikes: 10,
          numOfComments: 4,
          numOfShares: 2,
          hasImage: true,
          imagePath: 'assets/images/asian_gf.jpg',
          profilePic: 'assets/images/asian_gf.jpg',
        ),
        // 2. Image post 2
        NewsfeedCard(
          userName: 'Yhvhan Suba',
          postContent:
              'Felt cute, might delete later. #TechCEO #LFChineseSpy #Nvidea',
          date: '3 hours ago',
          numOfLikes: 3000,
          numOfComments: 120,
          numOfShares: 45,
          hasImage: true,
          imagePath: 'assets/images/choi.jpg',
          profilePic: 'assets/images/choi.jpg',
        ),
        // 3. Text post 1
        NewsfeedCard(
          userName: 'Jensen Huang',
          postContent:
              'The more GPUs you buy, the more you save. Just put on a fresh leather jacket for today\'s keynote.',
          date: '4 hours ago',
          numOfLikes: 5420,
          numOfComments: 318,
          numOfShares: 890,
          hasImage: false,
          profilePic: 'assets/images/kurosaki.jpg',
        ),
        // 4. Image post 3
        NewsfeedCard(
          userName: 'Kyle Zoleta',
          postContent:
              'Me squinting at the projector from the back row during Mobile Programming class.',
          date: '5 hours ago',
          numOfLikes: 84,
          numOfComments: 19,
          numOfShares: 12,
          hasImage: true,
          imagePath: 'assets/images/cat_bad_eyesight.jpg',
          profilePic: 'assets/images/cat_bad_eyesight.jpg',
        ),
        // 5. Image post 4
        NewsfeedCard(
          userName: 'Harry Lagto',
          postContent:
              'When the code compiles on the first try with zero warnings.',
          date: '6 hours ago',
          numOfLikes: 142,
          numOfComments: 27,
          numOfShares: 31,
          hasImage: true,
          imagePath: 'assets/images/freaky_cat.jpg',
          profilePic: 'assets/images/freaky_cat.jpg',
        ),
        // 6. Text post 2
        NewsfeedCard(
          userName: 'Sam Altman',
          postContent:
              'Shipping something big next week. Please don\'t ask for the exact release date yet.',
          date: '8 hours ago',
          numOfLikes: 4100,
          numOfComments: 605,
          numOfShares: 520,
          hasImage: false,
          profilePic: 'assets/images/yuusuke.jpg',
        ),
        // 7. Image post 5
        NewsfeedCard(
          userName: 'Bruce Cuevas',
          postContent: 'Wolfcut supremacy is undefeated. #HairGoals #Vibes',
          date: '10 hours ago',
          numOfLikes: 265,
          numOfComments: 41,
          numOfShares: 18,
          hasImage: true,
          imagePath: 'assets/images/girl_wolfcut.jpg',
          profilePic: 'assets/images/girl_wolfcut.jpg',
        ),
        // 8. Image post 6
        NewsfeedCard(
          userName: 'Mark Dwayne',
          postContent: 'Bankai mode activated for finals week. #Bleach #Anime',
          date: '12 hours ago',
          numOfLikes: 193,
          numOfComments: 34,
          numOfShares: 22,
          hasImage: true,
          imagePath: 'assets/images/kurosaki.jpg',
          profilePic: 'assets/images/kurosaki.jpg',
        ),
        // 9. Text post 3
        NewsfeedCard(
          userName: 'Post Malone',
          postContent:
              'Late night studio session going crazy right now. New acoustic track coming soon!',
          date: '1 day ago',
          numOfLikes: 8920,
          numOfComments: 740,
          numOfShares: 1120,
          hasImage: false,
          profilePic: 'assets/images/rintatou.jpg',
        ),
        // 10. Image post 7
        NewsfeedCard(
          userName: 'David Jamandre',
          postContent: 'Peak character design right here. #AnimeNight',
          date: '1 day ago',
          numOfLikes: 115,
          numOfComments: 16,
          numOfShares: 9,
          hasImage: true,
          imagePath: 'assets/images/rintatou.jpg',
          profilePic: 'assets/images/rintatou.jpg',
        ),
        // 11. Image post 8
        NewsfeedCard(
          userName: 'Joseph Lontoc',
          postContent: 'Weekend rewatch marathon starting now! #ChillDay',
          date: '2 days ago',
          numOfLikes: 97,
          numOfComments: 14,
          numOfShares: 7,
          hasImage: true,
          imagePath: 'assets/images/saku.jpg',
          profilePic: 'assets/images/saku.jpg',
        ),
        // 12. Text post 4
        NewsfeedCard(
          userName: 'Ken Ken Espiritu',
          postContent:
              'Spent 2 hours debugging a Flutter error only to realize I forgot a single semicolon. Send coffee.',
          date: '2 days ago',
          numOfLikes: 230,
          numOfComments: 52,
          numOfShares: 40,
          hasImage: false,
          profilePic: 'assets/images/cat_bad_eyesight.jpg',
        ),
        // 13. Image post 9
        NewsfeedCard(
          userName: 'Anton Yohann',
          postContent: 'Classic throwback energy. Spirit Gun ready! #RetroAnime',
          date: '3 days ago',
          numOfLikes: 178,
          numOfComments: 29,
          numOfShares: 15,
          hasImage: true,
          imagePath: 'assets/images/yuusuke.jpg',
          profilePic: 'assets/images/yuusuke.jpg',
        ),
        // 14. Image post 10
        NewsfeedCard(
          userName: 'Kim Jeong',
          postContent: 'New profile pic check! What do you guys think?',
          date: '4 days ago',
          numOfLikes: 412,
          numOfComments: 63,
          numOfShares: 21,
          hasImage: true,
          imagePath: 'assets/images/choi_pfp.jpg',
          profilePic: 'assets/images/choi_pfp.jpg',
        ),
        // 15. Text post 5
        NewsfeedCard(
          userName: 'Reggie Raz',
          postContent:
              'Anyone down for iced coffee and basketball after lab class today?',
          date: '5 days ago',
          numOfLikes: 64,
          numOfComments: 23,
          numOfShares: 5,
          hasImage: false,
          profilePic: 'assets/images/freaky_cat.jpg',
        ),
      ],
    );
  }
}
