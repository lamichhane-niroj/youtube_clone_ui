import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/asset_const.dart';
import 'package:youtube_clone/constants/textstyle_const.dart';
import 'package:youtube_clone/widgets/category_card_widget.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required this.onTap});

  final void Function() onTap;

  final List<String> userTrendingGenre = [
    "All",
    "Gaming",
    "Flutter",
    "Blenders",
    "Music",
    "Mixes",
    "AI",
    "Algorithms",
    "Graphics Design",
    "Quantum Mechanics"
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
              Image.asset(
                AssetConst.youtubeLogo,
                height: 50,
              ),
              Text(
                "YouTube",
                style: TextStyleConst.youtube,
              ),
              const Spacer(),
              const Row(
                children: [
                  Icon(
                    Icons.cast_outlined,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              )
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2)),
                      child: const Icon(
                        Icons.explore_outlined,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                  for(var item in userTrendingGenre)
                    CategoryCardWidget(title: item,)
                ],
              )),
        ],
      ),
    );
  }
}
