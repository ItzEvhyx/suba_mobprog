import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suba_mobprog/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> _notifications = const [
    {
      'name': 'Kyle Zoleta',
      'post': 'Long live Asian Baddies',
      'description': 'liked your photo 2 minutes ago.',
      'profilePic': 'assets/images/cat_bad_eyesight.jpg',
    },
    {
      'name': 'Harry Lagto',
      'post': 'Felt cute, might delete later',
      'description': 'commented: "Tech CEO energy fr!"',
      'profilePic': 'assets/images/freaky_cat.jpg',
    },
    {
      'name': 'Bruce Cuevas',
      'post': 'Wolfcut supremacy is undefeated',
      'description': 'tagged you in a new post.',
      'profilePic': 'assets/images/girl_wolfcut.jpg',
    },
    {
      'name': 'Mark Dwayne',
      'post': 'Bankai mode activated for finals week',
      'description': 'shared your post to their timeline.',
      'profilePic': 'assets/images/kurosaki.jpg',
    },
    {
      'name': 'David Jamandre',
      'post': 'Long live Asian Baddies',
      'description': 'reacted Haha to your post.',
      'profilePic': 'assets/images/rintatou.jpg',
    },
    {
      'name': 'Joseph Lontoc',
      'post': 'Weekend rewatch marathon',
      'description': 'mentioned you in a comment.',
      'profilePic': 'assets/images/saku.jpg',
    },
    {
      'name': 'Anton Yohann',
      'post': 'Classic throwback energy',
      'description': 'liked your comment on their photo.',
      'profilePic': 'assets/images/yuusuke.jpg',
    },
    {
      'name': 'Kim Jeong',
      'post': 'New profile pic check',
      'description': 'sent you a friend request.',
      'profilePic': 'assets/images/choi_pfp.jpg',
    },
    {
      'name': 'Ken Ken Espiritu',
      'post': 'Flutter debugging at 2 AM',
      'description': 'replied to your comment: "Same bro!"',
      'profilePic': 'assets/images/cat_bad_eyesight.jpg',
    },
    {
      'name': 'Reggie Raz',
      'post': 'Iced coffee after lab class',
      'description': 'invited you to an upcoming hangout.',
      'profilePic': 'assets/images/freaky_cat.jpg',
    },
    {
      'name': 'Luis Penabela',
      'post': 'Felt cute, might delete later',
      'description': 'liked your post 1 hour ago.',
      'profilePic': 'assets/images/asian_gf.jpg',
    },
    {
      'name': 'Benedict Pascua',
      'post': 'BaddiesHub Launch',
      'description': 'shared a photo with you.',
      'profilePic': 'assets/images/choi.jpg',
    },
    {
      'name': 'Ali Yahya',
      'post': 'Mobile Programming Lab',
      'description': 'commented: "Clean UI update!"',
      'profilePic': 'assets/images/saku.jpg',
    },
    {
      'name': 'Jessie Milan',
      'post': 'Long live Asian Baddies',
      'description': 'reacted Love to your photo.',
      'profilePic': 'assets/images/girl_wolfcut.jpg',
    },
    {
      'name': 'Joseph Duroga',
      'post': 'Finals Week Grind',
      'description': 'poked you on BaddiesHub.',
      'profilePic': 'assets/images/yuusuke.jpg',
    },
    {
      'name': 'Post Malone',
      'post': 'Late night studio session',
      'description': 'went live—tap to watch now.',
      'profilePic': 'assets/images/rintatou.jpg',
    },
    {
      'name': 'Sam Altman',
      'post': 'Shipping something big next week',
      'description': 'followed your BaddiesHub profile.',
      'profilePic': 'assets/images/yuusuke.jpg',
    },
    {
      'name': 'Jensen Huang',
      'post': 'Felt cute, might delete later',
      'description': 'commented: "Nice leather jacket vibes!"',
      'profilePic': 'assets/images/kurosaki.jpg',
    },
    {
      'name': 'Yhvhan Suba',
      'post': 'BaddiesHub Profile Update',
      'description': 'Your memory from 1 year ago is ready to view.',
      'profilePic': 'assets/images/choi.jpg',
    },
    {
      'name': 'Kyle Zoleta',
      'post': 'Squinting at the projector',
      'description': 'mentioned you in their latest meme post.',
      'profilePic': 'assets/images/cat_bad_eyesight.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final notif = _notifications[index];
          return NotificationWidget(
            name: notif['name']!,
            post: notif['post']!,
            description: notif['description']!,
            profilePic: notif['profilePic'],
          );
        },
      ),
    );
  }
}
