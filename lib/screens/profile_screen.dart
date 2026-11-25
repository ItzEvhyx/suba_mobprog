import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suba_mobprog/constants.dart';
import 'package:suba_mobprog/widgets/custom_text.dart';
import 'package:suba_mobprog/widgets/newsfeed_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, String>> _friendsPreview = const [
    {'name': 'Kyle Zoleta', 'pic': 'assets/images/cat_bad_eyesight.jpg'},
    {'name': 'Harry Lagto', 'pic': 'assets/images/freaky_cat.jpg'},
    {'name': 'Bruce Cuevas', 'pic': 'assets/images/girl_wolfcut.jpg'},
    {'name': 'Mark Dwayne', 'pic': 'assets/images/kurosaki.jpg'},
    {'name': 'David Jamandre', 'pic': 'assets/images/rintatou.jpg'},
    {'name': 'Joseph Lontoc', 'pic': 'assets/images/saku.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView(
        children: [
          // Cover photo & overlapping profile picture
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: ScreenUtil().setHeight(170),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/asian_gf.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.35),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: ScreenUtil().setWidth(16),
                bottom: -ScreenUtil().setHeight(45),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 52,
                        backgroundImage: AssetImage(
                          'assets/images/choi_pfp.jpg',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 2,
                      bottom: 2,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(52)),

          // Name, Bio, Stats & Action Buttons
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'Yhvhan Suba',
                      fontSize: ScreenUtil().setSp(24),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(6)),
                    const Icon(Icons.verified, color: fbPrimary, size: 20),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(4)),
                CustomText(
                  text:
                      'Mobile Programming (INF245MWA) | BaddiesHub Founder | Future Tech CEO',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.grey[700]!,
                ),
                SizedBox(height: ScreenUtil().setHeight(12)),

                // Stats bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem('19', 'Friends'),
                    _buildStatItem('15', 'Posts'),
                    _buildStatItem('3.2K', 'Followers'),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(14)),

                // Action buttons
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: fbTextColorWhite,
                          size: 18,
                        ),
                        label: CustomText(
                          text: 'Add to Story',
                          fontSize: ScreenUtil().setSp(13),
                          color: fbTextColorWhite,
                          fontWeight: FontWeight.bold,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: fbPrimary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(8)),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.black,
                          size: 18,
                        ),
                        label: CustomText(
                          text: 'Edit Profile',
                          fontSize: ScreenUtil().setSp(13),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(8)),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(12)),
            child: Divider(thickness: 6, color: Colors.grey[200]),
          ),

          // Details / Intro Section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Details',
                  fontSize: ScreenUtil().setSp(18),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: ScreenUtil().setHeight(10)),
                _buildDetailRow(
                  Icons.school,
                  'Studies Mobile Programming at INF245MWA',
                ),
                _buildDetailRow(Icons.work, 'Founder & CEO at BaddiesHub'),
                _buildDetailRow(
                  Icons.location_on,
                  'Lives in Manila, Philippines',
                ),
                _buildDetailRow(Icons.rss_feed, 'Followed by 3,240 people'),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(12)),
            child: Divider(thickness: 6, color: Colors.grey[200]),
          ),

          // Friends Grid Preview
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Friends',
                          fontSize: ScreenUtil().setSp(18),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: '19 friends',
                          fontSize: ScreenUtil().setSp(13),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    CustomText(
                      text: 'Find Friends',
                      fontSize: ScreenUtil().setSp(13),
                      color: fbPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(12)),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _friendsPreview.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.78,
                  ),
                  itemBuilder: (context, index) {
                    final friend = _friendsPreview[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              friend['pic']!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(4)),
                        Text(
                          friend['name']!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(12),
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Frutiger',
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(12)),
            child: Divider(thickness: 6, color: Colors.grey[200]),
          ),

          // User's Own Posts Section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(16),
            ),
            child: CustomText(
              text: 'Posts',
              fontSize: ScreenUtil().setSp(18),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(6)),
          const NewsfeedCard(
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
          const NewsfeedCard(
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
          SizedBox(height: ScreenUtil().setHeight(16)),
        ],
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        CustomText(
          text: count,
          fontSize: ScreenUtil().setSp(16),
          color: fbDarkPrimary,
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          text: label,
          fontSize: ScreenUtil().setSp(12),
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _buildDetailRow(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(5)),
      child: Row(
        children: [
          Icon(icon, color: fbDarkPrimary, size: 20),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Expanded(
            child: CustomText(
              text: text,
              fontSize: ScreenUtil().setSp(13),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
