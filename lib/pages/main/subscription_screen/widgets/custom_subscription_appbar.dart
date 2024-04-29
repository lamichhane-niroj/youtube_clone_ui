import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/asset_const.dart';
import 'package:youtube_clone/constants/textstyle_const.dart';
import 'package:youtube_clone/widgets/category_card_widget.dart';

class CustomSubscriptionAppbar extends StatelessWidget {
  CustomSubscriptionAppbar({super.key});

  final List<String> userSubscription = [
    "Flutter Guru",
    "AI Revolution",
    "Flutter",
    "Learn Blenders",
    "Music & relief",
    "TechBar",
    "Filmi Dil",
    "Algorithms & Data",
    "Graphics Design Courses",
    "Quantum Mechanics Depth"
  ];

  final List<String> category = [
    "All",
    "Today",
    "Videos",
    "Shorts",
    "Live",
    "Posts",
    "Continue Watching",
    "Unwatched"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(AssetConst.youtubeLogo, height: 50),
              Text("YouTube", style: TextStyleConst.youtube),
              const Spacer(),
              const Row(
                children: [
                  Icon(Icons.cast_outlined, size: 25),
                  SizedBox(width: 20),
                  Icon(Icons.notifications_outlined, size: 25),
                  SizedBox(width: 20),
                  Icon(Icons.search, size: 25),
                  SizedBox(width: 5),
                ],
              )
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < userSubscription.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 70,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(i % 2 == 0
                                  ? AssetConst.profile1
                                  : AssetConst.profile2),
                            ),
                            Text(
                              userSubscription[i],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    )
                ],
              )),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var item in category) CategoryCardWidget(title: item)
                ],
              )),
        ],
      ),
    );
  }
}
