import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suba_mobprog/constants.dart';
import 'package:suba_mobprog/widgets/custom_text.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  final List<Map<String, String>> _friendRequests = [
    {
      'name': 'Kim Jeong',
      'mutual': '14 mutual friends',
      'time': '2h',
      'profilePic': 'assets/images/choi_pfp.jpg',
    },
    {
      'name': 'Luis Penabela',
      'mutual': '9 mutual friends',
      'time': '5h',
      'profilePic': 'assets/images/asian_gf.jpg',
    },
    {
      'name': 'Benedict Pascua',
      'mutual': '21 mutual friends',
      'time': '1d',
      'profilePic': 'assets/images/choi.jpg',
    },
    {
      'name': 'Ali Yahya',
      'mutual': '7 mutual friends',
      'time': '2d',
      'profilePic': 'assets/images/saku.jpg',
    },
    {
      'name': 'Jessie Milan',
      'mutual': '16 mutual friends',
      'time': '3d',
      'profilePic': 'assets/images/girl_wolfcut.jpg',
    },
    {
      'name': 'Joseph Duroga',
      'mutual': '11 mutual friends',
      'time': '5d',
      'profilePic': 'assets/images/yuusuke.jpg',
    },
  ];

  final List<Map<String, String>> _suggestions = [
    {
      'name': 'Jensen Huang',
      'mutual': '32 mutual friends',
      'profilePic': 'assets/images/kurosaki.jpg',
    },
    {
      'name': 'Sam Altman',
      'mutual': '18 mutual friends',
      'profilePic': 'assets/images/yuusuke.jpg',
    },
    {
      'name': 'Post Malone',
      'mutual': '25 mutual friends',
      'profilePic': 'assets/images/rintatou.jpg',
    },
    {
      'name': 'Ken Ken Espiritu',
      'mutual': '13 mutual friends',
      'profilePic': 'assets/images/cat_bad_eyesight.jpg',
    },
    {
      'name': 'Reggie Raz',
      'mutual': '10 mutual friends',
      'profilePic': 'assets/images/freaky_cat.jpg',
    },
  ];

  final Set<String> _sentRequests = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView(
        padding: EdgeInsets.all(ScreenUtil().setSp(15)),
        children: [
          Row(
            children: [
              _buildChip('Suggestions'),
              SizedBox(width: ScreenUtil().setWidth(8)),
              _buildChip('Your Friends'),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(14)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomText(
                    text: 'Friend Requests',
                    fontSize: ScreenUtil().setSp(18),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(8)),
                  CustomText(
                    text: '${_friendRequests.length}',
                    fontSize: ScreenUtil().setSp(18),
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              CustomText(
                text: 'See all',
                fontSize: ScreenUtil().setSp(13),
                color: fbPrimary,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(8)),
          if (_friendRequests.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(16),
              ),
              child: Center(
                child: CustomText(
                  text: 'No pending friend requests.',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.grey,
                ),
              ),
            )
          else
            ..._friendRequests.asMap().entries.map(
              (entry) => _buildFriendRequestTile(entry.key, entry.value),
            ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
            child: const Divider(),
          ),
          CustomText(
            text: 'People You May Know',
            fontSize: ScreenUtil().setSp(18),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: ScreenUtil().setHeight(8)),
          ..._suggestions.asMap().entries.map(
            (entry) => _buildSuggestionTile(entry.key, entry.value),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(14),
        vertical: ScreenUtil().setHeight(7),
      ),
      decoration: BoxDecoration(
        color: fbTextColorWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: CustomText(
        text: label,
        fontSize: ScreenUtil().setSp(13),
        color: fbDarkPrimary,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildFriendRequestTile(int index, Map<String, String> request) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 34,
            backgroundImage: AssetImage(request['profilePic']!),
          ),
          SizedBox(width: ScreenUtil().setWidth(12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomText(
                        text: request['name']!,
                        fontSize: ScreenUtil().setSp(16),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomText(
                      text: request['time']!,
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(2)),
                CustomText(
                  text: request['mutual']!,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey,
                ),
                SizedBox(height: ScreenUtil().setHeight(8)),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          final name = request['name']!;
                          setState(() {
                            _friendRequests.removeAt(index);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('You and $name are now friends!'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: fbPrimary,
                          foregroundColor: fbTextColorWhite,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: CustomText(
                          text: 'Confirm',
                          fontSize: ScreenUtil().setSp(13),
                          color: fbTextColorWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(8)),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _friendRequests.removeAt(index);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: CustomText(
                          text: 'Delete',
                          fontSize: ScreenUtil().setSp(13),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionTile(int index, Map<String, String> person) {
    final name = person['name']!;
    final isSent = _sentRequests.contains(name);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 34,
            backgroundImage: AssetImage(person['profilePic']!),
          ),
          SizedBox(width: ScreenUtil().setWidth(12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(16),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: ScreenUtil().setHeight(2)),
                CustomText(
                  text: person['mutual']!,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey,
                ),
                SizedBox(height: ScreenUtil().setHeight(8)),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isSent) {
                              _sentRequests.remove(name);
                            } else {
                              _sentRequests.add(name);
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSent
                              ? fbLightPrimary
                              : fbPrimary,
                          foregroundColor: fbTextColorWhite,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: CustomText(
                          text: isSent ? 'Request Sent' : 'Add Friend',
                          fontSize: ScreenUtil().setSp(13),
                          color: isSent ? fbDarkPrimary : fbTextColorWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(8)),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _suggestions.removeAt(index);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: CustomText(
                          text: 'Remove',
                          fontSize: ScreenUtil().setSp(13),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
