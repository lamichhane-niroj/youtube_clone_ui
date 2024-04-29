import 'package:flutter/material.dart';
import 'package:youtube_clone/data/video_entity.dart';
import 'package:youtube_clone/pages/main/home_screen/widgets/video_card_widget.dart';
import 'package:youtube_clone/pages/main/subscription_screen/widgets/custom_subscription_appbar.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({super.key});

  final allVideos = VideoEntity.videos;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomSubscriptionAppbar(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) => VideoCardWidget(
                video: allVideos[index % 5],
              ),
            )
          ],
        ),
      ),
    );
  }
}
