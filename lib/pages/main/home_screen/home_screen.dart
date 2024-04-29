import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/data/video_entity.dart';
import 'package:youtube_clone/pages/main/home_screen/widgets/video_card_widget.dart';
import 'package:youtube_clone/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.onTap});

  final void Function() onTap;
  final allVideos = VideoEntity.videos;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(onTap: onTap),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) => VideoCardWidget(video: allVideos[index % 5],),
            )
          ],
        ),
      ),
    );
  }
}
